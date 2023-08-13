; ModuleID = 'obj\Release\net7.0-android\android\environment.arm64-v8a.ll'
source_filename = "obj\Release\net7.0-android\android\environment.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [7 x i8] c"normal\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i64 0, i64 0), align 8

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_0.1 = internal constant [21 x i8] c"major=marksweep-conc\00", align 1
@__app_environment_variables_n_1.2 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@__app_environment_variables_v_1.3 = internal constant [37 x i8] c"68bf5e26-dd7d-4612-bffd-f9a2d5b9fed0\00", align 1
@__app_environment_variables_n_2.4 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@__app_environment_variables_v_2.5 = internal constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 1
@__app_environment_variables_n_3.6 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@__app_environment_variables_v_3.7 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [8 x i8*] [
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0)
], align 8

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__ApplicationConfig_android_package_name.0 = internal constant [32 x i8] c"com.companyname.MicroTranslator\00", align 1

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 1, ; uses_mono_aot
	i8 1, ; aot_lazy_load
	i8 0, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 1, ; have_runtime_config_blob
	i8 1, ; have_assemblies_blob
	i8 0, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 8, ; environment_variable_count
	i32 0, ; system_property_count
	i32 60, ; number_of_assemblies_in_apk
	i32 0, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 400, ; number_of_dso_cache_entries
	i32 33554816, ; android_runtime_jnienv_class_token
	i32 100666275, ; jnienv_initialize_method_token
	i32 100666274, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 0, ; mono_components_mask
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 8

