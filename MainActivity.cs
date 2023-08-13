using Android.Content;
using Android.Locations;
using Android.Widget;
using Microsoft.CognitiveServices.Speech;
using System.Net;
using System.Text;
using Newtonsoft.Json;
using Android.Media;
using System.Diagnostics;
using Android.Speech.Tts;
using Android.Runtime;
using System.Collections.Concurrent;
using static Android.Media.MediaParser;
using static Android.Renderscripts.Sampler;
using static System.Net.Mime.MediaTypeNames;
using Microsoft.CognitiveServices.Speech.Translation;
using Android.Graphics;
using Android.Icu.Text;
using Android.Views;
using Android.Content.PM;
using Android;
using System.Threading;
using Android.Graphics.Drawables;
using Android.Text.Style;
using Android.Text;
using System.Runtime.Serialization.Formatters;
using Android.Content.Res;
using Microsoft.Identity.Client;
using Microsoft.CognitiveServices.Speech.Audio;
using System.IO;
using Android.Media.Projection;
using AndroidX.Core.App;
using Android.Renderscripts;

namespace MicroTranslator
{
    [Activity(Label = "@string/app_name", MainLauncher = true)]
    public class MainActivity : Android.App.Activity, TextToSpeech.IOnInitListener
    {
        class MyElementInfo
        {       
            public string[] texts { get; set; }
            public int time { get; set; }

            public string status { get; set; }

        }
        class ListElementInfo
        {
            public List<MyElementInfo> elementInfos { get; set; }
            public int Index { get; set; }
            public string lastSentence { get; set; }
            public int lastTime{ get; set; }
            public int lastSupplyTime { get; set; }


            public ListElementInfo()
            {
                lastSentence = "";
                elementInfos = new List<MyElementInfo>();
            }

        }
        private bool isListening = false, SpeakThreadEnable = false, autoReconnect = false;
        private TextToSpeech textToSpeech;
        private bool isTtsInitialized = false, TtsOpen = true;

        private const int MicrophonePermissionRequestCode = 100;

        private static ConcurrentQueue<string> myQueue = new ConcurrentQueue<string>();
        List<ListElementInfo> TransTexts = new List<ListElementInfo>();

        private long LastGetTime=0;
        private bool IsSpeakOver = true;
        private string[] languages = { "英文", "中文", "日文" };
        private string[] tolanguages = { "中文", "英文", "日文" };

        private string[] fromlanguages = { "en-US", "zh-CN", "ja-JP" };
        private string[] transtolanguages = { "zh-Hans", "en", "ja" };
        private string TalkString = "";

        TextView textView1, textView2, textView3, textView4, textView5, textView6, textView7, textView8;
        RadioButton RadioButton1, RadioButton2;
        SeekBar RecogSpeed, seekBar1, pauseTime, Amply;
        Spinner Spinner1, Spinner2;
        Button recognizeButton;

        string ServerArea = "eastus";

        uint ApiKeyIndex = 0;
        string[] ApiKey = { "yourapikey1", "yourapikey2" };
        string EndPoint = "wss://eastus.stt.speech.microsoft.com/speech/universal/v2";
        
        string TransApiKey = "youapikey for trans";
        string TransEndpoint = "https://api.cognitive.microsofttranslator.com/";

        string OpenAIKey = "you open ai key";

        CheckBox CheckBox1, CheckBox2, CheckBox3;

        byte Amply_number = 2;
        bool IsPlayBack = false;
        PullAudioInputStreamCallback callback = null;

        private static readonly int REQUEST_MEDIA_PROJECTION = 1;
        static MediaProjection mediaProjection = null;
        public class MediaProjectionSingleton
        {
            private static MediaProjectionSingleton _instance;
            public MediaProjection MediaProjection { get; private set; }

            private MediaProjectionSingleton() { }

            public static MediaProjectionSingleton Instance => _instance ?? (_instance = new MediaProjectionSingleton());

            public void SetMediaProjection(MediaProjection mediaProjection)
            {
                MediaProjection = mediaProjection;
            }
        }
        [Service(Name = "com.ForegroundService.GetMedia", ForegroundServiceType = ForegroundService.TypeMediaProjection)]
        public class GetMedia : Service
        {
            private const int NOTIFICATION_ID = 1;
            private const string CHANNEL_ID = "GetMedia";

            public override Android.OS.IBinder OnBind(Intent intent) => null;

            public override StartCommandResult OnStartCommand(Intent intent, StartCommandFlags flags, int startId)
            {
                Intent notificationIntent = new Intent(this, typeof(GetMedia));
                PendingIntent pendingIntent = PendingIntent.GetActivity(this, 0, notificationIntent, PendingIntentFlags.Mutable);
                Bitmap largeIconBitmap = BitmapFactory.DecodeResource(Resources, Resource.Drawable.ic_call_answer_video);

                // 创建通知并启动前台服务
                Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID)
                    .SetLargeIcon(largeIconBitmap)
                    .SetSmallIcon(Android.Resource.Drawable.IcDialogAlert)
                    .SetContentTitle("My notification")
                    .SetContentText("Hello World!")
                    .SetTicker("This is the ticker text!") // 设置滚动文本
                    .SetContentIntent(pendingIntent)
                    .SetPriority(NotificationCompat.PriorityHigh)
                    .Build();

                if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.O)
                {
                    NotificationChannel serviceChannel = new NotificationChannel(CHANNEL_ID, "Foreground Service Channel",
                        NotificationImportance.Default);
                    NotificationManager manager = (NotificationManager)GetSystemService(NotificationService);
                    manager.CreateNotificationChannel(serviceChannel);
                }
                // 启动前台服务
                StartForeground(NOTIFICATION_ID, notification);


                return StartCommandResult.Sticky;
            }

