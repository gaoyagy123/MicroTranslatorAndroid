package crc642f584d5611e72b84;


public class MainActivity_MyUtteranceProgressListener
	extends android.speech.tts.UtteranceProgressListener
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onStart:(Ljava/lang/String;)V:GetOnStart_Ljava_lang_String_Handler\n" +
			"n_onDone:(Ljava/lang/String;)V:GetOnDone_Ljava_lang_String_Handler\n" +
			"n_onError:(Ljava/lang/String;)V:GetOnError_Ljava_lang_String_Handler\n" +
			"";
		mono.android.Runtime.register ("MicroTranslator.MainActivity+MyUtteranceProgressListener, MicroTranslator", MainActivity_MyUtteranceProgressListener.class, __md_methods);
	}


	public MainActivity_MyUtteranceProgressListener ()
	{
		super ();
		if (getClass () == MainActivity_MyUtteranceProgressListener.class) {
			mono.android.TypeManager.Activate ("MicroTranslator.MainActivity+MyUtteranceProgressListener, MicroTranslator", "", this, new java.lang.Object[] {  });
		}
	}

	public MainActivity_MyUtteranceProgressListener (crc642f584d5611e72b84.MainActivity p0)
	{
		super ();
		if (getClass () == MainActivity_MyUtteranceProgressListener.class) {
			mono.android.TypeManager.Activate ("MicroTranslator.MainActivity+MyUtteranceProgressListener, MicroTranslator", "MicroTranslator.MainActivity, MicroTranslator", this, new java.lang.Object[] { p0 });
		}
	}


	public void onStart (java.lang.String p0)
	{
		n_onStart (p0);
	}

	private native void n_onStart (java.lang.String p0);


	public void onDone (java.lang.String p0)
	{
		n_onDone (p0);
	}

	private native void n_onDone (java.lang.String p0);


	public void onError (java.lang.String p0)
	{
		n_onError (p0);
	}

	private native void n_onError (java.lang.String p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
