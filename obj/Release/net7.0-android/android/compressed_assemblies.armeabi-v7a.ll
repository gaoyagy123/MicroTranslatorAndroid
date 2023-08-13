; ModuleID = 'obj\Release\net7.0-android\android\compressed_assemblies.armeabi-v7a.ll'
source_filename = "obj\Release\net7.0-android\android\compressed_assemblies.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.CompressedAssemblyDescriptor = type {
	i32,; uint32_t uncompressed_file_size
	i8,; bool loaded
	i8*; uint8_t* data
}

%struct.CompressedAssemblies = type {
	i32,; uint32_t count
	%struct.CompressedAssemblyDescriptor*; CompressedAssemblyDescriptor* descriptors
}
@__CompressedAssemblyDescriptor_data_0 = internal global [144896 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_1 = internal global [62464 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_2 = internal global [249344 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_3 = internal global [268720 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_4 = internal global [1643976 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_5 = internal global [18824 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_6 = internal global [635392 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_7 = internal global [712464 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_8 = internal global [29696 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_9 = internal global [17920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_10 = internal global [12288 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_11 = internal global [11776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_12 = internal global [124928 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_13 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_14 = internal global [10752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_15 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_16 = internal global [34816 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_17 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_18 = internal global [43520 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_19 = internal global [31232 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_20 = internal global [416768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_21 = internal global [40448 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_22 = internal global [128512 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_23 = internal global [34304 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_24 = internal global [6656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_25 = internal global [13312 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_26 = internal global [401920 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_27 = internal global [53248 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_28 = internal global [1334784 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_29 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_30 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_31 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_32 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_33 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_34 = internal global [7680 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_35 = internal global [10752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_36 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_37 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_38 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_39 = internal global [205824 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_40 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_41 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_42 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_43 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_44 = internal global [5120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_45 = internal global [4608 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_46 = internal global [143360 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_47 = internal global [6656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_48 = internal global [20992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_49 = internal global [24576 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_50 = internal global [517120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_51 = internal global [19968 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_52 = internal global [1836544 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_53 = internal global [74240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_54 = internal global [90624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_55 = internal global [6656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_56 = internal global [11776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_57 = internal global [289280 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_58 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_59 = internal global [20992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_60 = internal global [24064 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_61 = internal global [517120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_62 = internal global [19968 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_63 = internal global [1823744 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_64 = internal global [74752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_65 = internal global [90624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_66 = internal global [6656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_67 = internal global [11776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_68 = internal global [288768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_69 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_70 = internal global [8192 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_71 = internal global [20992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_72 = internal global [24064 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_73 = internal global [517120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_74 = internal global [19968 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_75 = internal global [1823744 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_76 = internal global [74752 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_77 = internal global [90624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_78 = internal global [6656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_79 = internal global [11776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_80 = internal global [288768 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_81 = internal global [4096 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_82 = internal global [20992 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_83 = internal global [25088 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_84 = internal global [517120 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_85 = internal global [19968 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_86 = internal global [1851392 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_87 = internal global [74240 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_88 = internal global [90624 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_89 = internal global [6656 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_90 = internal global [11776 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_91 = internal global [289280 x i8] zeroinitializer, align 1
@__CompressedAssemblyDescriptor_data_92 = internal global [4096 x i8] zeroinitializer, align 1


; Compressed assembly data storage
@compressed_assembly_descriptors = internal global [93 x %struct.CompressedAssemblyDescriptor] [
	; 0
	%struct.CompressedAssemblyDescriptor {
		i32 144896, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([144896 x i8], [144896 x i8]* @__CompressedAssemblyDescriptor_data_0, i32 0, i32 0); data
	}, 
	; 1
	%struct.CompressedAssemblyDescriptor {
		i32 62464, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([62464 x i8], [62464 x i8]* @__CompressedAssemblyDescriptor_data_1, i32 0, i32 0); data
	}, 
	; 2
	%struct.CompressedAssemblyDescriptor {
		i32 249344, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([249344 x i8], [249344 x i8]* @__CompressedAssemblyDescriptor_data_2, i32 0, i32 0); data
	}, 
	; 3
	%struct.CompressedAssemblyDescriptor {
		i32 268720, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([268720 x i8], [268720 x i8]* @__CompressedAssemblyDescriptor_data_3, i32 0, i32 0); data
	}, 
	; 4
	%struct.CompressedAssemblyDescriptor {
		i32 1643976, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1643976 x i8], [1643976 x i8]* @__CompressedAssemblyDescriptor_data_4, i32 0, i32 0); data
	}, 
	; 5
	%struct.CompressedAssemblyDescriptor {
		i32 18824, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([18824 x i8], [18824 x i8]* @__CompressedAssemblyDescriptor_data_5, i32 0, i32 0); data
	}, 
	; 6
	%struct.CompressedAssemblyDescriptor {
		i32 635392, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([635392 x i8], [635392 x i8]* @__CompressedAssemblyDescriptor_data_6, i32 0, i32 0); data
	}, 
	; 7
	%struct.CompressedAssemblyDescriptor {
		i32 712464, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([712464 x i8], [712464 x i8]* @__CompressedAssemblyDescriptor_data_7, i32 0, i32 0); data
	}, 
	; 8
	%struct.CompressedAssemblyDescriptor {
		i32 29696, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([29696 x i8], [29696 x i8]* @__CompressedAssemblyDescriptor_data_8, i32 0, i32 0); data
	}, 
	; 9
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([17920 x i8], [17920 x i8]* @__CompressedAssemblyDescriptor_data_9, i32 0, i32 0); data
	}, 
	; 10
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([12288 x i8], [12288 x i8]* @__CompressedAssemblyDescriptor_data_10, i32 0, i32 0); data
	}, 
	; 11
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11776 x i8], [11776 x i8]* @__CompressedAssemblyDescriptor_data_11, i32 0, i32 0); data
	}, 
	; 12
	%struct.CompressedAssemblyDescriptor {
		i32 124928, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([124928 x i8], [124928 x i8]* @__CompressedAssemblyDescriptor_data_12, i32 0, i32 0); data
	}, 
	; 13
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_13, i32 0, i32 0); data
	}, 
	; 14
	%struct.CompressedAssemblyDescriptor {
		i32 10752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([10752 x i8], [10752 x i8]* @__CompressedAssemblyDescriptor_data_14, i32 0, i32 0); data
	}, 
	; 15
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_15, i32 0, i32 0); data
	}, 
	; 16
	%struct.CompressedAssemblyDescriptor {
		i32 34816, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([34816 x i8], [34816 x i8]* @__CompressedAssemblyDescriptor_data_16, i32 0, i32 0); data
	}, 
	; 17
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_17, i32 0, i32 0); data
	}, 
	; 18
	%struct.CompressedAssemblyDescriptor {
		i32 43520, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([43520 x i8], [43520 x i8]* @__CompressedAssemblyDescriptor_data_18, i32 0, i32 0); data
	}, 
	; 19
	%struct.CompressedAssemblyDescriptor {
		i32 31232, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([31232 x i8], [31232 x i8]* @__CompressedAssemblyDescriptor_data_19, i32 0, i32 0); data
	}, 
	; 20
	%struct.CompressedAssemblyDescriptor {
		i32 416768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([416768 x i8], [416768 x i8]* @__CompressedAssemblyDescriptor_data_20, i32 0, i32 0); data
	}, 
	; 21
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([40448 x i8], [40448 x i8]* @__CompressedAssemblyDescriptor_data_21, i32 0, i32 0); data
	}, 
	; 22
	%struct.CompressedAssemblyDescriptor {
		i32 128512, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([128512 x i8], [128512 x i8]* @__CompressedAssemblyDescriptor_data_22, i32 0, i32 0); data
	}, 
	; 23
	%struct.CompressedAssemblyDescriptor {
		i32 34304, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([34304 x i8], [34304 x i8]* @__CompressedAssemblyDescriptor_data_23, i32 0, i32 0); data
	}, 
	; 24
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6656 x i8], [6656 x i8]* @__CompressedAssemblyDescriptor_data_24, i32 0, i32 0); data
	}, 
	; 25
	%struct.CompressedAssemblyDescriptor {
		i32 13312, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([13312 x i8], [13312 x i8]* @__CompressedAssemblyDescriptor_data_25, i32 0, i32 0); data
	}, 
	; 26
	%struct.CompressedAssemblyDescriptor {
		i32 401920, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([401920 x i8], [401920 x i8]* @__CompressedAssemblyDescriptor_data_26, i32 0, i32 0); data
	}, 
	; 27
	%struct.CompressedAssemblyDescriptor {
		i32 53248, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([53248 x i8], [53248 x i8]* @__CompressedAssemblyDescriptor_data_27, i32 0, i32 0); data
	}, 
	; 28
	%struct.CompressedAssemblyDescriptor {
		i32 1334784, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1334784 x i8], [1334784 x i8]* @__CompressedAssemblyDescriptor_data_28, i32 0, i32 0); data
	}, 
	; 29
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_29, i32 0, i32 0); data
	}, 
	; 30
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_30, i32 0, i32 0); data
	}, 
	; 31
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_31, i32 0, i32 0); data
	}, 
	; 32
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_32, i32 0, i32 0); data
	}, 
	; 33
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_33, i32 0, i32 0); data
	}, 
	; 34
	%struct.CompressedAssemblyDescriptor {
		i32 7680, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([7680 x i8], [7680 x i8]* @__CompressedAssemblyDescriptor_data_34, i32 0, i32 0); data
	}, 
	; 35
	%struct.CompressedAssemblyDescriptor {
		i32 10752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([10752 x i8], [10752 x i8]* @__CompressedAssemblyDescriptor_data_35, i32 0, i32 0); data
	}, 
	; 36
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_36, i32 0, i32 0); data
	}, 
	; 37
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_37, i32 0, i32 0); data
	}, 
	; 38
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_38, i32 0, i32 0); data
	}, 
	; 39
	%struct.CompressedAssemblyDescriptor {
		i32 205824, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([205824 x i8], [205824 x i8]* @__CompressedAssemblyDescriptor_data_39, i32 0, i32 0); data
	}, 
	; 40
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_40, i32 0, i32 0); data
	}, 
	; 41
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_41, i32 0, i32 0); data
	}, 
	; 42
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_42, i32 0, i32 0); data
	}, 
	; 43
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_43, i32 0, i32 0); data
	}, 
	; 44
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([5120 x i8], [5120 x i8]* @__CompressedAssemblyDescriptor_data_44, i32 0, i32 0); data
	}, 
	; 45
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4608 x i8], [4608 x i8]* @__CompressedAssemblyDescriptor_data_45, i32 0, i32 0); data
	}, 
	; 46
	%struct.CompressedAssemblyDescriptor {
		i32 143360, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([143360 x i8], [143360 x i8]* @__CompressedAssemblyDescriptor_data_46, i32 0, i32 0); data
	}, 
	; 47
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6656 x i8], [6656 x i8]* @__CompressedAssemblyDescriptor_data_47, i32 0, i32 0); data
	}, 
	; 48
	%struct.CompressedAssemblyDescriptor {
		i32 20992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([20992 x i8], [20992 x i8]* @__CompressedAssemblyDescriptor_data_48, i32 0, i32 0); data
	}, 
	; 49
	%struct.CompressedAssemblyDescriptor {
		i32 24576, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([24576 x i8], [24576 x i8]* @__CompressedAssemblyDescriptor_data_49, i32 0, i32 0); data
	}, 
	; 50
	%struct.CompressedAssemblyDescriptor {
		i32 517120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([517120 x i8], [517120 x i8]* @__CompressedAssemblyDescriptor_data_50, i32 0, i32 0); data
	}, 
	; 51
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19968 x i8], [19968 x i8]* @__CompressedAssemblyDescriptor_data_51, i32 0, i32 0); data
	}, 
	; 52
	%struct.CompressedAssemblyDescriptor {
		i32 1836544, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1836544 x i8], [1836544 x i8]* @__CompressedAssemblyDescriptor_data_52, i32 0, i32 0); data
	}, 
	; 53
	%struct.CompressedAssemblyDescriptor {
		i32 74240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([74240 x i8], [74240 x i8]* @__CompressedAssemblyDescriptor_data_53, i32 0, i32 0); data
	}, 
	; 54
	%struct.CompressedAssemblyDescriptor {
		i32 90624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([90624 x i8], [90624 x i8]* @__CompressedAssemblyDescriptor_data_54, i32 0, i32 0); data
	}, 
	; 55
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6656 x i8], [6656 x i8]* @__CompressedAssemblyDescriptor_data_55, i32 0, i32 0); data
	}, 
	; 56
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11776 x i8], [11776 x i8]* @__CompressedAssemblyDescriptor_data_56, i32 0, i32 0); data
	}, 
	; 57
	%struct.CompressedAssemblyDescriptor {
		i32 289280, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([289280 x i8], [289280 x i8]* @__CompressedAssemblyDescriptor_data_57, i32 0, i32 0); data
	}, 
	; 58
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_58, i32 0, i32 0); data
	}, 
	; 59
	%struct.CompressedAssemblyDescriptor {
		i32 20992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([20992 x i8], [20992 x i8]* @__CompressedAssemblyDescriptor_data_59, i32 0, i32 0); data
	}, 
	; 60
	%struct.CompressedAssemblyDescriptor {
		i32 24064, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([24064 x i8], [24064 x i8]* @__CompressedAssemblyDescriptor_data_60, i32 0, i32 0); data
	}, 
	; 61
	%struct.CompressedAssemblyDescriptor {
		i32 517120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([517120 x i8], [517120 x i8]* @__CompressedAssemblyDescriptor_data_61, i32 0, i32 0); data
	}, 
	; 62
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19968 x i8], [19968 x i8]* @__CompressedAssemblyDescriptor_data_62, i32 0, i32 0); data
	}, 
	; 63
	%struct.CompressedAssemblyDescriptor {
		i32 1823744, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1823744 x i8], [1823744 x i8]* @__CompressedAssemblyDescriptor_data_63, i32 0, i32 0); data
	}, 
	; 64
	%struct.CompressedAssemblyDescriptor {
		i32 74752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([74752 x i8], [74752 x i8]* @__CompressedAssemblyDescriptor_data_64, i32 0, i32 0); data
	}, 
	; 65
	%struct.CompressedAssemblyDescriptor {
		i32 90624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([90624 x i8], [90624 x i8]* @__CompressedAssemblyDescriptor_data_65, i32 0, i32 0); data
	}, 
	; 66
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6656 x i8], [6656 x i8]* @__CompressedAssemblyDescriptor_data_66, i32 0, i32 0); data
	}, 
	; 67
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11776 x i8], [11776 x i8]* @__CompressedAssemblyDescriptor_data_67, i32 0, i32 0); data
	}, 
	; 68
	%struct.CompressedAssemblyDescriptor {
		i32 288768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([288768 x i8], [288768 x i8]* @__CompressedAssemblyDescriptor_data_68, i32 0, i32 0); data
	}, 
	; 69
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_69, i32 0, i32 0); data
	}, 
	; 70
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([8192 x i8], [8192 x i8]* @__CompressedAssemblyDescriptor_data_70, i32 0, i32 0); data
	}, 
	; 71
	%struct.CompressedAssemblyDescriptor {
		i32 20992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([20992 x i8], [20992 x i8]* @__CompressedAssemblyDescriptor_data_71, i32 0, i32 0); data
	}, 
	; 72
	%struct.CompressedAssemblyDescriptor {
		i32 24064, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([24064 x i8], [24064 x i8]* @__CompressedAssemblyDescriptor_data_72, i32 0, i32 0); data
	}, 
	; 73
	%struct.CompressedAssemblyDescriptor {
		i32 517120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([517120 x i8], [517120 x i8]* @__CompressedAssemblyDescriptor_data_73, i32 0, i32 0); data
	}, 
	; 74
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19968 x i8], [19968 x i8]* @__CompressedAssemblyDescriptor_data_74, i32 0, i32 0); data
	}, 
	; 75
	%struct.CompressedAssemblyDescriptor {
		i32 1823744, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1823744 x i8], [1823744 x i8]* @__CompressedAssemblyDescriptor_data_75, i32 0, i32 0); data
	}, 
	; 76
	%struct.CompressedAssemblyDescriptor {
		i32 74752, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([74752 x i8], [74752 x i8]* @__CompressedAssemblyDescriptor_data_76, i32 0, i32 0); data
	}, 
	; 77
	%struct.CompressedAssemblyDescriptor {
		i32 90624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([90624 x i8], [90624 x i8]* @__CompressedAssemblyDescriptor_data_77, i32 0, i32 0); data
	}, 
	; 78
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6656 x i8], [6656 x i8]* @__CompressedAssemblyDescriptor_data_78, i32 0, i32 0); data
	}, 
	; 79
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11776 x i8], [11776 x i8]* @__CompressedAssemblyDescriptor_data_79, i32 0, i32 0); data
	}, 
	; 80
	%struct.CompressedAssemblyDescriptor {
		i32 288768, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([288768 x i8], [288768 x i8]* @__CompressedAssemblyDescriptor_data_80, i32 0, i32 0); data
	}, 
	; 81
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_81, i32 0, i32 0); data
	}, 
	; 82
	%struct.CompressedAssemblyDescriptor {
		i32 20992, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([20992 x i8], [20992 x i8]* @__CompressedAssemblyDescriptor_data_82, i32 0, i32 0); data
	}, 
	; 83
	%struct.CompressedAssemblyDescriptor {
		i32 25088, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([25088 x i8], [25088 x i8]* @__CompressedAssemblyDescriptor_data_83, i32 0, i32 0); data
	}, 
	; 84
	%struct.CompressedAssemblyDescriptor {
		i32 517120, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([517120 x i8], [517120 x i8]* @__CompressedAssemblyDescriptor_data_84, i32 0, i32 0); data
	}, 
	; 85
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([19968 x i8], [19968 x i8]* @__CompressedAssemblyDescriptor_data_85, i32 0, i32 0); data
	}, 
	; 86
	%struct.CompressedAssemblyDescriptor {
		i32 1851392, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([1851392 x i8], [1851392 x i8]* @__CompressedAssemblyDescriptor_data_86, i32 0, i32 0); data
	}, 
	; 87
	%struct.CompressedAssemblyDescriptor {
		i32 74240, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([74240 x i8], [74240 x i8]* @__CompressedAssemblyDescriptor_data_87, i32 0, i32 0); data
	}, 
	; 88
	%struct.CompressedAssemblyDescriptor {
		i32 90624, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([90624 x i8], [90624 x i8]* @__CompressedAssemblyDescriptor_data_88, i32 0, i32 0); data
	}, 
	; 89
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([6656 x i8], [6656 x i8]* @__CompressedAssemblyDescriptor_data_89, i32 0, i32 0); data
	}, 
	; 90
	%struct.CompressedAssemblyDescriptor {
		i32 11776, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([11776 x i8], [11776 x i8]* @__CompressedAssemblyDescriptor_data_90, i32 0, i32 0); data
	}, 
	; 91
	%struct.CompressedAssemblyDescriptor {
		i32 289280, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([289280 x i8], [289280 x i8]* @__CompressedAssemblyDescriptor_data_91, i32 0, i32 0); data
	}, 
	; 92
	%struct.CompressedAssemblyDescriptor {
		i32 4096, ; uncompressed_file_size
		i8 0, ; loaded
		i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @__CompressedAssemblyDescriptor_data_92, i32 0, i32 0); data
	}
], align 4; end of 'compressed_assembly_descriptors' array


; compressed_assemblies
@compressed_assemblies = local_unnamed_addr global %struct.CompressedAssemblies {
	i32 93, ; count
	%struct.CompressedAssemblyDescriptor* getelementptr inbounds ([93 x %struct.CompressedAssemblyDescriptor], [93 x %struct.CompressedAssemblyDescriptor]* @compressed_assembly_descriptors, i32 0, i32 0); descriptors
}, align 4


!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/release/7.0.2xx @ 58a54aef5213e50e3e59008e244a64896fe971b6"}