            private void CreateNotificationChannel()
            {
                if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.O)
                {
                    var name = "Media Capture";
                    var description = "Service for capturing media projection";
                    var importance = NotificationImportance.High;
                    var channel = new NotificationChannel(CHANNEL_ID, name, importance);
                    channel.Description = description;

                    var notificationManager = (NotificationManager)GetSystemService(NotificationService);
                    notificationManager.CreateNotificationChannel(channel);
                }
            }

            public override void OnDestroy()
            {
                // 停止屏幕捕获
                // TODO: 清理资源

                base.OnDestroy();
            }
        }
        private void StartScreenCapture()
        {
            MediaProjectionManager projectionManager = (MediaProjectionManager)GetSystemService(Context.MediaProjectionService);
            Intent intent = projectionManager.CreateScreenCaptureIntent();
            StartActivityForResult(intent, REQUEST_MEDIA_PROJECTION);
        }
        protected override void OnActivityResult(int requestCode, Result resultCode, Intent data)
        {
            if (requestCode == REQUEST_MEDIA_PROJECTION && resultCode == Result.Ok)
            {
                try
                {
                    MediaProjectionManager projectionManager = (MediaProjectionManager)GetSystemService(Context.MediaProjectionService);
                    mediaProjection = projectionManager.GetMediaProjection((int)Result.Ok, data);

                }
                catch (Exception ex)
                {
                    // 处理异常
                    Android.Util.Log.Error("MyApp", ex.Message);
                    RunOnUiThread(() =>
                    {
                        textView3.Text = "错误: 授权获取本机音频录制权失败->" + ex.Message;
                    });
                    return;
                }
                Toast.MakeText(this, "授权获取本机音频录制权成功！", ToastLength.Short).Show();

                CheckAndRequestMicrophonePermission();
                if (isListening)
                {
                    isListening = false;
                    recognizeButton.Text = "开始";

                }
                if (!isListening)
                {
                    autoReconnect = true;
                    ContinuousRecognitionAsync();
                }
            }
        }
        public class AmplifiedAudioStreamCallback : PullAudioInputStreamCallback
        {
            private AudioRecord audioRecord;
            private byte AmplyNumber = 2;
            private AudioTrack _audioTrack = null;
            public AmplifiedAudioStreamCallback(byte AmplyValue,bool IsPlayBack)
            {
                AmplyNumber = AmplyValue;
                int bufferSize = AudioRecord.GetMinBufferSize(16000, ChannelIn.Mono, Android.Media.Encoding.Pcm16bit);
                audioRecord = new AudioRecord(AudioSource.Mic, 16000, ChannelIn.Mono, Android.Media.Encoding.Pcm16bit, bufferSize);
                audioRecord.StartRecording();

                if (IsPlayBack)
                {
                    _audioTrack = new AudioTrack(
                                       Android.Media.Stream.Music,
                                       16000,
                                       ChannelOut.Mono,
                                       Android.Media.Encoding.Pcm16bit,
                                       bufferSize,
                                       AudioTrackMode.Stream);
                    _audioTrack.Play();
                }
            }

            public override int Read(byte[] buffer, uint size)
            {
                int bytesRead = audioRecord.Read(buffer, 0, (int)size);
                int validReadSize = bytesRead - (bytesRead % 2);
                // 放大声音
                for (int i = 0; i < validReadSize; i += 2)
                {
                    short sample = (short)((buffer[i + 1] << 8) | buffer[i]);
                    sample = (short)(sample * AmplyNumber); // 放大倍数，可以根据需要调整

                    //float alpha = 0.5f; // 这个值决定了滤波器的特性，你可能需要调整它
                    //sample = (short)(alpha * sample + (1 - alpha) * lastSample);
                    //lastSample = sample;

                    buffer[i] = (byte)(sample & 0xFF);
                    buffer[i + 1] = (byte)((sample >> 8) & 0xFF);
                }

                //int zeroCrossings = 0;
                //short lastSample = buffer[0];
                //short lastFilteredSample = 0;
                //float alpha = 0f; // 截止频率控制，你可能需要调整
                //for (int i = 2; i < validReadSize; i += 2)
                //{
                //    short sample = (short)((buffer[i + 1] << 8) | buffer[i]);
                //    if ((lastSample > 0 && sample < 0) || (lastSample < 0 && sample > 0))
                //    {
                //        zeroCrossings++;
                //    }

                //    lastSample = sample;
                //}
                //float frequency = (float)zeroCrossings / (validReadSize / 2) * 16000 / 2;
                //Debug.Print("频率：" + frequency.ToString());

                //for (int i = 2; i < validReadSize; i += 2)
                //{
                //    short sample = (short)((buffer[i + 1] << 8) | buffer[i]);
                //    short filteredSample = sample;
                //    if (frequency > 1300 && frequency <= 2200)
                //    {
                //        filteredSample =0;
                //    }
                //    lastFilteredSample = filteredSample;

                //    buffer[i - 2] = (byte)(filteredSample & 0xFF);
                //    buffer[i - 1] = (byte)((filteredSample >> 8) & 0xFF);

                //    lastSample = sample;
                //}
                if (_audioTrack != null)
                    _audioTrack.Write(buffer, 0, (int)size);
                return bytesRead;
            }

            public override void Close()
            {
                audioRecord.Stop();
                audioRecord.Release();
                if (_audioTrack != null)
                {
                    _audioTrack.Stop();
                    _audioTrack.Release();
                }
            }

            public void SetAmplyNumber(byte value)
            {
                AmplyNumber = value;
            }
        }
        public class AudioCaptureStreamCallback : PullAudioInputStreamCallback
        {
            private AudioRecord audioRecord;
            public AudioCaptureStreamCallback(MediaProjection mediaProjection)
            {
                try
                {
                    AudioPlaybackCaptureConfiguration config = null;
                    config = new AudioPlaybackCaptureConfiguration.Builder(mediaProjection)
                        .AddMatchingUsage(AudioUsageKind.Media)
                        .AddMatchingUsage(AudioUsageKind.Game)
                    //     .AddMatchingUsage(AudioUsageKind.VoiceCommunication)
                        .Build();
                    int bufferSize = AudioRecord.GetMinBufferSize(16000, ChannelIn.Mono, Android.Media.Encoding.Pcm16bit);

                    audioRecord = new AudioRecord.Builder()
                     .SetAudioPlaybackCaptureConfig(config)
                     //.SetAudioSource(AudioSource.Mic)
                    .SetBufferSizeInBytes(bufferSize)
                    .SetAudioFormat(new AudioFormat.Builder()
                        .SetEncoding(Android.Media.Encoding.Pcm16bit)
                        .SetSampleRate(16000)
                        .SetChannelMask((ChannelOut)ChannelIn.Mono)
                        .Build())
                    .Build();
                    audioRecord.StartRecording();
                }
                catch (Exception ex)
                {
                    // 处理异常
                    Android.Util.Log.Error("MyApp", ex.Message);
                    Context context = Android.App.Application.Context;
                    Toast.MakeText(context, ex.Message, ToastLength.Short).Show();
                }
            }
            public override int Read(byte[] buffer, uint size)
            {
                return audioRecord.Read(buffer, 0, (int)size);
            }
            public override void Close()
            {
                audioRecord.Stop();
                audioRecord.Release();
            }
        }
        private void InitViewResource()
        {
            
            recognizeButton = FindViewById<Button>(Resource.Id.button1);

            Spinner1 = FindViewById<Spinner>(Resource.Id.spinner1);
            Spinner2 = FindViewById<Spinner>(Resource.Id.spinner2);

            textView1 = FindViewById<TextView>(Resource.Id.textView1);
            textView2 = FindViewById<TextView>(Resource.Id.textView2);
            textView3 = FindViewById<TextView>(Resource.Id.textView3);
            textView4 = FindViewById<TextView>(Resource.Id.textView4);

            textView5 = FindViewById<TextView>(Resource.Id.textView5);
            textView6 = FindViewById<TextView>(Resource.Id.textView6);
            textView7 = FindViewById<TextView>(Resource.Id.textView7);
            textView8 = FindViewById<TextView>(Resource.Id.textView8);

            RadioButton1 = FindViewById<RadioButton>(Resource.Id.radioButton1);
            RadioButton2 = FindViewById<RadioButton>(Resource.Id.radioButton2);

            seekBar1 = FindViewById<SeekBar>(Resource.Id.seekBar1);
            RecogSpeed = FindViewById<SeekBar>(Resource.Id.seekBar2);
            pauseTime = FindViewById<SeekBar>(Resource.Id.seekBar3);
            Amply = FindViewById<SeekBar>(Resource.Id.seekBar4);

            CheckBox1 = FindViewById<CheckBox>(Resource.Id.checkBox1);
            CheckBox1.CheckedChange += CheckBox_CheckedChange1;
            CheckBox2 = FindViewById<CheckBox>(Resource.Id.checkBox2);
            CheckBox2.CheckedChange += CheckBox_CheckedChange2;
            CheckBox3 = FindViewById<CheckBox>(Resource.Id.checkBox3);
            CheckBox3.CheckedChange += CheckBox_CheckedChange3;

            InitSeekBar();
        }
        private void CheckBox_CheckedChange1(object sender, CompoundButton.CheckedChangeEventArgs e)
        {
            if (e.IsChecked)
            {
                TtsOpen = true;
                Toast.MakeText(this, "开启语音", ToastLength.Short).Show();
            }
            else
            {
                TtsOpen = false;
                Toast.MakeText(this, "关闭语音", ToastLength.Short).Show();
            }
        }
        private void CheckBox_CheckedChange2(object sender, CompoundButton.CheckedChangeEventArgs e)
        {
            CheckBox3.Enabled = !e.IsChecked;
            if (e.IsChecked)
            {
                StartScreenCapture();
            }
            else
            {
                if (mediaProjection != null)
                {
                    mediaProjection.Stop();
                    mediaProjection = null;
                }
                if (isListening)
                {
                    isListening = false;
                    recognizeButton.Text = "开始";
                }
                if (!isListening)
                {
                    autoReconnect = true;
                    ContinuousRecognitionAsync();
                }
                Toast.MakeText(this, "从麦克风获取音源", ToastLength.Short).Show();
            }
        }
        private void CheckBox_CheckedChange3(object sender, CompoundButton.CheckedChangeEventArgs e)
        {
            IsPlayBack = e.IsChecked;
            if (mediaProjection != null)
            {
                mediaProjection.Stop();
                mediaProjection = null;
            }
            if (isListening)
            {
                isListening = false;

                recognizeButton.Text = "开始";
            }
            if (!isListening)
            {
                autoReconnect = true;
                ContinuousRecognitionAsync();
            }
        }
        private void InitSeekBar()
        {
            //PopupWindow popupWindow = new PopupWindow(this);
            //TextView popupText = new TextView(this);
            //popupWindow.ContentView = popupText;
            //popupWindow.SetBackgroundDrawable(new ColorDrawable(Android.Graphics.Color.Transparent));
            //popupWindow.Height = 30;

            pauseTime.ProgressChanged += (object sender, SeekBar.ProgressChangedEventArgs e) =>
            {
                if (e.FromUser)
                {
                    int value = 100 + (e.Progress * 10);
                    textView5.Text = $"停顿间隔({value.ToString()}):";

                    //Toast.MakeText(this, value.ToString(), ToastLength.Short).Show();
                    //popupWindow.Dismiss();
                    //popupText.Text = value.ToString();

                    //int[] location = new int[2];
                    //pauseTime.GetLocationOnScreen(location);
                    //int x = pauseTime.Thumb.Bounds.Left + (pauseTime.Thumb.Bounds.Width() / 2);
                    //popupWindow.ShowAtLocation(pauseTime, GravityFlags.NoGravity, location[0] + x, location[1] - popupWindow.Height);
                }
            };
            RecogSpeed.ProgressChanged += (object sender, SeekBar.ProgressChangedEventArgs e) =>
            {
                if (e.FromUser)
                {
                    int value = 1000 + (e.Progress * 500);
                    textView6.Text = $"识别速度({value.ToString()}):";
                }
            };
            seekBar1.ProgressChanged += (object sender, SeekBar.ProgressChangedEventArgs e) =>
            {
                if (e.FromUser)
                {
                    float value = (float)e.Progress / 10;
                    textView7.Text = $"朗读速度({value.ToString()}):";
                }
            };

            Amply.ProgressChanged += (object sender, SeekBar.ProgressChangedEventArgs e) =>
            {
                if (e.FromUser)
                {
                    Amply_number = (byte)e.Progress;
                    textView8.Text = $"声音放大({Amply_number.ToString()}):";
                    if (callback != null && CheckBox2.Checked == false)
                        ((AmplifiedAudioStreamCallback)callback).SetAmplyNumber(Amply_number);
                }
            };
        }
        protected override void OnCreate(Bundle? savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.activity_main);
            
            InitViewResource();
            Intent serviceIntent = new Intent(this, typeof(GetMedia));
            StartForegroundService(serviceIntent);
            recognizeButton.Click += RecognizeButton_Click;

            ArrayAdapter adapter = new ArrayAdapter(this, Android.Resource.Layout.SimpleSpinnerItem, languages);
            ArrayAdapter adapter2 = new ArrayAdapter(this, Android.Resource.Layout.SimpleSpinnerItem, tolanguages);

            adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            adapter2.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);

            Spinner1.Adapter = adapter;
            Spinner2.Adapter = adapter2;

            Spinner1.ItemSelected += Spinner1_ItemSelected;
            Spinner2.ItemSelected += Spinner2_ItemSelected;

            textToSpeech = new TextToSpeech(this, this);
            textToSpeech.SetOnUtteranceProgressListener(new MyUtteranceProgressListener(this));
            //Task.Run(() => MonitorQueue());

            recognizeButton.PerformClick();
        }
        private void CheckAndRequestMicrophonePermission()
        {
            // Check if the microphone permission is granted
            if (CheckSelfPermission(Manifest.Permission.RecordAudio) == Permission.Granted)
            {
                // Microphone permission is already granted, you can proceed with using the microphone
            }
            else
            {
                // Request the microphone permission
                RequestPermissions(new string[] { Manifest.Permission.RecordAudio }, MicrophonePermissionRequestCode);
            }
        }

        // Callback for the permission request result
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Permission[] grantResults)
        {
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            if (requestCode == MicrophonePermissionRequestCode)
            {
                if (grantResults.Length > 0 && grantResults[0] == Permission.Granted)
                {
                    // Microphone permission is granted, you can proceed with using the microphone
                }
                else
                {
                    // Microphone permission is denied, handle this case (e.g., show an error message)
                }
            }
        }



        private void Spinner1_ItemSelected(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            string selectedOption2 = tolanguages[Spinner2.SelectedItemPosition];

            string selectedOption = languages[e.Position];
            if (selectedOption2 == selectedOption)
            {
                for (int i = 0; i < tolanguages.Length; ++i)
                {
                    if (tolanguages[i] != selectedOption)
                    {
                        Spinner2.SetSelection(i);
                        break;
                    }
                }
            }
        }
        private void Spinner2_ItemSelected(object sender, AdapterView.ItemSelectedEventArgs e)
        {
            string selectedOption1 = languages[Spinner1.SelectedItemPosition];

            string selectedOption = tolanguages[e.Position];
            if (selectedOption1 == selectedOption)
            {
                for (int i = 0; i < languages.Length; ++i)
                {
                    if (languages[i] != selectedOption)
                    {
                        Spinner1.SetSelection(i);
                        break;
                    }
                }    
            }
        }
        private class MyUtteranceProgressListener : UtteranceProgressListener
        {
            private MainActivity activity;

            public MyUtteranceProgressListener(MainActivity activity)
            {
                this.activity = activity;
            }

            public override void OnStart(string utteranceId)
            {
                // 合成开始时调用，可以在这里处理相关逻辑
                activity.IsSpeakOver = false;
            }

            public override void OnDone(string utteranceId)
            {
                activity.IsSpeakOver = true;
            }

            public override void OnError(string utteranceId)
            {
                // 合成错误时调用，可以在这里处理相关逻辑
                activity.IsSpeakOver = true;
            }
        }
        public void OnInit([GeneratedEnum] OperationResult status)
        {
            if (status == OperationResult.Success)
            {
                isTtsInitialized = true;
                // 初始化成功
                // 可以在此设置语音属性，如音色和速度
                // textToSpeech.SetPitch(1.3f); // 设置音色
                //      textToSpeech.SetSpeechRate(2.5f); // 设置速
                // 示例：调用 speak 方法读出文本

            }
            else
            {
                // 初始化失败，可以在此处理错误
            }
        }
        protected override void OnDestroy()
        {
            // 在 Activity 销毁时释放 TextToSpeech 对象
            if (textToSpeech != null)
            {
                textToSpeech.Stop();
                textToSpeech.Shutdown();
            }
            if (mediaProjection != null)
            {
                mediaProjection.Stop();
                mediaProjection = null;
            }
            isListening = false;
            if (callback != null)
            {
                callback.Close();
                callback = null;
            }
            base.OnDestroy();
        }
        private void Speak(string text)
        {
            if (isTtsInitialized && TtsOpen)
            {
                //float speed = 2.5f;
                //// 可以设置语速和音量
                //if (text.Length < 16)
                //{
                //    speed = 2.2f; // 设置语速
                //}
                //else if (text.Length < 40)
                //{
                //    speed = 2.6f;  // 设置语速
                //}
                //else if (text.Length < 80)
                //{
                //    speed = 2.8f; // 设置语速
                //}
                //if (speed > 3f)
                //    speed = 3f;
                float progressValue = (float)seekBar1.Progress / 10;
                textToSpeech.SetSpeechRate(progressValue); // 设置速度
                OperationResult Res= textToSpeech.Speak(text, QueueMode.Flush, null, TextToSpeech.Engine.KeyParamUtteranceId);
                string ResStr = Res.ToString();

                RunOnUiThread(() =>
                {
                    textView2.Text += "-Res:" + ResStr;
                });

            }
        }

        private async void RecognizeButton_Click(object sender, System.EventArgs e)
        {
            CheckAndRequestMicrophonePermission();
            if (!isListening)
            {
                autoReconnect = true;
                ContinuousRecognitionAsync();
            }
            else
            {
                autoReconnect = false;
                isListening = false;
                recognizeButton.Text = "开始";
            }
        }
        async Task<string> AddPunctuationUsingGPT3(string inputText)
        {
            string endpoint = "https://api.openai.com/v1/completions";

            using (HttpClient client = new HttpClient())
            {
                inputText = "hello everyone you are a pig that is a";
                client.DefaultRequestHeaders.Add("Authorization", $"Bearer sk-" + OpenAIKey);
                string model = "davinci"; // Specify the model here
                // Build the API request
                string prompt = $"Add punctuation to the following text:{inputText}";
                string requestBody = "{\"prompt\":\"" + prompt + "\",\"temperature\":0.7,\"max_tokens\":150,\"model\":\"" + model + "\"}";

                // Create the HttpRequestMessage with the JSON payload
                var request = new HttpRequestMessage(HttpMethod.Post, endpoint)
                {
                    Content = new StringContent(requestBody, System.Text.Encoding.UTF8, "application/json")
                };
                var jsonRequestBody = Newtonsoft.Json.JsonConvert.SerializeObject(requestBody);

                // Make the API request

                // Make the API request
                HttpResponseMessage response = await client.SendAsync(request);

                // Handle the API response
                string responseContent = await response.Content.ReadAsStringAsync();
                dynamic responseData = Newtonsoft.Json.JsonConvert.DeserializeObject(responseContent);
                string punctuationAddedText = responseData.choices[0].text;

                return punctuationAddedText;
            }
        }

        private async Task ContinuousRecognitionAsync()
        {
            Thread thread = new Thread(MonitorQueue);
            thread.Start();


            //  var config = SpeechTranslationConfig.FromSubscription(Apikey, ServerArea);
            var endpointUrl = new Uri(EndPoint);


            //string clientId = "";
            //string[] scopes = new string[] { "https://cognitiveservices.azure.com/.default" };
            //string tenantId = "";

            //var app = PublicClientApplicationBuilder.Create(clientId)
            //        .WithAuthority(AzureCloudInstance.AzurePublic, tenantId)
            //        .Build();

            //var result = await app.AcquireTokenInteractive(scopes).ExecuteAsync();

            //string aadToken = result.AccessToken; // 此处的 token 是你的 Azure AD access token

            //string resourceId = "";
            //var authorizationToken = $"aad#{resourceId}#{aadToken}";
            //var config = SpeechTranslationConfig.FromAuthorizationToken(authorizationToken, ServerArea);



            // var config = SpeechTranslationConfig.FromEndpoint(endpointUrl, ApiKey);
            var config = SpeechTranslationConfig.FromSubscription(ApiKey[ApiKeyIndex], ServerArea);


            int selectedIndex1 = Spinner1.SelectedItemPosition;
            int selectedIndex2 = Spinner2.SelectedItemPosition;
            string language = fromlanguages[selectedIndex1];
            string languageTo = transtolanguages[selectedIndex2];
            int Speech_SegmentationSilenceTimeoutMs = pauseTime.Progress * 10 + 100;

            config.OutputFormat = Microsoft.CognitiveServices.Speech.OutputFormat.Detailed;
            config.SetProperty(PropertyId.Speech_SegmentationSilenceTimeoutMs, Speech_SegmentationSilenceTimeoutMs.ToString());
            config.SetProperty(PropertyId.SpeechServiceConnection_LanguageIdMode, "Continuous");
            config.AddTargetLanguage(languageTo);
            config.SpeechRecognitionLanguage = language;
            var autoDetectSourceLanguageConfig = AutoDetectSourceLanguageConfig.FromLanguages(new string[] { language });


            while (callback != null)
            {
                recognizeButton.Text = "正在等待上个会话结束";
                await Task.Delay(500);
            }
            if (mediaProjection == null)
                callback = new AmplifiedAudioStreamCallback(Amply_number, IsPlayBack);
            else
                callback = new AudioCaptureStreamCallback(mediaProjection);
            var audioInputStream = AudioInputStream.CreatePullStream(callback);
            var audioConfig = AudioConfig.FromStreamInput(audioInputStream);

            using (var recognizer = new TranslationRecognizer(config, autoDetectSourceLanguageConfig, audioConfig))
            {
                recognizer.Recognized += Recognizer_Recognized;
                recognizer.Canceled += Recognizer_Canceled;
                recognizer.Recognizing += Recognizer_Recognizing;
                // 开始连续的语音识别
                await recognizer.StartContinuousRecognitionAsync();
                RunOnUiThread(() =>
                {
                    recognizeButton.Text = "正在倾听";
                  //  Speak(recognizeButton.Text);
                });
                isListening = true;
                while (isListening)
                {
                    await Task.Delay(100); // 等待一段时间，这里设为100毫秒，可以根据需要调整
                                           // 可以在这里添加其他需要执行的逻辑，或者直接等待用户操作
                }
                // 停止连续的语音识别
                await recognizer.StopContinuousRecognitionAsync();
                SpeakThreadEnable = false;
                thread.Join();
                callback.Close();
                callback = null;
            }
        }

        private async Task ContinuousRecognitionAsyncTrans()
        {
            Thread thread = new Thread(MonitorQueue);
            thread.Start();

            var config = SpeechConfig.FromSubscription(ApiKey[ApiKeyIndex], ServerArea);

            int selectedIndex1 = Spinner1.SelectedItemPosition;
            string language = fromlanguages[selectedIndex1];
            int Speech_SegmentationSilenceTimeoutMs = pauseTime.Progress * 10 + 100;

            config.OutputFormat = Microsoft.CognitiveServices.Speech.OutputFormat.Detailed;
            config.SetProperty(PropertyId.Speech_SegmentationSilenceTimeoutMs, Speech_SegmentationSilenceTimeoutMs.ToString());
            config.SetProperty(PropertyId.SpeechServiceConnection_LanguageIdMode, "Continuous");

            config.SpeechRecognitionLanguage = language;
            var autoDetectSourceLanguageConfig = AutoDetectSourceLanguageConfig.FromLanguages(new string[] { language });

            using (var recognizer = new SpeechRecognizer(config, autoDetectSourceLanguageConfig))
            {
                recognizer.Recognized += Recognizer_Recognized;
                recognizer.Canceled += Recognizer_Canceled;
                recognizer.Recognizing += Recognizer_Recognizing;

                // 开始连续的语音识别
                await recognizer.StartContinuousRecognitionAsync();
                RunOnUiThread(() =>
                {
                    recognizeButton.Text = "正在倾听";
                });
                isListening = true;
                while (isListening)
                {
                    await Task.Delay(100); // 等待一段时间，这里设为100毫秒，可以根据需要调整
                                           // 可以在这里添加其他需要执行的逻辑，或者直接等待用户操作
                }
                // 停止连续的语音识别
                await recognizer.StopContinuousRecognitionAsync();
                SpeakThreadEnable = false;
                thread.Join();
            }
        }

        private async void Recognizer_Recognizing(object sender, TranslationRecognitionEventArgs e)
        {
            int nt = (int)e.Result.Duration.Ticks / 10000;
            if (nt < 1000)
                return;

            string recognizedText = e.Result.Text;

            if (e.Result.Translations.Count == 0)
                return;
            KeyValuePair<string, string> element = e.Result.Translations.ElementAt(0);
            string translatedText = element.Value;

            if (translatedText.Length == 0)
                return;
            long dt = e.Result.Duration.Ticks / 10000 - LastGetTime;

            Debug.Print(recognizedText + $",{dt},{e.Result.Duration.Ticks / 10000}\n" + translatedText);
            LastGetTime = e.Result.Duration.Ticks / 10000;


            var spannable = new SpannableStringBuilder(recognizedText + "\n" + translatedText);
            spannable.SetSpan(new ForegroundColorSpan(Color.Orange), 0, spannable.Length(), SpanTypes.ExclusiveExclusive);
            spannable.Append("\n" + TalkString);
            RunOnUiThread(() =>
            {
                textView1.Text = recognizedText + "\n" + translatedText + "\n" + textView1.Text;

                textView3.TextFormatted = spannable;
                //textView3.Text = translatedText + "\n" + TalkString;
            });

            ListElementInfo LEP;
            string TransText = translatedText;
            char[] chinesePunctuations = { '，', '。', '！', '？', '、', ' ' };
            string[] sentences = TransText.Split(chinesePunctuations, StringSplitOptions.RemoveEmptyEntries);

            MyElementInfo p = new MyElementInfo();
            p.texts = sentences;
            p.time = nt;
            p.status = "partial";

            int iCount = TransTexts.Count;
            if (iCount > 0)
            {
                LEP = TransTexts[iCount - 1];
                LEP.elementInfos.Add(p);
            }
            else
            {
                LEP = new ListElementInfo();
                LEP.elementInfos.Add(p);
                LEP.Index = 0;
                TransTexts.Add(LEP);
            }

            int waitTime = RecogSpeed.Progress * 500 + 1000;
            List<MyElementInfo> TrTexts = LEP.elementInfos;
            if (RadioButton1.Checked)
            {
                if (LEP.Index <= sentences.Length - 1)
                {
                    for (int i = TrTexts.Count - 2; i >= 0; --i)
                    {
                        MyElementInfo lp = TrTexts[i];
                        if (LEP.Index > lp.texts.Length - 1)
                            continue;

                        if (lp.status == "final")
                            continue;
                        string TalkStr = sentences[LEP.Index];
                        if (lp.texts[LEP.Index] == TalkStr)
                        {
                            if (p.time - lp.time >= 2000)
                            {
                                string desStr = $"{LEP.Index}==============={TalkStr}";
                                Debug.WriteLine(desStr);
                                desStr = $"{LEP.Index}-{TalkStr}";
                                RunOnUiThread(() =>
                                {
                                    textView2.Text = desStr;
                                });
                                myQueue.Enqueue(TalkStr);
                                LEP.lastSentence = TalkStr;
                                LEP.lastTime = nt;
                                LEP.lastSupplyTime = 0;
                                ++LEP.Index;
                                break;
                            }
                        }
                    }
                }
            }
            else
            {
                if (LEP.Index >= 1 && LEP.Index - 1 < sentences.Length && p.time - LEP.lastTime >= waitTime * 2 / 3 && p.time - LEP.lastSupplyTime >= waitTime * 2 / 3)
                {
                    int LastIndex = LEP.Index - 1;
                    string LastSentence = sentences[LastIndex];
                    if (LastSentence != LEP.lastSentence)
                    {
                        if (LastSentence.Length >= 1 && LEP.lastSentence.Length >= 1)
                        {
                            string lastTwoChars1 = LastSentence.Substring(LastSentence.Length - 1, 1);
                            string lastTwoChars2 = LEP.lastSentence.Substring(LEP.lastSentence.Length - 1, 1);
                            if (lastTwoChars1 != lastTwoChars2)
                            {
                                int diffIndex = FindFirstDifferenceIndex(LEP.lastSentence, LastSentence);
                                if (diffIndex >= 0)
                                {
                                    string TalkStr = LastSentence.Substring(diffIndex);
                                    if (TalkStr.Length > 1)
                                    {
                                        string desStr = $"{LastIndex}++++{TalkStr}({LEP.lastSentence},{LastSentence}------------";
                                        Debug.WriteLine(desStr);
                                        desStr = $"{LastIndex}-{TalkStr}";
                                        RunOnUiThread(() =>
                                        {
                                            textView2.Text = desStr;
                                        });
                                        myQueue.Enqueue(TalkStr);
                                        LEP.lastSentence = LastSentence;
                                        LEP.lastSupplyTime = nt;
                                    }
                                }
                            }
                        }
                    }
                }
                if (LEP.Index <= sentences.Length - 1)
                {
                    string TalkStr = sentences[LEP.Index];
                    string desStr;
                    bool isPrompt = false;
                    for (int i = TrTexts.Count - 2; i >= 0; --i)
                    {
                        MyElementInfo lp = TrTexts[i];
                        if (LEP.Index > lp.texts.Length - 1)
                            continue;

                        if (lp.status == "final")
                            continue;

                        if (lp.texts[LEP.Index] == TalkStr)
                        {
                            if (p.time - lp.time >= waitTime * 2 / 3)
                            {
                                desStr = $"{LEP.Index}===={TalkStr}-----------------";
                                Debug.WriteLine(desStr);
                                desStr = $"{LEP.Index}-{TalkStr}";
                                RunOnUiThread(() =>
                                {
                                    textView2.Text = desStr;
                                });
                                myQueue.Enqueue(TalkStr);
                                LEP.lastSentence = TalkStr;
                                LEP.lastTime = nt;
                                LEP.lastSupplyTime = 0;
                                ++LEP.Index;
                                isPrompt = true;
                                return;
                            }
                        }
                    }
                    if (!isPrompt&&p.time - LEP.lastTime >= waitTime)
                    {
                        if (translatedText != LEP.lastSentence)
                        {
                            if (translatedText.Length >= 1 && LEP.lastSentence.Length >= 1)
                            {

                                int diffIndex = translatedText.IndexOf(LEP.lastSentence);
                                if (diffIndex >= 0)
                                {
                                    diffIndex += LEP.lastSentence.Length;
                                    TalkStr = translatedText.Substring(diffIndex);
                                    string[] sortsentences = TalkStr.Split(chinesePunctuations, StringSplitOptions.RemoveEmptyEntries);
                                    TalkStr = sortsentences[0];
                                    if (TalkStr.Length > 1)
                                    {
                                        desStr = $"==insert-speak=={TalkStr}({LEP.lastSentence},{translatedText}-----------------";
                                        Debug.WriteLine(desStr);
                                        desStr = $"{TalkStr}";
                                       
                                        RunOnUiThread(() =>
                                        {
                                            textView2.Text = desStr;
                                        });
                                        myQueue.Enqueue(TalkStr);
                                        LEP.lastSentence = TalkStr;
                                        LEP.lastTime = 0;
                                        LEP.lastSupplyTime = 0;
                                        ++LEP.Index;
                                        return;
                                    }
                                }
                            }
                        }

                        desStr = $"{LEP.Index}==speak=={TalkStr}-----------------";
                        Debug.WriteLine(desStr);
                        desStr = $"{LEP.Index}-{TalkStr}";
                        RunOnUiThread(() =>
                        {
                            textView2.Text = desStr;
                        });
                        myQueue.Enqueue(TalkStr);
                        LEP.lastSentence = TalkStr;
                        LEP.lastTime = nt;
                        LEP.lastSupplyTime = 0;
                        ++LEP.Index;
                    }
                }
            }

        }
        private async void Recognizer_Recognized(object sender, TranslationRecognitionEventArgs e)
        {
            // 处理识别结果
            if (e.Result.Reason == ResultReason.TranslatedSpeech)
            {
                int nt = (int)e.Result.Duration.Ticks / 10000;

                string recognizedText = e.Result.Text;

                if (e.Result.Translations.Count == 0)
                    return;
                KeyValuePair<string, string> element = e.Result.Translations.ElementAt(0);
                string translatedText = element.Value;

                if (translatedText.Length == 0)
                    return;
                long dt = e.Result.Duration.Ticks / 10000 - LastGetTime;
                Debug.Print(recognizedText + $"========!!!======={dt},{e.Result.Duration.Ticks / 10000}\n" + translatedText + "========!!!=======");

                var spannable = new SpannableStringBuilder(recognizedText + "\n" + translatedText);
                spannable.SetSpan(new ForegroundColorSpan(Color.Green), 0, spannable.Length(), SpanTypes.ExclusiveExclusive);
                spannable.Append("\n" + TalkString);
                RunOnUiThread(() =>
                {
                    textView1.Text = recognizedText + "=!=\n" + translatedText + "=!=\n" + textView1.Text;


                    // textView3.Text = "-" + translatedText + "\n" + TalkString;

                    textView3.TextFormatted = spannable;
                    TalkString = "▲" + textView3.Text;
                });
                if (TalkString.Length > 9999)
                    TalkString = TalkString.Substring(0, 9999);

                ListElementInfo LEP;
                string TransText = translatedText;
                char[] chinesePunctuations = { '，', '。', '！', '？', '、', ' ' };
                string[] sentences = TransText.Split(chinesePunctuations, StringSplitOptions.RemoveEmptyEntries);

                MyElementInfo p = new MyElementInfo();
                p.texts = sentences;
                p.time = nt;
                p.status = "final";

                int iCount = TransTexts.Count;
                if (iCount > 0)
                {
                    LEP = TransTexts[iCount - 1];
                    int eCount = LEP.elementInfos.Count;
                    if (eCount == 0)
                        LEP.elementInfos.Add(p);
                    else if (!sentences.SequenceEqual(LEP.elementInfos[eCount - 1].texts))
                        LEP.elementInfos.Add(p);
                }
                else
                {
                    LEP = new ListElementInfo();
                    LEP.elementInfos.Add(p);
                    LEP.Index = 0;
                    TransTexts.Add(LEP);
                }

                if (TransTexts.Count == 2)
                    TransTexts.RemoveAt(0);

                ListElementInfo nLEP = new ListElementInfo();
                TransTexts.Add(nLEP);

                if (translatedText != LEP.lastSentence)
                {
                    if (translatedText.Length >= 1 && LEP.lastSentence.Length >= 1)
                    {
                        int diffIndex = translatedText.IndexOf(LEP.lastSentence);

                        if (diffIndex >= 0)
                        {
                            diffIndex += LEP.lastSentence.Length;
                            string TalkStr = translatedText.Substring(diffIndex);
                            if (TalkStr.Length > 1)
                            {
                                string desStr = $"==insert!speak=={TalkStr}({LEP.lastSentence},{translatedText}-----------------";
                                Debug.WriteLine(desStr);
                                desStr = $"{TalkStr}";
                                RunOnUiThread(() =>
                                {
                                     textView2.Text = desStr;
                                });
                                myQueue.Enqueue(TalkStr);
                                LEP.lastSentence = TalkStr;
                                LEP.lastTime = 0;
                                LEP.lastSupplyTime = 0;
                                return;
                            }
                        }
                    }
                }

                string RemainedStr = "";
                for (int i = LEP.Index; i < sentences.Length; ++i)
                {
                    RemainedStr += sentences[i];
                }
                if (RemainedStr.Length > 0)
                {
                    string desStr = $"{LEP.Index}=!speak={RemainedStr}-----------------";
                    Debug.WriteLine(desStr);
                    desStr = $"{LEP.Index}End-{RemainedStr}";
                    RunOnUiThread(() =>
                    {
                        textView2.Text = desStr;
                    });
                    myQueue.Enqueue(RemainedStr);
                    LEP.lastSentence = RemainedStr;
                    LEP.lastTime = 0;
                    LEP.lastSupplyTime = 0;
                }
                else
                {
                    int LastIndex = sentences.Length - 1;
                    string LastSentence = sentences[LastIndex];
                    if (LastSentence != LEP.lastSentence)
                    {
                        if (LastSentence.Length >= 1 && LEP.lastSentence.Length >= 1)
                        {
                            string lastTwoChars1 = LastSentence.Substring(LastSentence.Length - 1, 1);
                            string lastTwoChars2 = LEP.lastSentence.Substring(LEP.lastSentence.Length - 1, 1);
                            if (lastTwoChars1 != lastTwoChars2)
                            {
                                int diffIndex = FindFirstDifferenceIndex(LEP.lastSentence, LastSentence);
                                if (diffIndex >= 0)
                                {
                                    string TalkStr = LastSentence.Substring(diffIndex);
                                    if (TalkStr.Length > 1)
                                    {
                                        string desStr = $"{LastIndex}+++++++speak======={TalkStr}({LEP.lastSentence},{LastSentence}-----------------";
                                        Debug.WriteLine(desStr);
                                        desStr = $"{LastIndex}-{TalkStr}";
                                        RunOnUiThread(() =>
                                        {
                                            textView2.Text = desStr;
                                        });
                                        myQueue.Enqueue(TalkStr);
                                        LEP.lastSentence = TalkStr;
                                        LEP.lastTime = 0;
                                        LEP.lastSupplyTime = 0;
                                    }
                                }
                            }
                        }
                    }
                }
                LEP.Index = 9999;
            }
        }
        private async void Recognizer_Recognizing(object sender, SpeechRecognitionEventArgs e)
        {
            // 处理识别结果
            if (e.Result.Reason == ResultReason.RecognizingSpeech)
            {
                int nt = (int)e.Result.Duration.Ticks / 10000;
                if (nt < 1000)
                    return;

                string recognizedText = e.Result.Text;
                //recognizedText =await AddPunctuationWithSpellCheck(recognizedText);
                string translatedText = await TranslateTextAsync(recognizedText);
                if (translatedText.Length == 0)
                    return;

                long dt = e.Result.Duration.Ticks / 10000 - LastGetTime;
                Debug.Print(recognizedText + $",{dt},{e.Result.Duration.Ticks / 10000}\n" + translatedText);
                LastGetTime = e.Result.Duration.Ticks / 10000;

                RunOnUiThread(() =>
                {
                    textView1.Text = recognizedText + "\n" + translatedText + "\n" + textView1.Text;
                    textView3.Text = translatedText + "\n" + TalkString;
                });


                ListElementInfo LEP;
                string TransText = translatedText;
                char[] chinesePunctuations = { '，', '。', '！', '？', '、', ' ' };
                string[] sentences = TransText.Split(chinesePunctuations, StringSplitOptions.RemoveEmptyEntries);

                MyElementInfo p = new MyElementInfo();
                p.texts = sentences;
                p.time = nt;
                p.status = "partial";

                int waitTime = RecogSpeed.Progress * 500 + 1000;

                int iCount = TransTexts.Count;
                if (iCount > 0)
                {
                    LEP = TransTexts[iCount - 1];
                    LEP.elementInfos.Add(p);
                }
                else
                {
                    LEP = new ListElementInfo();
                    LEP.elementInfos.Add(p);
                    LEP.Index = 0;
                    TransTexts.Add(LEP);
                }

                List<MyElementInfo> TrTexts = LEP.elementInfos;
                if (RadioButton1.Checked)
                {
                    if (LEP.Index <= sentences.Length - 1)
                    {
                        for (int i = TrTexts.Count - 2; i >= 0; --i)
                        {
                            MyElementInfo lp = TrTexts[i];
                            if (LEP.Index > lp.texts.Length - 1)
                                continue;

                            if (lp.status == "final")
                                continue;
                            string TalkStr = sentences[LEP.Index];
                            if (lp.texts[LEP.Index] == TalkStr)
                            {


                                if (p.time - lp.time >= waitTime / 2)
                                {
                                    string desStr = $"{LEP.Index}==============={TalkStr}";
                                    Debug.WriteLine(desStr);
                                    desStr = $"{LEP.Index}-{TalkStr}";
                                    RunOnUiThread(() =>
                                    {
                                        textView2.Text = desStr;
                                    });
                                    myQueue.Enqueue(TalkStr);
                                    LEP.lastSentence = TalkStr;
                                    LEP.lastTime = nt;
                                    LEP.lastSupplyTime = 0;
                                    ++LEP.Index;
                                    break;
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (LEP.Index >= 1 && LEP.Index - 1 < sentences.Length && p.time - LEP.lastTime >= 2000 && p.time - LEP.lastSupplyTime >= 2000)
                    {
                        int LastIndex = LEP.Index - 1;
                        string LastSentence = sentences[LastIndex];
                        if (LastSentence != LEP.lastSentence)
                        {
                            if (LastSentence.Length >= 1 && LEP.lastSentence.Length >= 1)
                            {
                                string lastTwoChars1 = LastSentence.Substring(LastSentence.Length - 1, 1);
                                string lastTwoChars2 = LEP.lastSentence.Substring(LEP.lastSentence.Length - 1, 1);
                                if (lastTwoChars1 != lastTwoChars2)
                                {
                                    int diffIndex = FindFirstDifferenceIndex(LEP.lastSentence, LastSentence);
                                    if (diffIndex >= 0)
                                    {
                                        string TalkStr = LastSentence.Substring(diffIndex);
                                        if (TalkStr.Length > 1)
                                        {
                                            string desStr = $"{LastIndex}++++++++++++{TalkStr}({LEP.lastSentence},{LastSentence})";
                                            Debug.WriteLine(desStr);
                                            desStr = $"{LastIndex}-{TalkStr}";
                                            RunOnUiThread(() =>
                                            {
                                                textView2.Text = desStr;
                                            });
                                            myQueue.Enqueue(TalkStr);
                                            LEP.lastSentence = LastSentence;
                                            LEP.lastSupplyTime = nt;
                                        }

                                    }
                                }
                            }
                        }
                    }
                    if (LEP.Index <= sentences.Length - 1)
                    {
                        string TalkStr = sentences[LEP.Index];
                        if (p.time - LEP.lastTime >= waitTime)
                        {
                            string desStr = $"{LEP.Index}========speak======={TalkStr}";
                            Debug.WriteLine(desStr);
                            desStr = $"{LEP.Index}-{TalkStr}";
                            RunOnUiThread(() =>
                            {
                                textView2.Text = desStr;
                            });
                            myQueue.Enqueue(TalkStr);
                            LEP.lastSentence = TalkStr;
                            LEP.lastTime = nt;
                            LEP.lastSupplyTime = 0;
                            ++LEP.Index;
                        }
                    }
                }
            }
        }

        int FindFirstDifferenceIndex(string str1, string str2)
        {

            int minLength = Math.Min(str1.Length, str2.Length);
            for (int i = 0; i < minLength; i++)
            {
                if (str1[i] != str2[i])
                    return i;
            }
            return minLength;
        }

        private async void Recognizer_Recognized(object sender, SpeechRecognitionEventArgs e)
        {
            // 处理识别结果
            if (e.Result.Reason == ResultReason.RecognizedSpeech)
            {
                int nt = (int)e.Result.Duration.Ticks / 10000;

                string recognizedText = e.Result.Text;
                string translatedText = await TranslateTextAsync(recognizedText);
                if (translatedText.Length == 0)
                    return;
                long dt = e.Result.Duration.Ticks / 10000 - LastGetTime;
                Debug.Print(recognizedText + $"========!!!======={dt},{e.Result.Duration.Ticks / 10000}\n" + translatedText + "========!!!=======");
                RunOnUiThread(() =>
                {
                    textView1.Text = recognizedText + "\"========!!!=======\n" + translatedText + "========!!!=======\n" + textView1.Text;
                    textView3.Text = "-" + translatedText + "\n" + TalkString;
                    TalkString = textView3.Text;
                });
                if (TalkString.Length > 9999)
                    TalkString = TalkString.Substring(0, 9999);

                ListElementInfo LEP;
                string TransText = translatedText;
                char[] chinesePunctuations = { '，', '。', '！', '？', '、', ' ' };
                string[] sentences = TransText.Split(chinesePunctuations, StringSplitOptions.RemoveEmptyEntries);

                MyElementInfo p = new MyElementInfo();
                p.texts = sentences;
                p.time = nt;
                p.status = "final";

                int iCount = TransTexts.Count;
                if (iCount > 0)
                {
                    LEP = TransTexts[iCount - 1];
                    int eCount = LEP.elementInfos.Count;
                    if (eCount == 0)
                        LEP.elementInfos.Add(p);
                    else if (!sentences.SequenceEqual(LEP.elementInfos[eCount - 1].texts))
                        LEP.elementInfos.Add(p);
                }
                else
                {
                    LEP = new ListElementInfo();
                    LEP.elementInfos.Add(p);
                    LEP.Index = 0;
                    TransTexts.Add(LEP);
                }

                if (TransTexts.Count == 2)
                    TransTexts.RemoveAt(0);
                ListElementInfo nLEP = new ListElementInfo();
                TransTexts.Add(nLEP);

               
                string RemainedStr = "";
                for (int i = LEP.Index; i < sentences.Length; ++i)
                {
                    RemainedStr += sentences[i];
                }
                if (RemainedStr.Length > 0)
                {
                    string desStr = $"{LEP.Index}========!!!speak======={RemainedStr}";
                    Debug.WriteLine(desStr);
                    desStr = $"{LEP.Index}End-{RemainedStr}";
                    RunOnUiThread(() =>
                    {
                        textView2.Text = desStr;
                    });
                    myQueue.Enqueue(RemainedStr);
                    LEP.lastSentence = RemainedStr;
                    LEP.lastTime = 0;
                    LEP.lastSupplyTime = 0;
                }
                else
                {
                    int LastIndex = sentences.Length - 1;
                    string LastSentence = sentences[LastIndex];
                    if (LastSentence != LEP.lastSentence)
                    {
                        if (LastSentence.Length >= 1 && LEP.lastSentence.Length >= 1)
                        {
                            string lastTwoChars1 = LastSentence.Substring(LastSentence.Length - 1, 1);
                            string lastTwoChars2 = LEP.lastSentence.Substring(LEP.lastSentence.Length - 1, 1);
                            if (lastTwoChars1 != lastTwoChars2)
                            {
                                int diffIndex = FindFirstDifferenceIndex(LEP.lastSentence, LastSentence);
                                if (diffIndex >= 0)
                                {
                                    string TalkStr = LastSentence.Substring(diffIndex);
                                    if (TalkStr.Length > 1)
                                    {
                                        string desStr = $"{LastIndex}+++++++speak======={TalkStr}({LEP.lastSentence},{LastSentence})";
                                        Debug.WriteLine(desStr);
                                        desStr = $"{LastIndex}-{TalkStr}";
                                        RunOnUiThread(() =>
                                        {
                                            textView2.Text = desStr;
                                        });
                                        myQueue.Enqueue(TalkStr);
                                        LEP.lastSentence = LastSentence;
                                        LEP.lastSupplyTime = 0;
                                    }
                                }
                            }
                        }
                    }
                }
                LEP.Index = 9999;
            }
        }
        private async void Recognizer_Canceled(object sender, TranslationRecognitionCanceledEventArgs e)
        {
            // 处理识别过程被取消的情况
            if (e.Reason == CancellationReason.Error)
            {
                string errorMessage = e.ErrorDetails;
                RunOnUiThread(() =>
                {
                    textView3.Text = "错误: " + errorMessage;
                });

                if (errorMessage.Contains("Error code:"))
                {
                    ++ApiKeyIndex;
                    if (ApiKeyIndex >= ApiKey.Length)
                        ApiKeyIndex = 0;
                    RunOnUiThread(() =>
                    {
                        textView3.Text += $"\n切换至apiKey{ApiKeyIndex}:{ApiKey[ApiKeyIndex]}";
                    });
                }
                recognizeButton.Text = "开始";
                
                isListening = false;
                if (autoReconnect)
                {
                    Thread.Sleep(1000);
                    ContinuousRecognitionAsync();
                }
            }
            else if (e.Reason == CancellationReason.EndOfStream)
            {
                RunOnUiThread(() =>
                {
                    textView3.Text = "识别已经停止！！！！！";
                });
                recognizeButton.Text = "开始";

                isListening = false;
            }
        }
        private async void Recognizer_Canceled(object sender, SpeechRecognitionCanceledEventArgs e)
        {
            // 处理识别过程被取消的情况
            if (e.Reason == CancellationReason.Error)
            {
                string errorMessage = e.ErrorDetails;
                RunOnUiThread(() =>
                {
                    textView3.Text = "错误: " + errorMessage;
                });
                if (errorMessage.Contains("Error code:"))
                {
                    ++ApiKeyIndex;
                    if (ApiKeyIndex >= ApiKey.Length)
                        ApiKeyIndex = 0;
                    RunOnUiThread(() =>
                    {
                        textView3.Text += $"\n切换至apiKey{ApiKeyIndex}:{ApiKey[ApiKeyIndex]}";
                    });
                }
                recognizeButton.Text = "开始";

                isListening = false;

                if (autoReconnect)
                {
                    Thread.Sleep(1000);
                    ContinuousRecognitionAsync();
                }
            }
            else if (e.Reason == CancellationReason.EndOfStream)
            {
                RunOnUiThread(() =>
                {
                    textView3.Text = "识别已经停止！！！！！";
                });
                recognizeButton.Text = "开始";

                isListening = false;
            }
        }
        private async Task<string> TranslateTextAsync(string textToTranslate)
        {
            int selectedIndex1 = Spinner1.SelectedItemPosition;
            int selectedIndex2 = Spinner2.SelectedItemPosition;
            string language = fromlanguages[selectedIndex1];
            string languageTo = transtolanguages[selectedIndex2];

            string fromLanguage = "";

            if (language== "en-US")
                fromLanguage = "&from=en";
            else if (language == "zh-CN")
                fromLanguage = "&from=zh-Hans";
            else if (language == "ja-JP")
                fromLanguage = "&from=ja";

            string route = $"/translate?api-version=3.0{fromLanguage}&to={languageTo}";
            object[] body = new object[] { new { Text = textToTranslate } };
            var requestBody = JsonConvert.SerializeObject(body);

            using (var client = new HttpClient())
            using (var request = new HttpRequestMessage())
            {
                // Build the request.
                request.Method = HttpMethod.Post;
                request.RequestUri = new Uri(TransEndpoint + route);
                request.Content = new StringContent(requestBody, System.Text.Encoding.UTF8, "application/json");
                request.Headers.Add("Ocp-Apim-Subscription-Key", TransApiKey);
                // location required if you're using a multi-service or regional (not global) resource.
                request.Headers.Add("Ocp-Apim-Subscription-Region", ServerArea);

                // Send the request and get response.
                HttpResponseMessage response = await client.SendAsync(request).ConfigureAwait(false);
                // Read response as a string.
                string result = await response.Content.ReadAsStringAsync();
                
                string translatedText = result.Substring(result.IndexOf("\"text\":\"") + "\"text\":\"".Length);
                translatedText = translatedText.Substring(0, translatedText.IndexOf("\""));
                return translatedText;
            }
        }

        public void MonitorQueue()
        {
            SpeakThreadEnable = true;
            while (SpeakThreadEnable)
            {
                // 检测队列中是否有值
                RunOnUiThread(() =>
                {
                    if (IsSpeakOver&& isTtsInitialized)
                        textView4.Text = "==>";
                    else if (isTtsInitialized&& !IsSpeakOver)
                        textView4.Text = "!==>";
                    else if (!isTtsInitialized && IsSpeakOver)
                        textView4.Text = "=!=>";
                    else if (!isTtsInitialized && !IsSpeakOver)
                        textView4.Text = "!!=>";
                });
                if (!IsSpeakOver || myQueue.Count <= 0)
                {
                    Thread.Sleep(100);
                    continue;
                }
                if (myQueue.TryDequeue(out string value))
                {
                    Speak(value);
                }
                else
                {
                    RunOnUiThread(() =>
                    {
                        textView2.Text += "-DeQFail";
                    });
                    Thread.Sleep(100);// 队列为空，等待一段时间再次检测
                }
            }
        }

    }
}