@__DSOCacheEntry_name.1 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [29 x i8] c"libaot-System.Console.dll.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Algorithms.dll.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [55 x i8] c"libaot-System.Private.DataContractSerialization.dll.so\00", align 1
@__DSOCacheEntry_name.15 = internal constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@__DSOCacheEntry_name.16 = internal constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 1
@__DSOCacheEntry_name.17 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@__DSOCacheEntry_name.18 = internal constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 1
@__DSOCacheEntry_name.19 = internal constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 1
@__DSOCacheEntry_name.20 = internal constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.21 = internal constant [54 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.lu.so\00", align 1
@__DSOCacheEntry_name.22 = internal constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.23 = internal constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 1
@__DSOCacheEntry_name.24 = internal constant [26 x i8] c"libaot-netstandard.dll.so\00", align 1
@__DSOCacheEntry_name.25 = internal constant [37 x i8] c"libaot-System.Security.Claims.dll.so\00", align 1
@__DSOCacheEntry_name.26 = internal constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 1
@__DSOCacheEntry_name.27 = internal constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 1
@__DSOCacheEntry_name.28 = internal constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 1
@__DSOCacheEntry_name.29 = internal constant [46 x i8] c"libMicrosoft.CognitiveServices.Speech.core.so\00", align 1
@__DSOCacheEntry_name.30 = internal constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.31 = internal constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 1
@__DSOCacheEntry_name.32 = internal constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 1
@__DSOCacheEntry_name.33 = internal constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 1
@__DSOCacheEntry_name.34 = internal constant [56 x i8] c"libaot-Microsoft.CognitiveServices.Speech.csharp.dll.so\00", align 1
@__DSOCacheEntry_name.35 = internal constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.36 = internal constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 1
@__DSOCacheEntry_name.37 = internal constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 1
@__DSOCacheEntry_name.38 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.39 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.40 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 1
@__DSOCacheEntry_name.41 = internal constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 1
@__DSOCacheEntry_name.42 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 1
@__DSOCacheEntry_name.43 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.44 = internal constant [61 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.audio.sys.so\00", align 1
@__DSOCacheEntry_name.45 = internal constant [60 x i8] c"libaot-System.Security.Cryptography.X509Certificates.dll.so\00", align 1
@__DSOCacheEntry_name.46 = internal constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 1
@__DSOCacheEntry_name.47 = internal constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 1
@__DSOCacheEntry_name.48 = internal constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 1
@__DSOCacheEntry_name.49 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.VersionedParcelable.dll.so\00", align 1
@__DSOCacheEntry_name.50 = internal constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 1
@__DSOCacheEntry_name.51 = internal constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 1
@__DSOCacheEntry_name.52 = internal constant [41 x i8] c"libaot-System.Diagnostics.Tracing.dll.so\00", align 1
@__DSOCacheEntry_name.53 = internal constant [51 x i8] c"libaot-Microsoft.IdentityModel.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.54 = internal constant [40 x i8] c"libaot-Microsoft.Identity.Client.dll.so\00", align 1
@__DSOCacheEntry_name.55 = internal constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.56 = internal constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 1
@__DSOCacheEntry_name.57 = internal constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 1
@__DSOCacheEntry_name.58 = internal constant [20 x i8] c"libSystem.Native.so\00", align 1
@__DSOCacheEntry_name.59 = internal constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 1
@__DSOCacheEntry_name.60 = internal constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 1
@__DSOCacheEntry_name.61 = internal constant [30 x i8] c"libaot-MicroTranslator.dll.so\00", align 1
@__DSOCacheEntry_name.62 = internal constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 1
@__DSOCacheEntry_name.63 = internal constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.64 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.65 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@__DSOCacheEntry_name.66 = internal constant [59 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.kws.ort.so\00", align 1
@__DSOCacheEntry_name.67 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1
@__DSOCacheEntry_name.68 = internal constant [55 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.kws.so\00", align 1
@__DSOCacheEntry_name.69 = internal constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.70 = internal constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [400 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 221057335580609593, ; hash 0x3115a79ba46cc39, from name: libaot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 290628453294630638, ; hash 0x4088509d83f66ee, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 327393534088447553, ; hash 0x48b22af451a0641, from name: libaot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 390170653843578339, ; hash 0x56a2a247820dde3, from name: aot-System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 472512565983034901, ; hash 0x68eb3acdf53be15, from name: libaot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 544465019603341966, ; hash 0x78e540cf615528e, from name: libaot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 560278790331054453, ; hash 0x7c6829760de3975, from name: System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 584895086741024446, ; hash 0x81df6fb8411eebe, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 626497116700919570, ; hash 0x8b1c3ceedc3c712, from name: aot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 628522906763308403, ; hash 0x8b8f640eed2ad73, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 680930311029487832, ; hash 0x973268299b578d8, from name: aot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 741027209231504624, ; hash 0xa48a852172494f0, from name: aot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 743359736279824557, ; hash 0xa50f1bddd4978ad, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 750875890346172408, ; hash 0xa6ba5a4da7d1ff8, from name: System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 756290313852954525, ; hash 0xa7ee2089046279d, from name: System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 1096321628016204463, ; hash 0xf36eab64d7bdaaf, from name: aot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 1097501675994448902, ; hash 0xf3b1bf5a20b8406, from name: libaot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 1146928578970395727, ; hash 0xfeab5774446244f, from name: aot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 1156202800855108882, ; hash 0x100ba8525147cd12, from name: Microsoft.CognitiveServices.Speech.extension.lu.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 1181472735908652530, ; hash 0x10656f318fa4e5f2, from name: System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 1196280833168408863, ; hash 0x109a0b14609c811f, from name: libaot-System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 1200280967012175695, ; hash 0x10a8412e1d6c4f4f, from name: libaot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 1234884336330527393, ; hash 0x112330c2ddacd2a1, from name: aot-System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 1379514111066213802, ; hash 0x132504c668bd8daa, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 1499327756876432029, ; hash 0x14ceaea6ae80c29d, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 1560574748131067758, ; hash 0x15a8467713cc076e, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 1730900776029750156, ; hash 0x18056515c8b3838c, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 1864491222110837962, ; hash 0x19e000e354c01cca, from name: libMicrosoft.CognitiveServices.Speech.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 1875417405349196092, ; hash 0x1a06d2319b6c713c, from name: System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 1972385128188460614, ; hash 0x1b5f51d2edefbe46, from name: System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 2010011812825262371, ; hash 0x1be4ff1821c9e923, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 2019051625445060944, ; hash 0x1c051cc185d3f150, from name: libaot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 2024202821639637893, ; hash 0x1c1769bdd92c8b85, from name: aot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 2169143264332568652, ; hash 0x1e1a584e6979584c, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 2183779145535666766, ; hash 0x1e4e57900d8f3a4e, from name: Microsoft.CognitiveServices.Speech.csharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 2188053935818705699, ; hash 0x1e5d877639de8b23, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 2258610292287302109, ; hash 0x1f5832181dd369dd, from name: Microsoft.CognitiveServices.Speech.csharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 2278942814095671648, ; hash 0x1fa06e6a419a0160, from name: System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 2287834202362508563, ; hash 0x1fc00515e8ce7513, from name: System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 2308032427487440447, ; hash 0x2007c743aa78ae3f, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 2476879673203463353, ; hash 0x225fa4f090ad94b9, from name: libaot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 2497223385847772520, ; hash 0x22a7eb7046413568, from name: System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 2543609594401387459, ; hash 0x234cb7731191f3c3, from name: aot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 2552433275064631459, ; hash 0x236c108a511d40a3, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 2607857763146079109, ; hash 0x2430f8d18d111b85, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 2621972009330107316, ; hash 0x24631da6932363b4, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 2720835231062098223, ; hash 0x25c2593a1fd3012f, from name: libaot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 2865936624365190494, ; hash 0x27c5da2cec11bd5e, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 2877235116261800653, ; hash 0x27edfe1810107acd, from name: libMicrosoft.CognitiveServices.Speech.extension.lu.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 2978076563348721961, ; hash 0x295440db18511129, from name: libaot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 3023023456770706911, ; hash 0x29f3efd1387dcddf, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 3159715243761782120, ; hash 0x2bd99045f7cecd68, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 3215847190090144585, ; hash 0x2ca0fbfb2942db49, from name: libaot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 3325875462027654285, ; hash 0x2e27e21c8958b48d, from name: System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 3413847582085635339, ; hash 0x2f606c49df8a5d0b, from name: aot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 3415134081241495173, ; hash 0x2f64fe5a4cbab685, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 3426500358964551608, ; hash 0x2f8d5fec0ed49fb8, from name: Microsoft.CognitiveServices.Speech.extension.audio.sys
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 3565908020027737498, ; hash 0x317ca6738378459a, from name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 3577153083746314324, ; hash 0x31a499c6efe46854, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 3584501248261514691, ; hash 0x31beb4e4cf9265c3, from name: libaot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 3604923293906189876, ; hash 0x320742a2d7cf3e34, from name: libaot-System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 3617300193753112415, ; hash 0x32333b5c669b1f5f, from name: Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 3624819157652780137, ; hash 0x324df1d19aecb469, from name: Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 3647754201059316852, ; hash 0x329f6d1e86145474, from name: System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 3657389980202273675, ; hash 0x32c1a8cf2f078b8b, from name: libaot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 3703096612151080118, ; hash 0x33640abfb837b4b6, from name: libaot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 3766788760912740873, ; hash 0x3446526bb6234209, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 3778015232232666774, ; hash 0x346e34d6413e3696, from name: libaot-System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 3810344663955173033, ; hash 0x34e11048a6da6ea9, from name: aot-Xamarin.AndroidX.VersionedParcelable
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 3933965368022646939, ; hash 0x369840a8bfadc09b, from name: System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 3943677120668259164, ; hash 0x36bac1725e44535c, from name: aot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 4009997192427317104, ; hash 0x37a65f335cf1a770, from name: System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 4017192615964119979, ; hash 0x37bfef6674dd13ab, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 4082358154728349959, ; hash 0x38a7731cca80a107, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 4093745415275440803, ; hash 0x38cfe7c3fe606aa3, from name: System.Diagnostics.Tracing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 4154383907710350974, ; hash 0x39a7562737acb67e, from name: System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 4186592800298148390, ; hash 0x3a19c3f868faa226, from name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 4187479170553454871, ; hash 0x3a1cea1e912fa117, from name: System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 4199824557729976903, ; hash 0x3a48c62f02751247, from name: libaot-Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 4205801962323029395, ; hash 0x3a5e0299f7e7ad93, from name: System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 4340731027035686323, ; hash 0x3c3d5fdef3fa85b3, from name: aot-Microsoft.Identity.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 4411920538413871651, ; hash 0x3d3a4a5ab568b223, from name: aot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 4533637005954432954, ; hash 0x3eeab6d6307abfba, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 4617287182067658862, ; hash 0x4013e63a891b706e, from name: libMicrosoft.CognitiveServices.Speech.core.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 4619841365973187374, ; hash 0x401cf93ed17cbb2e, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 4676011426420077172, ; hash 0x40e4879e256fb274, from name: System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 4748725187834767676, ; hash 0x41e6dc6604d7693c, from name: libaot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 4778132833905139113, ; hash 0x424f567f2e8bdda9, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 4809057822547766521, ; hash 0x42bd349c3145ecf9, from name: System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 4821796847100292949, ; hash 0x42ea76af7a82ef55, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 4905845688753735370, ; hash 0x441510a9610c46ca, from name: libaot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 4936802805617500442, ; hash 0x44830bfed2fba11a, from name: System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 5103417709280584325, ; hash 0x46d2fb5e161b6285, from name: System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 5232730255288553603, ; hash 0x489e647167e9d083, from name: aot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 5245831624004909525, ; hash 0x48ccf0118452b9d5, from name: libaot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 5267519814036117019, ; hash 0x4919fd5cc2f4561b, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 5334205502128732672, ; hash 0x4a06e7a471513a00, from name: aot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 5423376490970181369, ; hash 0x4b43b42f2b7b6ef9, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 5479418050698653789, ; hash 0x4c0acdaf97c1b05d, from name: libaot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 5639827788368935496, ; hash 0x4e44b17e101b7a48, from name: libMicrosoft.CognitiveServices.Speech.extension.audio.sys
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 5718066319469868703, ; hash 0x4f5aa7059e20769f, from name: System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 5753633696766002394, ; hash 0x4fd9035cf77484da, from name: libaot-System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 5900900230463535802, ; hash 0x51e4357ecbccbaba, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 5948985717485083712, ; hash 0x528f0afdb0921c40, from name: libSystem.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 5958220530006169673, ; hash 0x52afda0108751849, from name: System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 5979151488806146654, ; hash 0x52fa3699a489d25e, from name: System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 5984759512290286505, ; hash 0x530e23115c33dba9, from name: System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 6027563593999215487, ; hash 0x53a6352741666b7f, from name: libaot-System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 6076224371281935956, ; hash 0x545315df59d4be54, from name: System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 6153263910407647837, ; hash 0x5564c8ecd514325d, from name: aot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 6278736998281604212, ; hash 0x57228e08a4ad6c74, from name: System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 6284145129771520194, ; hash 0x5735c4b3610850c2, from name: System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 6308061292769401015, ; hash 0x578abc5300e958b7, from name: libSystem.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 6309031637591895059, ; hash 0x578e2ed9035dac13, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 6488258789742214262, ; hash 0x5a0aecfe3563fc76, from name: aot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 6568042426089023914, ; hash 0x5b265fc99cbb29aa, from name: Microsoft.Identity.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 6586958774428123002, ; hash 0x5b69941b2bee3f7a, from name: MicroTranslator
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 6786606130239981554, ; hash 0x5e2ede51877147f2, from name: System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 6913716284728566067, ; hash 0x5ff274549d146133, from name: System.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 7005623937201008400, ; hash 0x6138f9da7ed6ef10, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 7032820184502538532, ; hash 0x619998b242789124, from name: libaot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 7078790046120101683, ; hash 0x623cea0aba8f4733, from name: libaot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 7217174030591293463, ; hash 0x64288d8ae7917817, from name: aot-Microsoft.CognitiveServices.Speech.csharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 7252784626773793767, ; hash 0x64a71130ef441be7, from name: System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 7260863994773921465, ; hash 0x64c3c55562ec5eb9, from name: libaot-System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 7270811800166795866, ; hash 0x64e71ccf51a90a5a, from name: System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 7360049220918255826, ; hash 0x662425c56e3920d2, from name: System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 7381472336305914060, ; hash 0x667041fb2ce300cc, from name: aot-System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 7489048572193775167, ; hash 0x67ee71ff6b419e3f, from name: System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 7515511324144895830, ; hash 0x684c75bafd150756, from name: System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 7540556024932143097, ; hash 0x68a56fc0cb030ff9, from name: aot-System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 7603299711682212348, ; hash 0x698458cdc3a5f1fc, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 7639941140308737920, ; hash 0x6a0685fd2cfebf80, from name: libSystem.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 7673446916582303699, ; hash 0x6a7d8f50a1b467d3, from name: aot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 7675303261932883976, ; hash 0x6a8427a6b6e81008, from name: aot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 7705760529313926279, ; hash 0x6af05c5fe1fb8c87, from name: libMicrosoft.CognitiveServices.Speech.extension.kws.ort
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 7707717287637500201, ; hash 0x6af750092ec54129, from name: libMicrosoft.CognitiveServices.Speech.extension.audio.sys.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 7714652370974252055, ; hash 0x6b0ff375198b9c17, from name: System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 7735176074855944702, ; hash 0x6b58dda848e391fe, from name: Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 7778606931357632082, ; hash 0x6bf329ca8ef68652, from name: Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 7854149675806370154, ; hash 0x6cff8b845f30296a, from name: libMicrosoft.CognitiveServices.Speech.extension.kws.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 7855888427540559711, ; hash 0x6d05b8e70ea8375f, from name: System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 7948127817007369596, ; hash 0x6e4d6c237a200d7c, from name: aot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 8150551902651424003, ; hash 0x711c93c5a0ec1d03, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 8185542183669246576, ; hash 0x7198e33f4794aa70, from name: System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 8189823481260868218, ; hash 0x71a819108db5027a, from name: libaot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 8241552557501108844, ; hash 0x725fe062ab90d26c, from name: Microsoft.CognitiveServices.Speech.extension.kws.ort
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 8313797594473349417, ; hash 0x73608add2114c129, from name: aot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 8335746768722831773, ; hash 0x73ae85857f55a99d, from name: aot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 8340594550852286012, ; hash 0x73bfbe8dbb1bf63c, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 8362087432769215690, ; hash 0x740c1a3742f79cca, from name: System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 8368701292315763008, ; hash 0x7423997c6fd56140, from name: System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 8375722837974120975, ; hash 0x743c8b8b6e92fa0f, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 8466993038139643024, ; hash 0x7580cd4ee204d490, from name: System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 8518412311883997971, ; hash 0x76377add7c28e313, from name: System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 8563666267364444763, ; hash 0x76d841191140ca5b, from name: System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 8626645781824515032, ; hash 0x77b800a1f4c5abd8, from name: System.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 8659486139845940425, ; hash 0x782cacc3a6ef94c9, from name: System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 8659971956412730285, ; hash 0x782e669ca2d34bad, from name: aot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 8730145678495508517, ; hash 0x7927b53d8422e825, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 8747763348793017252, ; hash 0x79664c6b07fd43a4, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 8760858219412156768, ; hash 0x7994d2222f9f7160, from name: System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 8761982123773840073, ; hash 0x7998d0518fdccac9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 8824907823227734965, ; hash 0x7a785ee8ab0e0bb5, from name: aot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 8879040545617680294, ; hash 0x7b38b05543d517a6, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 8941376889969657626, ; hash 0x7c1626e87187471a, from name: System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 8955323522379913726, ; hash 0x7c47b34bd82799fe, from name: Microsoft.Identity.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 8967164847000689438, ; hash 0x7c71c4eb13d89b1e, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 9032777207089403703, ; hash 0x7d5adf031bcf1737, from name: libaot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 9049979032622352945, ; hash 0x7d97fbfb38304a31, from name: libaot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 9071850823194088089, ; hash 0x7de5b0424bd19299, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 9137369390292547645, ; hash 0x7ece750c71ea383d, from name: aot-System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 9293571162334492259, ; hash 0x80f965bb91c2f663, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 9367092681395718278, ; hash 0x81fe992a2cc0c886, from name: libaot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 9370897661222023495, ; hash 0x820c1dc613ad7147, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 9564066322021869238, ; hash 0x84ba63a5b463e6b6, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 9584802165301184279, ; hash 0x85040ec9712c0717, from name: System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 9659729154652888475, ; hash 0x860e407c9991dd9b, from name: System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 9730585375023143521, ; hash 0x8709fbd7fedd9a61, from name: aot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 9783785228567974479, ; hash 0x87c6fcd42382124f, from name: libaot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 9921778862272270480, ; hash 0x89b13d4eb1b7d090, from name: aot-System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 9966837393014335348, ; hash 0x8a5151cd68b32774, from name: Microsoft.CognitiveServices.Speech.extension.audio.sys.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 10036215306110403221, ; hash 0x8b47cca5920c8295, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 10051358222726253779, ; hash 0x8b7d990c97ccccd3, from name: System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 10078384221613451993, ; hash 0x8bdd9d0d4f2bead9, from name: libaot-Microsoft.Identity.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 10100633424984079765, ; hash 0x8c2ca895a69cfd95, from name: libaot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 10117538216423255955, ; hash 0x8c68b7671f58ef93, from name: System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 10171817714367554669, ; hash 0x8d298e5190e7646d, from name: Microsoft.CognitiveServices.Speech.extension.kws
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 10202443004866537339, ; hash 0x8d965bdbaa3d277b, from name: aot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 10214437830394522368, ; hash 0x8dc0f9169cfa2b00, from name: aot-System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 10224492561641212282, ; hash 0x8de4b1d0293f897a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 10245369515835430794, ; hash 0x8e2edd4ad7fc978a, from name: System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 10273345953350871244, ; hash 0x8e9241b6cc2ce8cc, from name: netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 10291981562957691400, ; hash 0x8ed476b3c6f67a08, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 10318218263549127400, ; hash 0x8f31acd7a9cb2ae8, from name: aot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 10360315726388337145, ; hash 0x8fc73c43084519f9, from name: libaot-System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 10385124814576326370, ; hash 0x901f5fff00ea96e2, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 10386754220365410361, ; hash 0x902529ee9a2b7039, from name: aot-Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 10387475612650146223, ; hash 0x9027ba08d50b89af, from name: libaot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 10419829222152941729, ; hash 0x909aab788ea930a1, from name: aot-MicroTranslator.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 10430153318873392755, ; hash 0x90bf592ea44f6673, from name: Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 10431089073467423858, ; hash 0x90c2ac3efc7bfc72, from name: libaot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 10450970453325464374, ; hash 0x91094e4174914336, from name: aot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 10561557058910284153, ; hash 0x92923030035de979, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 10657322552275964462, ; hash 0x93e66a65792b122e, from name: aot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 10686502423950929984, ; hash 0x944e1555c6f23040, from name: libaot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 10738576877450676954, ; hash 0x950716c64dabcada, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 10785150219063592792, ; hash 0x95ac8cfb68830758, from name: System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 10828441735335428004, ; hash 0x96465a6301aebfa4, from name: aot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 10964653383833615866, ; hash 0x982a4628ccaffdfa, from name: System.Diagnostics.Tracing
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 10964816407274601913, ; hash 0x982ada6da6fa3db9, from name: Microsoft.CognitiveServices.Speech.extension.lu
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 11011729721242886653, ; hash 0x98d185d6bd4b21fd, from name: Microsoft.CognitiveServices.Speech.extension.kws.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 11043797956829943227, ; hash 0x994373baac0895bb, from name: aot-System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 11112238375867107341, ; hash 0x9a3699ed7d05c80d, from name: libaot-System.Diagnostics.Tracing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 11164818937994912957, ; hash 0x9af167ab9cbda4bd, from name: System.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 11171214345979581187, ; hash 0x9b08204291dc5303, from name: libaot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 11177625176077173201, ; hash 0x9b1ee6e0448b01d1, from name: Microsoft.CognitiveServices.Speech.extension.kws.ort.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 11212038206026375799, ; hash 0x9b9929582e4f6277, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 11289550101096566448, ; hash 0x9cac8a0099d60eb0, from name: aot-Microsoft.Identity.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 11297620656358036086, ; hash 0x9cc936212d561276, from name: libaot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 11327873123841536301, ; hash 0x9d34b096a744f12d, from name: aot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 11369008813813839762, ; hash 0x9dc6d547d3a8b792, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 11374314970066871736, ; hash 0x9dd9af339a3e65b8, from name: libaot-Microsoft.CognitiveServices.Speech.csharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 11427651043692466812, ; hash 0x9e972c13f469527c, from name: System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 11465353776621081442, ; hash 0x9f1d1e8387aed362, from name: aot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 11485890710487134646, ; hash 0x9f6614bf0f8b71b6, from name: System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 11495032816624096970, ; hash 0x9f868f71845656ca, from name: aot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 11501523568478995397, ; hash 0x9f9d9ebf72f943c5, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 11530669335547299986, ; hash 0xa0052aab27c94892, from name: System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 11597940890313164233, ; hash 0xa0f429ca8d1805c9, from name: netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 11622665325505776179, ; hash 0xa14c0088b6058a33, from name: libaot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 11764213056097819061, ; hash 0xa342e171eeb919b5, from name: libaot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 11775896168281936811, ; hash 0xa36c632c765413ab, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 11782443198922974530, ; hash 0xa383a5a9d2056542, from name: aot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 11799183892646765925, ; hash 0xa3bf1f3c50b8a565, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 11878431249347270648, ; hash 0xa4d8aa49623e57f8, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 12016490382152452913, ; hash 0xa6c3265623184b31, from name: aot-System.Diagnostics.Tracing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 12033421043518725918, ; hash 0xa6ff4caeeba4df1e, from name: libaot-MicroTranslator.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 12050631976567110376, ; hash 0xa73c71ef8a3efae8, from name: aot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 12051765732457062039, ; hash 0xa7407914a7541e97, from name: aot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 12052751833701477691, ; hash 0xa743f9ef3db6ed3b, from name: System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 12086748934163185710, ; hash 0xa7bcc21e0620c02e, from name: libaot-MicroTranslator
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 12278824155482493573, ; hash 0xaa6725836f051285, from name: libaot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 12278928371408744993, ; hash 0xaa67844c1848b221, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 12319133490348723861, ; hash 0xaaf65aa3d0da8e95, from name: libaot-System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 12362395135250488461, ; hash 0xab900ce0719f5c8d, from name: aot-System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 12366467630652953370, ; hash 0xab9e84ca2b6f931a, from name: libaot-Microsoft.Identity.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 12439793764729580087, ; hash 0xaca3068529d36a37, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 12453234617382276517, ; hash 0xacd2c6e789ab0da5, from name: libaot-System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 12550732019250633519, ; hash 0xae2d28465e8e1b2f, from name: System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 12708922737231849740, ; hash 0xb05f29e50e96e90c, from name: System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 12842431879475601171, ; hash 0xb2397bc0944b9f13, from name: System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 12895691319166646681, ; hash 0xb2f6b2ee34043999, from name: aot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 13038585680601407536, ; hash 0xb4f25c9859bde030, from name: aot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 13039722614324072723, ; hash 0xb4f666a15c6a1113, from name: aot-System.Diagnostics.Tracing
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 13116315589229894972, ; hash 0xb606838901f75d3c, from name: aot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 13314286428381311703, ; hash 0xb8c5d8f6e978f2d7, from name: libaot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 13413078639128935845, ; hash 0xba24d3f4eda8fda5, from name: Microsoft.CognitiveServices.Speech.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 13488491921086969402, ; hash 0xbb30bfefe81d763a, from name: aot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 13546874730744599821, ; hash 0xbc002acb0ebf550d, from name: System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 13603500654432575449, ; hash 0xbcc957c5513f5fd9, from name: System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 13761955127882175294, ; hash 0xbefc49465c48533e, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 13768113933372556022, ; hash 0xbf122aad01c702f6, from name: libaot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 13780240838949801592, ; hash 0xbf3d40083cef0e78, from name: System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 13800366185810047968, ; hash 0xbf84bfedb38533e0, from name: aot-MicroTranslator
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 13831951434778411373, ; hash 0xbff4f68b8c6c016d, from name: libaot-Microsoft.CognitiveServices.Speech.csharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 13888993854737701709, ; hash 0xc0bf9e52e7395b4d, from name: System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 13927427627500361954, ; hash 0xc14829a2f41ed8e2, from name: aot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 14024723203617446143, ; hash 0xc2a1d37290cbd8ff, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 14037761671920318323, ; hash 0xc2d025dd88677773, from name: aot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 14058709349301150578, ; hash 0xc31a91aabd8ee372, from name: System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 14059049780117520506, ; hash 0xc31bc7497770407a, from name: aot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 14064151877224080280, ; hash 0xc32de79e0515a398, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 14070677912659721959, ; hash 0xc34517030d047ee7, from name: libaot-System.Diagnostics.Tracing
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 14143988164198918098, ; hash 0xc4498a4c1a67e7d2, from name: System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 14152660198772281192, ; hash 0xc46859777ea18f68, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 14159110086036678642, ; hash 0xc47f439ae5dde7f2, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 14174671189317472550, ; hash 0xc4b68c58973b5126, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 14182888721008485466, ; hash 0xc4d3be25c89ae45a, from name: aot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 14230396410514008665, ; hash 0xc57c8623b5ae6a59, from name: aot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 14266209324956448933, ; hash 0xc5fbc1cba164f8a5, from name: libMicrosoft.CognitiveServices.Speech.extension.kws
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 14317997431913345095, ; hash 0xc6b3becde8267047, from name: aot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 14327709162229390963, ; hash 0xc6d63f9253cade73, from name: System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 14530359728827805830, ; hash 0xc9a635302f6c3086, from name: MicroTranslator.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 14622043554576106986, ; hash 0xcaebef2458cc85ea, from name: System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 14713405421650509891, ; hash 0xcc308446a9c90043, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 14793308678264731746, ; hash 0xcd4c63dd54ac3862, from name: libaot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 14797884060996115029, ; hash 0xcd5ca526a3169a55, from name: aot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 14832630590065248058, ; hash 0xcdd816ef5d6e873a, from name: System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 14991793843564863672, ; hash 0xd00d8d121f9260b8, from name: libaot-System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 15053928356398764554, ; hash 0xd0ea4c14bd54120a, from name: aot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 15138356091203993725, ; hash 0xd2163ea89395c07d, from name: Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 15169277521300507936, ; hash 0xd28419890c6f4d20, from name: aot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 15361183609531804313, ; hash 0xd52de31b17b22a99, from name: System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 15371816955219117674, ; hash 0xd553aa13d029866a, from name: libaot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 15422501938551467493, ; hash 0xd607bbcd1b222de5, from name: System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 15441728228412085485, ; hash 0xd64c0a028c9fd4ed, from name: libaot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 15503723175688157554, ; hash 0xd7284a1606e23972, from name: aot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 15527772828719725935, ; hash 0xd77dbb1e38cd3d6f, from name: System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 15550679837847413401, ; hash 0xd7cf1cebe6b96299, from name: libaot-Xamarin.AndroidX.VersionedParcelable
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 15617887668700861200, ; hash 0xd8bde2166ade5310, from name: aot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 15619787930512100580, ; hash 0xd8c4a25d991b8ce4, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 15637181376593849944, ; hash 0xd9026d9cd83aee58, from name: aot-System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 15734978453794313066, ; hash 0xda5ddf8946d5d36a, from name: aot-System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 15742342285542832975, ; hash 0xda7808e6f6643b4f, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 15869986477656553338, ; hash 0xdc3d849e5ef8b77a, from name: libaot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 15920910109220503623, ; hash 0xdcf26f6449038047, from name: System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 16210911171323730879, ; hash 0xe0f8b9d23c299bbf, from name: libaot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 16244479869324760570, ; hash 0xe16ffc5fcc1615fa, from name: aot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 16253390427661688581, ; hash 0xe18fa47ad4825f05, from name: libaot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 16273606707797624453, ; hash 0xe1d7771458b10685, from name: System.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 16354813168604688526, ; hash 0xe2f7f7ece290308e, from name: aot-System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 16359895623217386732, ; hash 0xe30a0664105714ec, from name: libaot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 16370340268830916137, ; hash 0xe32f21bd9ff07e29, from name: System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 16381697928620763692, ; hash 0xe3577b78dd316a2c, from name: aot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 16411908373586787849, ; hash 0xe3c2cfb635e63e09, from name: libaot-System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 16413721059704043258, ; hash 0xe3c940571601f6fa, from name: aot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 16733100980842614628, ; hash 0xe837eaafb1dd4f64, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 16765175234154577062, ; hash 0xe8a9de0cbcf5bca6, from name: libaot-System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 16812641203226435415, ; hash 0xe9528018de685f57, from name: libaot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 16818814240165112060, ; hash 0xe9686e710852a8fc, from name: aot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 16926798323237543726, ; hash 0xeae8116499405f2e, from name: libaot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 16948040093346346617, ; hash 0xeb3388ab9afcb679, from name: System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 17006494245921786209, ; hash 0xec03346992e48961, from name: libaot-System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 17008137082415910100, ; hash 0xec090a90408c8cd4, from name: System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 17055547629728291761, ; hash 0xecb17a347fb5dbb1, from name: aot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 17062143951396181894, ; hash 0xecc8e986518c9786, from name: System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 17230721278011714856, ; hash 0xef1fd1b5c7a72d28, from name: System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 17260702271250283638, ; hash 0xef8a5543bba6bc76, from name: System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 17317630548055557570, ; hash 0xf054953b104e05c2, from name: aot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 17370066934596372732, ; hash 0xf10edfd8b16008fc, from name: libMicrosoft.CognitiveServices.Speech.extension.lu
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 17402366034782696113, ; hash 0xf1819fb4fa8bb2b1, from name: System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 17501557440705411739, ; hash 0xf2e205c3dd573a9b, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 17577202782581072989, ; hash 0xf3eec4cd80c0a45d, from name: System.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 17621652644066257425, ; hash 0xf48cafb75ce46a11, from name: libaot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 17623318455445168472, ; hash 0xf4929ac34c652158, from name: libaot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 17634962315631480230, ; hash 0xf4bbf8cac29d4da6, from name: aot-System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 17678238194885447556, ; hash 0xf555b7f994e3cf84, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 17725651416025760223, ; hash 0xf5fe2a0c609d81df, from name: aot-System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 17935984482491575587, ; hash 0xf8e96adb9fd42d23, from name: aot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 17936373173282875089, ; hash 0xf8eacc5ec05f26d1, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 17966837238658391933, ; hash 0xf9570746b37e5f7d, from name: libaot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 18025913125965088385, ; hash 0xfa28e87b91334681, from name: System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 18035209221645796007, ; hash 0xfa49ef3b820c02a7, from name: System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 18055318554416087125, ; hash 0xfa916090667d8055, from name: libMicrosoft.CognitiveServices.Speech.extension.kws.ort.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 18086360900563295465, ; hash 0xfaffa969d596dce9, from name: aot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 18145848498878603418, ; hash 0xfbd30111a3b6e09a, from name: libSystem.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 18149833683679183258, ; hash 0xfbe12992c81e019a, from name: Microsoft.CognitiveServices.Speech.core.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 18226465753896977720, ; hash 0xfcf16a0903da0538, from name: libaot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 18257096356770733190, ; hash 0xfd5e3c67ff65dc86, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 18309516218928916979, ; hash 0xfe1877fe3e82e9f3, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 18347920244245135731, ; hash 0xfea0e8402d6e0173, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 18365080870656463276, ; hash 0xfedddfbfdeccd1ac, from name: aot-Microsoft.CognitiveServices.Speech.csharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 18377348929170574574, ; hash 0xff09757bd49e0cee, from name: aot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 18380184030268848184, ; hash 0xff1387fe3e7b7838, from name: Xamarin.AndroidX.VersionedParcelable
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 18385158873532443393, ; hash 0xff2534963405ab01, from name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array


; Bundled assembly name buffers, all 0 bytes long
@bundled_assemblies = local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 8


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [60 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 8

; Assembly store data
@assembly_stores = local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 8

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/release/7.0.2xx @ 58a54aef5213e50e3e59008e244a64896fe971b6"}
