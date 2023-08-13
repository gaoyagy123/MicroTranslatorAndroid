; ModuleID = 'obj\Release\net7.0-android\android\environment.x86.ll'
source_filename = "obj\Release\net7.0-android\android\environment.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i32 0, i32 0), align 4

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
], align 4

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
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
}, align 4

@__DSOCacheEntry_name.1 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [61 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.audio.sys.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [55 x i8] c"libaot-System.Private.DataContractSerialization.dll.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [26 x i8] c"libaot-netstandard.dll.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [55 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.kws.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [41 x i8] c"libaot-System.Diagnostics.Tracing.dll.so\00", align 1
@__DSOCacheEntry_name.15 = internal constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 1
@__DSOCacheEntry_name.16 = internal constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 1
@__DSOCacheEntry_name.17 = internal constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 1
@__DSOCacheEntry_name.18 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.19 = internal constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 1
@__DSOCacheEntry_name.20 = internal constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 1
@__DSOCacheEntry_name.21 = internal constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 1
@__DSOCacheEntry_name.22 = internal constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 1
@__DSOCacheEntry_name.23 = internal constant [60 x i8] c"libaot-System.Security.Cryptography.X509Certificates.dll.so\00", align 1
@__DSOCacheEntry_name.24 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 1
@__DSOCacheEntry_name.25 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@__DSOCacheEntry_name.26 = internal constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.27 = internal constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.28 = internal constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 1
@__DSOCacheEntry_name.29 = internal constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 1
@__DSOCacheEntry_name.30 = internal constant [56 x i8] c"libaot-Microsoft.CognitiveServices.Speech.csharp.dll.so\00", align 1
@__DSOCacheEntry_name.31 = internal constant [51 x i8] c"libaot-Microsoft.IdentityModel.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.32 = internal constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 1
@__DSOCacheEntry_name.33 = internal constant [20 x i8] c"libSystem.Native.so\00", align 1
@__DSOCacheEntry_name.34 = internal constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.35 = internal constant [30 x i8] c"libaot-MicroTranslator.dll.so\00", align 1
@__DSOCacheEntry_name.36 = internal constant [40 x i8] c"libaot-Microsoft.Identity.Client.dll.so\00", align 1
@__DSOCacheEntry_name.37 = internal constant [54 x i8] c"libaot-System.Security.Cryptography.Algorithms.dll.so\00", align 1
@__DSOCacheEntry_name.38 = internal constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.39 = internal constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 1
@__DSOCacheEntry_name.40 = internal constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 1
@__DSOCacheEntry_name.41 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.VersionedParcelable.dll.so\00", align 1
@__DSOCacheEntry_name.42 = internal constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.43 = internal constant [46 x i8] c"libMicrosoft.CognitiveServices.Speech.core.so\00", align 1
@__DSOCacheEntry_name.44 = internal constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 1
@__DSOCacheEntry_name.45 = internal constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.46 = internal constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 1
@__DSOCacheEntry_name.47 = internal constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.48 = internal constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 1
@__DSOCacheEntry_name.49 = internal constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 1
@__DSOCacheEntry_name.50 = internal constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.51 = internal constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 1
@__DSOCacheEntry_name.52 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 1
@__DSOCacheEntry_name.53 = internal constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 1
@__DSOCacheEntry_name.54 = internal constant [59 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.kws.ort.so\00", align 1
@__DSOCacheEntry_name.55 = internal constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 1
@__DSOCacheEntry_name.56 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@__DSOCacheEntry_name.57 = internal constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 1
@__DSOCacheEntry_name.58 = internal constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 1
@__DSOCacheEntry_name.59 = internal constant [54 x i8] c"libMicrosoft.CognitiveServices.Speech.extension.lu.so\00", align 1
@__DSOCacheEntry_name.60 = internal constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 1
@__DSOCacheEntry_name.61 = internal constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 1
@__DSOCacheEntry_name.62 = internal constant [37 x i8] c"libaot-System.Security.Claims.dll.so\00", align 1
@__DSOCacheEntry_name.63 = internal constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.64 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.65 = internal constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.66 = internal constant [29 x i8] c"libaot-System.Console.dll.so\00", align 1
@__DSOCacheEntry_name.67 = internal constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 1
@__DSOCacheEntry_name.68 = internal constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 1
@__DSOCacheEntry_name.69 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@__DSOCacheEntry_name.70 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [400 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 1541521, ; hash 0x178591, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 20489825, ; hash 0x138a661, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 42639949, ; hash 0x28aa24d, from name: System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 62384850, ; hash 0x3b7ead2, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 64635142, ; hash 0x3da4106, from name: Microsoft.CognitiveServices.Speech.extension.audio.sys.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 68219467, ; hash 0x410f24b, from name: System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 68258583, ; hash 0x4118b17, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 88243405, ; hash 0x5427ccd, from name: System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 94620481, ; hash 0x5a3cb41, from name: aot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 117431740, ; hash 0x6ffddbc, from name: System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 152360278, ; hash 0x914d556, from name: libaot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 154543565, ; hash 0x93625cd, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 169564815, ; hash 0xa1b5a8f, from name: libMicrosoft.CognitiveServices.Speech.extension.kws
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 178651795, ; hash 0xaa60293, from name: libaot-System.Diagnostics.Tracing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 187781285, ; hash 0xb3150a5, from name: aot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 197501317, ; hash 0xbc5a185, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 205061960, ; hash 0xc38ff48, from name: System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 206071461, ; hash 0xc4866a5, from name: aot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 229294244, ; hash 0xdaac0a4, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 231913179, ; hash 0xdd2b6db, from name: libaot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 246610117, ; hash 0xeb2f8c5, from name: System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 246921316, ; hash 0xeb7b864, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 270150149, ; hash 0x101a2a05, from name: System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 271750801, ; hash 0x10329691, from name: libaot-System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 274845747, ; hash 0x1061d033, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 291348661, ; hash 0x115da0b5, from name: aot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 292529153, ; hash 0x116fa401, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 300158802, ; hash 0x11e40f52, from name: aot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 321003452, ; hash 0x13221fbc, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 334172448, ; hash 0x13eb1120, from name: aot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 338267972, ; hash 0x14298f44, from name: aot-System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 343631732, ; hash 0x147b6774, from name: aot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 359463689, ; hash 0x156cfb09, from name: libaot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 412333082, ; hash 0x1893b41a, from name: System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 442565967, ; hash 0x1a61054f, from name: System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 451504562, ; hash 0x1ae969b2, from name: System.Security.Cryptography.X509Certificates
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 451696200, ; hash 0x1aec5648, from name: libaot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 459124319, ; hash 0x1b5dae5f, from name: Microsoft.CognitiveServices.Speech.csharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 485463106, ; hash 0x1cef9442, from name: Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 498788369, ; hash 0x1dbae811, from name: System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 500609955, ; hash 0x1dd6b3a3, from name: System.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 553863972, ; hash 0x21034b24, from name: aot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 554840301, ; hash 0x211230ed, from name: aot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 584914887, ; hash 0x22dd17c7, from name: aot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 585286925, ; hash 0x22e2c50d, from name: libaot-MicroTranslator.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 592553766, ; hash 0x2351a726, from name: libaot-System.Diagnostics.Tracing
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 597488943, ; hash 0x239cf52f, from name: aot-Microsoft.Identity.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 613668793, ; hash 0x2493d7b9, from name: System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 622561209, ; hash 0x251b87b9, from name: aot-System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 643988587, ; hash 0x26627c6b, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 657767393, ; hash 0x2734bbe1, from name: aot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 663517072, ; hash 0x278c7790, from name: Xamarin.AndroidX.VersionedParcelable
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 668577687, ; hash 0x27d9af97, from name: aot-System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 672442732, ; hash 0x2814a96c, from name: System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 675936804, ; hash 0x2849fa24, from name: System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 678285299, ; hash 0x286dcff3, from name: Microsoft.CognitiveServices.Speech.extension.kws
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 679655364, ; hash 0x2882b7c4, from name: aot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 695310551, ; hash 0x297198d7, from name: libMicrosoft.CognitiveServices.Speech.core.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 725055421, ; hash 0x2b3777bd, from name: libaot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 748366034, ; hash 0x2c9b28d2, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 759454413, ; hash 0x2d445acd, from name: System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 772696399, ; hash 0x2e0e694f, from name: aot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 775507847, ; hash 0x2e394f87, from name: System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 776241880, ; hash 0x2e4482d8, from name: aot-System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 789074706, ; hash 0x2f085312, from name: aot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 804715423, ; hash 0x2ff6fb9f, from name: System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 806746267, ; hash 0x3015f89b, from name: aot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 837478634, ; hash 0x31eae8ea, from name: libaot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 838150214, ; hash 0x31f52846, from name: libaot-Microsoft.CognitiveServices.Speech.csharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 845614355, ; hash 0x32670d13, from name: aot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 846646212, ; hash 0x3276cbc4, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 854961858, ; hash 0x32f5aec2, from name: libaot-System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 855129724, ; hash 0x32f83e7c, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 855910803, ; hash 0x33042993, from name: aot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 870587408, ; hash 0x33e41c10, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 874318146, ; hash 0x341d0942, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 876853269, ; hash 0x3443b815, from name: libaot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 885184054, ; hash 0x34c2d636, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 907714710, ; hash 0x361aa096, from name: libaot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 912034612, ; hash 0x365c8b34, from name: aot-MicroTranslator.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 940742254, ; hash 0x3812966e, from name: libaot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 950134675, ; hash 0x38a1e793, from name: libaot-System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 955402788, ; hash 0x38f24a24, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 965570903, ; hash 0x398d7157, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 975236339, ; hash 0x3a20ecf3, from name: System.Diagnostics.Tracing
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 975874589, ; hash 0x3a2aaa1d, from name: System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 983724495, ; hash 0x3aa271cf, from name: libaot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 987485029, ; hash 0x3adbd365, from name: libMicrosoft.CognitiveServices.Speech.extension.kws.ort
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 991024368, ; hash 0x3b11d4f0, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 992239438, ; hash 0x3b245f4e, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 1000172987, ; hash 0x3b9d6dbb, from name: libaot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 1000318620, ; hash 0x3b9fa69c, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 1019214401, ; hash 0x3cbffa41, from name: System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 1070600820, ; hash 0x3fd01274, from name: Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 1076071578, ; hash 0x40238c9a, from name: libaot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 1082857460, ; hash 0x408b17f4, from name: System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 1096416483, ; hash 0x4159fce3, from name: libaot-Microsoft.Identity.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 1098259244, ; hash 0x41761b2c, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 1107286201, ; hash 0x41ffd8b9, from name: libaot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 1116585629, ; hash 0x428dbe9d, from name: aot-System.Diagnostics.Tracing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 1158083819, ; hash 0x4506f4eb, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 1163002600, ; hash 0x455202e8, from name: libaot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 1166903420, ; hash 0x458d887c, from name: System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 1168283859, ; hash 0x45a298d3, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 1197858586, ; hash 0x4765df1a, from name: libaot-System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 1221399229, ; hash 0x48cd12bd, from name: netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 1239876156, ; hash 0x49e7023c, from name: libaot-System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 1248505390, ; hash 0x4a6aae2e, from name: libaot-System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 1270657563, ; hash 0x4bbcb21b, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 1271014665, ; hash 0x4bc22509, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 1279652645, ; hash 0x4c45f325, from name: libaot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 1285465351, ; hash 0x4c9ea507, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 1303476924, ; hash 0x4db17abc, from name: libaot-System.Security.Cryptography.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 1309188875, ; hash 0x4e08a30b, from name: System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 1315991122, ; hash 0x4e706e52, from name: libaot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 1324164729, ; hash 0x4eed2679, from name: System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 1326422064, ; hash 0x4f0f9830, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 1330538025, ; hash 0x4f4e6629, from name: libaot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 1351248141, ; hash 0x508a690d, from name: libaot-System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 1364629429, ; hash 0x515697b5, from name: System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 1369565496, ; hash 0x51a1e938, from name: System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 1375890354, ; hash 0x52026bb2, from name: libMicrosoft.CognitiveServices.Speech.extension.lu
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 1376113003, ; hash 0x5205d16b, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 1376238345, ; hash 0x5207bb09, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 1383009688, ; hash 0x526f0d98, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 1383267250, ; hash 0x5272fbb2, from name: aot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 1386166540, ; hash 0x529f390c, from name: libaot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 1395919151, ; hash 0x5334092f, from name: libaot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 1398864029, ; hash 0x5360f89d, from name: System.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 1401968973, ; hash 0x5390594d, from name: System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 1443565528, ; hash 0x560b0fd8, from name: aot-System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 1445980684, ; hash 0x562fea0c, from name: System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 1450763449, ; hash 0x5678e4b9, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 1457035958, ; hash 0x56d89ab6, from name: libaot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 1457202274, ; hash 0x56db2462, from name: aot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 1479771757, ; hash 0x5833866d, from name: System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 1482974588, ; hash 0x5864657c, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 1483886350, ; hash 0x58724f0e, from name: System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 1486731907, ; hash 0x589dba83, from name: System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 1503765866, ; hash 0x59a1a56a, from name: aot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 1505467903, ; hash 0x59bb9dff, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 1518218766, ; hash 0x5a7e2e0e, from name: libaot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 1534781407, ; hash 0x5b7ae7df, from name: aot-Microsoft.Identity.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 1536876128, ; hash 0x5b9ade60, from name: libSystem.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 1540666863, ; hash 0x5bd4b5ef, from name: aot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 1551413141, ; hash 0x5c78af95, from name: libaot-System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 1566308565, ; hash 0x5d5bf8d5, from name: System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 1636331626, ; hash 0x6188706a, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 1637436415, ; hash 0x61994bff, from name: aot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 1639986890, ; hash 0x61c036ca, from name: System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 1643369834, ; hash 0x61f3d56a, from name: aot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 1651622786, ; hash 0x6271c382, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 1657153582, ; hash 0x62c6282e, from name: System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 1679769178, ; hash 0x641f3e5a, from name: System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 1736440286, ; hash 0x677ff9de, from name: aot-Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 1740020094, ; hash 0x67b6997e, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 1746885852, ; hash 0x681f5cdc, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 1756251935, ; hash 0x68ae471f, from name: aot-System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 1767223855, ; hash 0x6955b22f, from name: Microsoft.CognitiveServices.Speech.extension.kws.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 1770694025, ; hash 0x698aa589, from name: libaot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 1786790806, ; hash 0x6a804396, from name: libaot-System.Reflection.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 1800081898, ; hash 0x6b4b11ea, from name: aot-System.Private.DataContractSerialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 1803644299, ; hash 0x6b816d8b, from name: System.Diagnostics.Tracing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 1810141077, ; hash 0x6be48f95, from name: aot-Microsoft.CognitiveServices.Speech.csharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 1824175904, ; hash 0x6cbab720, from name: System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 1824722060, ; hash 0x6cc30c8c, from name: System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 1856510251, ; hash 0x6ea8192b, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 1858542181, ; hash 0x6ec71a65, from name: System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 1870277092, ; hash 0x6f7a29e4, from name: System.Reflection.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 1883618565, ; hash 0x7045bd05, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 1900739026, ; hash 0x714af9d2, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 1902824622, ; hash 0x716accae, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 1911147258, ; hash 0x71e9cafa, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 1915179509, ; hash 0x722751f5, from name: System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 1917270479, ; hash 0x724739cf, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 1939226026, ; hash 0x73963daa, from name: aot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 1939592360, ; hash 0x739bd4a8, from name: System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 1945162877, ; hash 0x73f0d47d, from name: libMicrosoft.CognitiveServices.Speech.extension.audio.sys.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 1953900240, ; hash 0x747626d0, from name: aot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 1954803200, ; hash 0x7483ee00, from name: libaot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 1959705688, ; hash 0x74cebc58, from name: System.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 1961541945, ; hash 0x74eac139, from name: aot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 1970157169, ; hash 0x756e3671, from name: System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 1971847110, ; hash 0x7587ffc6, from name: aot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 1975492760, ; hash 0x75bfa098, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 1998620087, ; hash 0x772085b7, from name: libaot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 2030785657, ; hash 0x790b5479, from name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 2043472270, ; hash 0x79cce98e, from name: aot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 2044108986, ; hash 0x79d6a0ba, from name: libSystem.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 2045470958, ; hash 0x79eb68ee, from name: System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 2046194820, ; hash 0x79f67484, from name: libaot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 2054923148, ; hash 0x7a7ba38c, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 2070888862, ; hash 0x7b6f419e, from name: System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 2072777569, ; hash 0x7b8c1361, from name: System.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 2082659839, ; hash 0x7c22ddff, from name: Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 2093038021, ; hash 0x7cc139c5, from name: libMicrosoft.CognitiveServices.Speech.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 2094311079, ; hash 0x7cd4a6a7, from name: aot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 2100120213, ; hash 0x7d2d4a95, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 2101192894, ; hash 0x7d3da8be, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 2115594265, ; hash 0x7e196819, from name: aot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 2119570579, ; hash 0x7e561493, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 2127167465, ; hash 0x7ec9ffe9, from name: System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 2142473426, ; hash 0x7fb38cd2, from name: System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 2149461079, ; hash 0x801e2c57, from name: aot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 2167720450, ; hash 0x8134ca02, from name: aot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 2170173082, ; hash 0x815a369a, from name: libaot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 2172943413, ; hash 0x81847c35, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 2201231467, ; hash 0x8334206b, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 2203491070, ; hash 0x83569afe, from name: libaot-System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 2205453355, ; hash 0x83748c2b, from name: libaot-Xamarin.AndroidX.VersionedParcelable
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 2212031953, ; hash 0x83d8edd1, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 2219657146, ; hash 0x844d47ba, from name: aot-Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 2223531549, ; hash 0x8488661d, from name: libaot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 2225134671, ; hash 0x84a0dc4f, from name: libaot-System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 2234028433, ; hash 0x85289191, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 2254027380, ; hash 0x8659ba74, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 2262974896, ; hash 0x86e241b0, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 2279498149, ; hash 0x87de61a5, from name: libaot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 2288360936, ; hash 0x88659de8, from name: libaot-Microsoft.Identity.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 2300115772, ; hash 0x8918fb3c, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 2315984125, ; hash 0x8a0b1cfd, from name: aot-System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 2323667891, ; hash 0x8a805bb3, from name: libaot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 2327830411, ; hash 0x8abfdf8b, from name: System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 2344356833, ; hash 0x8bbc0be1, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 2353062107, ; hash 0x8c40e0db, from name: System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 2362663635, ; hash 0x8cd362d3, from name: libaot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 2378197308, ; hash 0x8dc0693c, from name: libMicrosoft.CognitiveServices.Speech.extension.kws.ort.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 2389733863, ; hash 0x8e7071e7, from name: aot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 2399301424, ; hash 0x8f026f30, from name: libaot-System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 2406593473, ; hash 0x8f71b3c1, from name: libaot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 2408375621, ; hash 0x8f8ce545, from name: System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 2413009846, ; hash 0x8fd39bb6, from name: Microsoft.IdentityModel.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 2432891663, ; hash 0x9102fb0f, from name: aot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 2438158395, ; hash 0x9153583b, from name: Microsoft.CognitiveServices.Speech.extension.audio.sys
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 2448201744, ; hash 0x91ec9810, from name: System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 2452809944, ; hash 0x9232e8d8, from name: aot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 2458563039, ; hash 0x928ab1df, from name: System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 2473124778, ; hash 0x9368e3aa, from name: System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 2477279789, ; hash 0x93a84a2d, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 2485587657, ; hash 0x94270ec9, from name: aot-System.Reflection.Emit.Lightweight
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 2496112763, ; hash 0x94c7a87b, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 2531051056, ; hash 0x96dcc630, from name: libaot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 2546044432, ; hash 0x97c18e10, from name: aot-System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 2551838164, ; hash 0x9819f5d4, from name: MicroTranslator.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 2562349572, ; hash 0x98ba5a04, from name: Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 2573833800, ; hash 0x99699648, from name: Microsoft.CognitiveServices.Speech.extension.kws.ort.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 2578174356, ; hash 0x99abd194, from name: System.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 2579183305, ; hash 0x99bb36c9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 2580278470, ; hash 0x99cbecc6, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 2583342705, ; hash 0x99faae71, from name: System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 2584814180, ; hash 0x9a112264, from name: libaot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 2586467844, ; hash 0x9a2a5e04, from name: aot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 2596751594, ; hash 0x9ac748ea, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 2620018659, ; hash 0x9c2a4fe3, from name: System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 2624194593, ; hash 0x9c6a0821, from name: libMicrosoft.CognitiveServices.Speech.extension.audio.sys
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 2639209874, ; hash 0x9d4f2592, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 2646943518, ; hash 0x9dc5271e, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 2658598962, ; hash 0x9e770032, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 2663219906, ; hash 0x9ebd82c2, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 2665622720, ; hash 0x9ee22cc0, from name: System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 2702877437, ; hash 0xa11aa2fd, from name: aot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 2705630008, ; hash 0xa144a338, from name: aot-System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 2709717763, ; hash 0xa1830303, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 2717744543, ; hash 0xa1fd7d9f, from name: System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 2723718058, ; hash 0xa258a3aa, from name: Microsoft.CognitiveServices.Speech.csharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 2727849096, ; hash 0xa297ac88, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 2731646376, ; hash 0xa2d19da8, from name: aot-System.Security.Claims
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 2738408665, ; hash 0xa338ccd9, from name: Microsoft.Identity.Client.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 2740051746, ; hash 0xa351df22, from name: Microsoft.Identity.Client
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 2746397398, ; hash 0xa3b2b2d6, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 2767247566, ; hash 0xa4f0d8ce, from name: libaot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 2796259437, ; hash 0xa6ab886d, from name: System.Security.Cryptography.Algorithms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 2831113488, ; hash 0xa8bf5d10, from name: libaot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 2843443372, ; hash 0xa97b80ac, from name: aot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 2857417815, ; hash 0xaa50bc57, from name: aot-System.Security.Claims.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 2882500561, ; hash 0xabcf77d1, from name: System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 2905256141, ; hash 0xad2ab0cd, from name: System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 2909740682, ; hash 0xad6f1e8a, from name: System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 2911927123, ; hash 0xad907b53, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 2938740861, ; hash 0xaf29a07d, from name: libSystem.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 2945162751, ; hash 0xaf8b9dff, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 2950894636, ; hash 0xafe3142c, from name: libSystem.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 2985735645, ; hash 0xb1f6b5dd, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 2994111342, ; hash 0xb276836e, from name: aot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 3002033339, ; hash 0xb2ef64bb, from name: aot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 3011708098, ; hash 0xb38304c2, from name: aot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 3024529297, ; hash 0xb446a791, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 3031803842, ; hash 0xb4b5a7c2, from name: MicroTranslator
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 3051226419, ; hash 0xb5de0533, from name: System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 3056290812, ; hash 0xb62b4bfc, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 3057718947, ; hash 0xb64116a3, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 3058175140, ; hash 0xb6480ca4, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 3059793426, ; hash 0xb660be12, from name: System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 3061710381, ; hash 0xb67dfe2d, from name: aot-System.Security.Cryptography.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 3073434459, ; hash 0xb730e35b, from name: aot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 3077614056, ; hash 0xb770a9e8, from name: aot-Xamarin.AndroidX.VersionedParcelable
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 3079573064, ; hash 0xb78e8e48, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 3097746105, ; hash 0xb8a3dab9, from name: System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 3103600923, ; hash 0xb8fd311b, from name: System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 3104224272, ; hash 0xb906b410, from name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 3119652235, ; hash 0xb9f21d8b, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 3122244214, ; hash 0xba19aa76, from name: aot-System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 3126917188, ; hash 0xba60f844, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 3127835167, ; hash 0xba6efa1f, from name: System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 3129695436, ; hash 0xba8b5ccc, from name: libaot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 3137986923, ; hash 0xbb09e16b, from name: libaot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 3188889127, ; hash 0xbe129627, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 3212987759, ; hash 0xbf824d6f, from name: aot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 3220365878, ; hash 0xbff2e236, from name: System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 3240981972, ; hash 0xc12d75d4, from name: aot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 3243272429, ; hash 0xc15068ed, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 3259652464, ; hash 0xc24a5970, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 3272636642, ; hash 0xc31078e2, from name: libaot-System.Private.DataContractSerialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 3274854694, ; hash 0xc3325126, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 3275660490, ; hash 0xc33e9cca, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 3294137703, ; hash 0xc4588d67, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 3320200080, ; hash 0xc5e63b90, from name: System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 3323143848, ; hash 0xc61326a8, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 3362522851, ; hash 0xc86c06e3, from name: Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 3366347497, ; hash 0xc8a662e9, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 3396494892, ; hash 0xca72662c, from name: System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 3416727221, ; hash 0xcba71eb5, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 3422266863, ; hash 0xcbfba5ef, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 3425724130, ; hash 0xcc3066e2, from name: Microsoft.CognitiveServices.Speech.core.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 3430777524, ; hash 0xcc7d82b4, from name: netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 3433304539, ; hash 0xcca411db, from name: libaot-Microsoft.CognitiveServices.Speech.csharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 3445624513, ; hash 0xcd600ec1, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 3448212429, ; hash 0xcd878bcd, from name: aot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 3455619283, ; hash 0xcdf890d3, from name: aot-System.Security.Cryptography.Algorithms
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 3476120550, ; hash 0xcf3163e6, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 3485228309, ; hash 0xcfbc5d15, from name: libMicrosoft.CognitiveServices.Speech.extension.lu.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 3490240475, ; hash 0xd008d7db, from name: aot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 3495560389, ; hash 0xd05a04c5, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 3509114376, ; hash 0xd128d608, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 3541483528, ; hash 0xd316c008, from name: System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 3547939516, ; hash 0xd37942bc, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 3554143940, ; hash 0xd3d7eec4, from name: libaot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 3557887367, ; hash 0xd4110d87, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 3610022767, ; hash 0xd72c936f, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 3617535095, ; hash 0xd79f3477, from name: libaot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 3623194064, ; hash 0xd7f58dd0, from name: libaot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 3624195450, ; hash 0xd804d57a, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 3628358221, ; hash 0xd8445a4d, from name: System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 3636393175, ; hash 0xd8bef4d7, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 3640930543, ; hash 0xd90430ef, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 3647597548, ; hash 0xd969ebec, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 3648098342, ; hash 0xd9719026, from name: libaot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 3689962629, ; hash 0xdbf05c85, from name: System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 3691770169, ; hash 0xdc0bf139, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 3705667778, ; hash 0xdce000c2, from name: libaot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 3712627230, ; hash 0xdd4a321e, from name: aot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 3734123117, ; hash 0xde92326d, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 3790421216, ; hash 0xe1ed3ce0, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 3792276235, ; hash 0xe2098b0b, from name: System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 3808105303, ; hash 0xe2fb1357, from name: libaot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 3817984437, ; hash 0xe391d1b5, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 3824070419, ; hash 0xe3eeaf13, from name: aot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 3827730753, ; hash 0xe4268941, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 3831263026, ; hash 0xe45c6f32, from name: System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 3840592928, ; hash 0xe4eacc20, from name: Microsoft.CognitiveServices.Speech.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 3882710139, ; hash 0xe76d747b, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 3891366301, ; hash 0xe7f1899d, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 3903136898, ; hash 0xe8a52482, from name: Microsoft.CognitiveServices.Speech.extension.kws.ort
		i8 0, ; ignore
		i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 3907762321, ; hash 0xe8ebb891, from name: aot-MicroTranslator
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 3912102720, ; hash 0xe92df340, from name: libaot-MicroTranslator
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 3915264716, ; hash 0xe95e32cc, from name: aot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 3928044579, ; hash 0xea213423, from name: System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 3934808307, ; hash 0xea8868f3, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 3958820853, ; hash 0xebf6cff5, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 3961462390, ; hash 0xec1f1e76, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 3979792628, ; hash 0xed36d0f4, from name: aot-Microsoft.CognitiveServices.Speech.csharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 3980510446, ; hash 0xed41c4ee, from name: aot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 3983604604, ; hash 0xed70fb7c, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 3985532715, ; hash 0xed8e672b, from name: Microsoft.CognitiveServices.Speech.extension.lu.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 3992412609, ; hash 0xedf761c1, from name: System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 3996561484, ; hash 0xee36b04c, from name: aot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 3999843836, ; hash 0xee68c5fc, from name: libaot-Microsoft.IdentityModel.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 4024005801, ; hash 0xefd974a9, from name: libaot-System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 4042557652, ; hash 0xf0f488d4, from name: libaot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 4054681211, ; hash 0xf1ad867b, from name: System.Reflection.Emit.ILGeneration
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 4055633767, ; hash 0xf1bc0f67, from name: aot-System.Diagnostics.Tracing
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 4063454328, ; hash 0xf2336478, from name: aot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 4100113165, ; hash 0xf462c30d, from name: System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 4112220824, ; hash 0xf51b8298, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 4124040645, ; hash 0xf5cfddc5, from name: aot-System.Security.Cryptography.X509Certificates.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 4124759570, ; hash 0xf5dad612, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 4125976845, ; hash 0xf5ed690d, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 4150600623, ; hash 0xf76523af, from name: Microsoft.CognitiveServices.Speech.extension.lu
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 4154531413, ; hash 0xf7a11e55, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 4160378743, ; hash 0xf7fa5777, from name: libMicrosoft.CognitiveServices.Speech.extension.kws.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 4161309507, ; hash 0xf8088b43, from name: libaot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 4168181461, ; hash 0xf87166d5, from name: libaot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 4169082996, ; hash 0xf87f2874, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 4181436372, ; hash 0xf93ba7d4, from name: System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 4185748872, ; hash 0xf97d7588, from name: libaot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 4194414906, ; hash 0xfa01b13a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 4254738242, ; hash 0xfd9a2742, from name: aot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 4264044254, ; hash 0xfe2826de, from name: libaot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 4274976490, ; hash 0xfecef6ea, from name: System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 4288835934, ; hash 0xffa2715e, from name: System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array


; Bundled assembly name buffers, all 0 bytes long
@bundled_assemblies = local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 4


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [60 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 4

; Assembly store data
@assembly_stores = local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/release/7.0.2xx @ 58a54aef5213e50e3e59008e244a64896fe971b6"}
