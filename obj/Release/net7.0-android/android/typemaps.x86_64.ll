; ModuleID = 'obj\Release\net7.0-android\android\typemaps.x86_64.ll'
source_filename = "obj\Release\net7.0-android\android\typemaps.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.TypeMapJava = type {
	i32,; uint32_t module_index
	i32,; uint32_t type_token_id
	i32; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8],; uint8_t module_uuid[16]
	i32,; uint32_t entry_count
	i32,; uint32_t duplicate_count
	%struct.TypeMapModuleEntry*,; TypeMapModuleEntry* map
	%struct.TypeMapModuleEntry*,; TypeMapModuleEntry* duplicate_map
	i8*,; char* assembly_name
	%struct.MonoImage*,; MonoImage* image
	i32,; uint32_t java_name_width
	i8*; uint8_t* java_map
}

%struct.TypeMapModuleEntry = type {
	i32,; uint32_t type_token_id
	i32; uint32_t java_map_index
}

@map_module_count = local_unnamed_addr constant i32 5, align 4

@java_type_count = local_unnamed_addr constant i32 232, align 4

; Map modules data

; module0_managed_to_java
@module0_managed_to_java = internal constant [13 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554454, ; type_token_id
		i32 214; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554455, ; type_token_id
		i32 78; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554456, ; type_token_id
		i32 119; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554457, ; type_token_id
		i32 76; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554459, ; type_token_id
		i32 41; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554460, ; type_token_id
		i32 114; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554461, ; type_token_id
		i32 181; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554462, ; type_token_id
		i32 87; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554463, ; type_token_id
		i32 212; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554465, ; type_token_id
		i32 75; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554467, ; type_token_id
		i32 6; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554468, ; type_token_id
		i32 37; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554469, ; type_token_id
		i32 94; java_map_index
	}
], align 16; end of 'module0_managed_to_java' array


; module0_managed_to_java_duplicates
@module0_managed_to_java_duplicates = internal constant [3 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554458, ; type_token_id
		i32 76; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554464, ; type_token_id
		i32 212; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554466, ; type_token_id
		i32 75; java_map_index
	}
], align 16; end of 'module0_managed_to_java_duplicates' array


; module1_managed_to_java
@module1_managed_to_java = internal constant [211 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554542, ; type_token_id
		i32 49; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554544, ; type_token_id
		i32 70; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554546, ; type_token_id
		i32 161; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554547, ; type_token_id
		i32 61; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554549, ; type_token_id
		i32 7; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554551, ; type_token_id
		i32 188; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554553, ; type_token_id
		i32 105; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554555, ; type_token_id
		i32 77; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554557, ; type_token_id
		i32 197; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554559, ; type_token_id
		i32 198; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554561, ; type_token_id
		i32 171; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554562, ; type_token_id
		i32 134; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554563, ; type_token_id
		i32 227; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554565, ; type_token_id
		i32 58; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554566, ; type_token_id
		i32 191; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554567, ; type_token_id
		i32 113; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554569, ; type_token_id
		i32 151; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554571, ; type_token_id
		i32 44; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554572, ; type_token_id
		i32 190; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554576, ; type_token_id
		i32 152; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554580, ; type_token_id
		i32 51; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554581, ; type_token_id
		i32 229; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554583, ; type_token_id
		i32 3; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554584, ; type_token_id
		i32 131; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554585, ; type_token_id
		i32 135; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554586, ; type_token_id
		i32 170; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554589, ; type_token_id
		i32 124; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554593, ; type_token_id
		i32 69; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554595, ; type_token_id
		i32 47; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554597, ; type_token_id
		i32 91; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554598, ; type_token_id
		i32 11; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554599, ; type_token_id
		i32 36; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554600, ; type_token_id
		i32 223; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554601, ; type_token_id
		i32 62; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554602, ; type_token_id
		i32 97; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554603, ; type_token_id
		i32 8; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554608, ; type_token_id
		i32 150; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554611, ; type_token_id
		i32 189; java_map_index
	}, 
	; 38
	%struct.TypeMapModuleEntry {
		i32 33554612, ; type_token_id
		i32 5; java_map_index
	}, 
	; 39
	%struct.TypeMapModuleEntry {
		i32 33554613, ; type_token_id
		i32 112; java_map_index
	}, 
	; 40
	%struct.TypeMapModuleEntry {
		i32 33554616, ; type_token_id
		i32 59; java_map_index
	}, 
	; 41
	%struct.TypeMapModuleEntry {
		i32 33554618, ; type_token_id
		i32 225; java_map_index
	}, 
	; 42
	%struct.TypeMapModuleEntry {
		i32 33554619, ; type_token_id
		i32 201; java_map_index
	}, 
	; 43
	%struct.TypeMapModuleEntry {
		i32 33554620, ; type_token_id
		i32 203; java_map_index
	}, 
	; 44
	%struct.TypeMapModuleEntry {
		i32 33554621, ; type_token_id
		i32 141; java_map_index
	}, 
	; 45
	%struct.TypeMapModuleEntry {
		i32 33554622, ; type_token_id
		i32 165; java_map_index
	}, 
	; 46
	%struct.TypeMapModuleEntry {
		i32 33554624, ; type_token_id
		i32 183; java_map_index
	}, 
	; 47
	%struct.TypeMapModuleEntry {
		i32 33554627, ; type_token_id
		i32 209; java_map_index
	}, 
	; 48
	%struct.TypeMapModuleEntry {
		i32 33554628, ; type_token_id
		i32 123; java_map_index
	}, 
	; 49
	%struct.TypeMapModuleEntry {
		i32 33554629, ; type_token_id
		i32 106; java_map_index
	}, 
	; 50
	%struct.TypeMapModuleEntry {
		i32 33554631, ; type_token_id
		i32 169; java_map_index
	}, 
	; 51
	%struct.TypeMapModuleEntry {
		i32 33554632, ; type_token_id
		i32 28; java_map_index
	}, 
	; 52
	%struct.TypeMapModuleEntry {
		i32 33554633, ; type_token_id
		i32 164; java_map_index
	}, 
	; 53
	%struct.TypeMapModuleEntry {
		i32 33554635, ; type_token_id
		i32 186; java_map_index
	}, 
	; 54
	%struct.TypeMapModuleEntry {
		i32 33554637, ; type_token_id
		i32 72; java_map_index
	}, 
	; 55
	%struct.TypeMapModuleEntry {
		i32 33554640, ; type_token_id
		i32 153; java_map_index
	}, 
	; 56
	%struct.TypeMapModuleEntry {
		i32 33554642, ; type_token_id
		i32 52; java_map_index
	}, 
	; 57
	%struct.TypeMapModuleEntry {
		i32 33554643, ; type_token_id
		i32 86; java_map_index
	}, 
	; 58
	%struct.TypeMapModuleEntry {
		i32 33554644, ; type_token_id
		i32 187; java_map_index
	}, 
	; 59
	%struct.TypeMapModuleEntry {
		i32 33554646, ; type_token_id
		i32 65; java_map_index
	}, 
	; 60
	%struct.TypeMapModuleEntry {
		i32 33554650, ; type_token_id
		i32 16; java_map_index
	}, 
	; 61
	%struct.TypeMapModuleEntry {
		i32 33554651, ; type_token_id
		i32 2; java_map_index
	}, 
	; 62
	%struct.TypeMapModuleEntry {
		i32 33554652, ; type_token_id
		i32 102; java_map_index
	}, 
	; 63
	%struct.TypeMapModuleEntry {
		i32 33554653, ; type_token_id
		i32 24; java_map_index
	}, 
	; 64
	%struct.TypeMapModuleEntry {
		i32 33554654, ; type_token_id
		i32 60; java_map_index
	}, 
	; 65
	%struct.TypeMapModuleEntry {
		i32 33554655, ; type_token_id
		i32 39; java_map_index
	}, 
	; 66
	%struct.TypeMapModuleEntry {
		i32 33554656, ; type_token_id
		i32 83; java_map_index
	}, 
	; 67
	%struct.TypeMapModuleEntry {
		i32 33554657, ; type_token_id
		i32 4; java_map_index
	}, 
	; 68
	%struct.TypeMapModuleEntry {
		i32 33554658, ; type_token_id
		i32 133; java_map_index
	}, 
	; 69
	%struct.TypeMapModuleEntry {
		i32 33554659, ; type_token_id
		i32 109; java_map_index
	}, 
	; 70
	%struct.TypeMapModuleEntry {
		i32 33554661, ; type_token_id
		i32 99; java_map_index
	}, 
	; 71
	%struct.TypeMapModuleEntry {
		i32 33554663, ; type_token_id
		i32 53; java_map_index
	}, 
	; 72
	%struct.TypeMapModuleEntry {
		i32 33554665, ; type_token_id
		i32 82; java_map_index
	}, 
	; 73
	%struct.TypeMapModuleEntry {
		i32 33554667, ; type_token_id
		i32 147; java_map_index
	}, 
	; 74
	%struct.TypeMapModuleEntry {
		i32 33554668, ; type_token_id
		i32 178; java_map_index
	}, 
	; 75
	%struct.TypeMapModuleEntry {
		i32 33554669, ; type_token_id
		i32 50; java_map_index
	}, 
	; 76
	%struct.TypeMapModuleEntry {
		i32 33554670, ; type_token_id
		i32 35; java_map_index
	}, 
	; 77
	%struct.TypeMapModuleEntry {
		i32 33554671, ; type_token_id
		i32 167; java_map_index
	}, 
	; 78
	%struct.TypeMapModuleEntry {
		i32 33554672, ; type_token_id
		i32 175; java_map_index
	}, 
	; 79
	%struct.TypeMapModuleEntry {
		i32 33554676, ; type_token_id
		i32 55; java_map_index
	}, 
	; 80
	%struct.TypeMapModuleEntry {
		i32 33554678, ; type_token_id
		i32 192; java_map_index
	}, 
	; 81
	%struct.TypeMapModuleEntry {
		i32 33554679, ; type_token_id
		i32 182; java_map_index
	}, 
	; 82
	%struct.TypeMapModuleEntry {
		i32 33554680, ; type_token_id
		i32 64; java_map_index
	}, 
	; 83
	%struct.TypeMapModuleEntry {
		i32 33554681, ; type_token_id
		i32 222; java_map_index
	}, 
	; 84
	%struct.TypeMapModuleEntry {
		i32 33554682, ; type_token_id
		i32 57; java_map_index
	}, 
	; 85
	%struct.TypeMapModuleEntry {
		i32 33554683, ; type_token_id
		i32 42; java_map_index
	}, 
	; 86
	%struct.TypeMapModuleEntry {
		i32 33554684, ; type_token_id
		i32 143; java_map_index
	}, 
	; 87
	%struct.TypeMapModuleEntry {
		i32 33554692, ; type_token_id
		i32 193; java_map_index
	}, 
	; 88
	%struct.TypeMapModuleEntry {
		i32 33554693, ; type_token_id
		i32 180; java_map_index
	}, 
	; 89
	%struct.TypeMapModuleEntry {
		i32 33554694, ; type_token_id
		i32 200; java_map_index
	}, 
	; 90
	%struct.TypeMapModuleEntry {
		i32 33554695, ; type_token_id
		i32 224; java_map_index
	}, 
	; 91
	%struct.TypeMapModuleEntry {
		i32 33554696, ; type_token_id
		i32 73; java_map_index
	}, 
	; 92
	%struct.TypeMapModuleEntry {
		i32 33554697, ; type_token_id
		i32 208; java_map_index
	}, 
	; 93
	%struct.TypeMapModuleEntry {
		i32 33554700, ; type_token_id
		i32 108; java_map_index
	}, 
	; 94
	%struct.TypeMapModuleEntry {
		i32 33554702, ; type_token_id
		i32 23; java_map_index
	}, 
	; 95
	%struct.TypeMapModuleEntry {
		i32 33554703, ; type_token_id
		i32 216; java_map_index
	}, 
	; 96
	%struct.TypeMapModuleEntry {
		i32 33554704, ; type_token_id
		i32 67; java_map_index
	}, 
	; 97
	%struct.TypeMapModuleEntry {
		i32 33554706, ; type_token_id
		i32 130; java_map_index
	}, 
	; 98
	%struct.TypeMapModuleEntry {
		i32 33554708, ; type_token_id
		i32 27; java_map_index
	}, 
	; 99
	%struct.TypeMapModuleEntry {
		i32 33554711, ; type_token_id
		i32 74; java_map_index
	}, 
	; 100
	%struct.TypeMapModuleEntry {
		i32 33554712, ; type_token_id
		i32 129; java_map_index
	}, 
	; 101
	%struct.TypeMapModuleEntry {
		i32 33554713, ; type_token_id
		i32 56; java_map_index
	}, 
	; 102
	%struct.TypeMapModuleEntry {
		i32 33554715, ; type_token_id
		i32 111; java_map_index
	}, 
	; 103
	%struct.TypeMapModuleEntry {
		i32 33554721, ; type_token_id
		i32 118; java_map_index
	}, 
	; 104
	%struct.TypeMapModuleEntry {
		i32 33554722, ; type_token_id
		i32 204; java_map_index
	}, 
	; 105
	%struct.TypeMapModuleEntry {
		i32 33554723, ; type_token_id
		i32 157; java_map_index
	}, 
	; 106
	%struct.TypeMapModuleEntry {
		i32 33554724, ; type_token_id
		i32 177; java_map_index
	}, 
	; 107
	%struct.TypeMapModuleEntry {
		i32 33554725, ; type_token_id
		i32 96; java_map_index
	}, 
	; 108
	%struct.TypeMapModuleEntry {
		i32 33554726, ; type_token_id
		i32 92; java_map_index
	}, 
	; 109
	%struct.TypeMapModuleEntry {
		i32 33554727, ; type_token_id
		i32 12; java_map_index
	}, 
	; 110
	%struct.TypeMapModuleEntry {
		i32 33554728, ; type_token_id
		i32 103; java_map_index
	}, 
	; 111
	%struct.TypeMapModuleEntry {
		i32 33554729, ; type_token_id
		i32 79; java_map_index
	}, 
	; 112
	%struct.TypeMapModuleEntry {
		i32 33554730, ; type_token_id
		i32 40; java_map_index
	}, 
	; 113
	%struct.TypeMapModuleEntry {
		i32 33554740, ; type_token_id
		i32 13; java_map_index
	}, 
	; 114
	%struct.TypeMapModuleEntry {
		i32 33554741, ; type_token_id
		i32 158; java_map_index
	}, 
	; 115
	%struct.TypeMapModuleEntry {
		i32 33554742, ; type_token_id
		i32 80; java_map_index
	}, 
	; 116
	%struct.TypeMapModuleEntry {
		i32 33554744, ; type_token_id
		i32 144; java_map_index
	}, 
	; 117
	%struct.TypeMapModuleEntry {
		i32 33554746, ; type_token_id
		i32 100; java_map_index
	}, 
	; 118
	%struct.TypeMapModuleEntry {
		i32 33554747, ; type_token_id
		i32 38; java_map_index
	}, 
	; 119
	%struct.TypeMapModuleEntry {
		i32 33554748, ; type_token_id
		i32 210; java_map_index
	}, 
	; 120
	%struct.TypeMapModuleEntry {
		i32 33554750, ; type_token_id
		i32 226; java_map_index
	}, 
	; 121
	%struct.TypeMapModuleEntry {
		i32 33554752, ; type_token_id
		i32 176; java_map_index
	}, 
	; 122
	%struct.TypeMapModuleEntry {
		i32 33554754, ; type_token_id
		i32 160; java_map_index
	}, 
	; 123
	%struct.TypeMapModuleEntry {
		i32 33554757, ; type_token_id
		i32 127; java_map_index
	}, 
	; 124
	%struct.TypeMapModuleEntry {
		i32 33554758, ; type_token_id
		i32 146; java_map_index
	}, 
	; 125
	%struct.TypeMapModuleEntry {
		i32 33554759, ; type_token_id
		i32 213; java_map_index
	}, 
	; 126
	%struct.TypeMapModuleEntry {
		i32 33554760, ; type_token_id
		i32 206; java_map_index
	}, 
	; 127
	%struct.TypeMapModuleEntry {
		i32 33554761, ; type_token_id
		i32 68; java_map_index
	}, 
	; 128
	%struct.TypeMapModuleEntry {
		i32 33554762, ; type_token_id
		i32 84; java_map_index
	}, 
	; 129
	%struct.TypeMapModuleEntry {
		i32 33554763, ; type_token_id
		i32 45; java_map_index
	}, 
	; 130
	%struct.TypeMapModuleEntry {
		i32 33554764, ; type_token_id
		i32 81; java_map_index
	}, 
	; 131
	%struct.TypeMapModuleEntry {
		i32 33554766, ; type_token_id
		i32 34; java_map_index
	}, 
	; 132
	%struct.TypeMapModuleEntry {
		i32 33554767, ; type_token_id
		i32 33; java_map_index
	}, 
	; 133
	%struct.TypeMapModuleEntry {
		i32 33554768, ; type_token_id
		i32 125; java_map_index
	}, 
	; 134
	%struct.TypeMapModuleEntry {
		i32 33554769, ; type_token_id
		i32 1; java_map_index
	}, 
	; 135
	%struct.TypeMapModuleEntry {
		i32 33554794, ; type_token_id
		i32 207; java_map_index
	}, 
	; 136
	%struct.TypeMapModuleEntry {
		i32 33554796, ; type_token_id
		i32 137; java_map_index
	}, 
	; 137
	%struct.TypeMapModuleEntry {
		i32 33554798, ; type_token_id
		i32 231; java_map_index
	}, 
	; 138
	%struct.TypeMapModuleEntry {
		i32 33554800, ; type_token_id
		i32 90; java_map_index
	}, 
	; 139
	%struct.TypeMapModuleEntry {
		i32 33554809, ; type_token_id
		i32 138; java_map_index
	}, 
	; 140
	%struct.TypeMapModuleEntry {
		i32 33554811, ; type_token_id
		i32 205; java_map_index
	}, 
	; 141
	%struct.TypeMapModuleEntry {
		i32 33554812, ; type_token_id
		i32 19; java_map_index
	}, 
	; 142
	%struct.TypeMapModuleEntry {
		i32 33554813, ; type_token_id
		i32 15; java_map_index
	}, 
	; 143
	%struct.TypeMapModuleEntry {
		i32 33554826, ; type_token_id
		i32 174; java_map_index
	}, 
	; 144
	%struct.TypeMapModuleEntry {
		i32 33554836, ; type_token_id
		i32 217; java_map_index
	}, 
	; 145
	%struct.TypeMapModuleEntry {
		i32 33554838, ; type_token_id
		i32 20; java_map_index
	}, 
	; 146
	%struct.TypeMapModuleEntry {
		i32 33554840, ; type_token_id
		i32 132; java_map_index
	}, 
	; 147
	%struct.TypeMapModuleEntry {
		i32 33554841, ; type_token_id
		i32 14; java_map_index
	}, 
	; 148
	%struct.TypeMapModuleEntry {
		i32 33554843, ; type_token_id
		i32 140; java_map_index
	}, 
	; 149
	%struct.TypeMapModuleEntry {
		i32 33554844, ; type_token_id
		i32 156; java_map_index
	}, 
	; 150
	%struct.TypeMapModuleEntry {
		i32 33554845, ; type_token_id
		i32 107; java_map_index
	}, 
	; 151
	%struct.TypeMapModuleEntry {
		i32 33554847, ; type_token_id
		i32 219; java_map_index
	}, 
	; 152
	%struct.TypeMapModuleEntry {
		i32 33554848, ; type_token_id
		i32 142; java_map_index
	}, 
	; 153
	%struct.TypeMapModuleEntry {
		i32 33554850, ; type_token_id
		i32 228; java_map_index
	}, 
	; 154
	%struct.TypeMapModuleEntry {
		i32 33554852, ; type_token_id
		i32 194; java_map_index
	}, 
	; 155
	%struct.TypeMapModuleEntry {
		i32 33554853, ; type_token_id
		i32 32; java_map_index
	}, 
	; 156
	%struct.TypeMapModuleEntry {
		i32 33554854, ; type_token_id
		i32 139; java_map_index
	}, 
	; 157
	%struct.TypeMapModuleEntry {
		i32 33554856, ; type_token_id
		i32 168; java_map_index
	}, 
	; 158
	%struct.TypeMapModuleEntry {
		i32 33554858, ; type_token_id
		i32 93; java_map_index
	}, 
	; 159
	%struct.TypeMapModuleEntry {
		i32 33554860, ; type_token_id
		i32 17; java_map_index
	}, 
	; 160
	%struct.TypeMapModuleEntry {
		i32 33554861, ; type_token_id
		i32 31; java_map_index
	}, 
	; 161
	%struct.TypeMapModuleEntry {
		i32 33554863, ; type_token_id
		i32 46; java_map_index
	}, 
	; 162
	%struct.TypeMapModuleEntry {
		i32 33554864, ; type_token_id
		i32 22; java_map_index
	}, 
	; 163
	%struct.TypeMapModuleEntry {
		i32 33554865, ; type_token_id
		i32 26; java_map_index
	}, 
	; 164
	%struct.TypeMapModuleEntry {
		i32 33554866, ; type_token_id
		i32 220; java_map_index
	}, 
	; 165
	%struct.TypeMapModuleEntry {
		i32 33554867, ; type_token_id
		i32 48; java_map_index
	}, 
	; 166
	%struct.TypeMapModuleEntry {
		i32 33554869, ; type_token_id
		i32 199; java_map_index
	}, 
	; 167
	%struct.TypeMapModuleEntry {
		i32 33554870, ; type_token_id
		i32 155; java_map_index
	}, 
	; 168
	%struct.TypeMapModuleEntry {
		i32 33554871, ; type_token_id
		i32 166; java_map_index
	}, 
	; 169
	%struct.TypeMapModuleEntry {
		i32 33554872, ; type_token_id
		i32 116; java_map_index
	}, 
	; 170
	%struct.TypeMapModuleEntry {
		i32 33554873, ; type_token_id
		i32 66; java_map_index
	}, 
	; 171
	%struct.TypeMapModuleEntry {
		i32 33554876, ; type_token_id
		i32 104; java_map_index
	}, 
	; 172
	%struct.TypeMapModuleEntry {
		i32 33554877, ; type_token_id
		i32 179; java_map_index
	}, 
	; 173
	%struct.TypeMapModuleEntry {
		i32 33554878, ; type_token_id
		i32 89; java_map_index
	}, 
	; 174
	%struct.TypeMapModuleEntry {
		i32 33554879, ; type_token_id
		i32 54; java_map_index
	}, 
	; 175
	%struct.TypeMapModuleEntry {
		i32 33554880, ; type_token_id
		i32 173; java_map_index
	}, 
	; 176
	%struct.TypeMapModuleEntry {
		i32 33554881, ; type_token_id
		i32 218; java_map_index
	}, 
	; 177
	%struct.TypeMapModuleEntry {
		i32 33554882, ; type_token_id
		i32 71; java_map_index
	}, 
	; 178
	%struct.TypeMapModuleEntry {
		i32 33554884, ; type_token_id
		i32 63; java_map_index
	}, 
	; 179
	%struct.TypeMapModuleEntry {
		i32 33554885, ; type_token_id
		i32 10; java_map_index
	}, 
	; 180
	%struct.TypeMapModuleEntry {
		i32 33554886, ; type_token_id
		i32 230; java_map_index
	}, 
	; 181
	%struct.TypeMapModuleEntry {
		i32 33554887, ; type_token_id
		i32 196; java_map_index
	}, 
	; 182
	%struct.TypeMapModuleEntry {
		i32 33554889, ; type_token_id
		i32 184; java_map_index
	}, 
	; 183
	%struct.TypeMapModuleEntry {
		i32 33554892, ; type_token_id
		i32 98; java_map_index
	}, 
	; 184
	%struct.TypeMapModuleEntry {
		i32 33554893, ; type_token_id
		i32 148; java_map_index
	}, 
	; 185
	%struct.TypeMapModuleEntry {
		i32 33554894, ; type_token_id
		i32 145; java_map_index
	}, 
	; 186
	%struct.TypeMapModuleEntry {
		i32 33554895, ; type_token_id
		i32 154; java_map_index
	}, 
	; 187
	%struct.TypeMapModuleEntry {
		i32 33554896, ; type_token_id
		i32 101; java_map_index
	}, 
	; 188
	%struct.TypeMapModuleEntry {
		i32 33554898, ; type_token_id
		i32 121; java_map_index
	}, 
	; 189
	%struct.TypeMapModuleEntry {
		i32 33554899, ; type_token_id
		i32 120; java_map_index
	}, 
	; 190
	%struct.TypeMapModuleEntry {
		i32 33554900, ; type_token_id
		i32 149; java_map_index
	}, 
	; 191
	%struct.TypeMapModuleEntry {
		i32 33554902, ; type_token_id
		i32 172; java_map_index
	}, 
	; 192
	%struct.TypeMapModuleEntry {
		i32 33554903, ; type_token_id
		i32 163; java_map_index
	}, 
	; 193
	%struct.TypeMapModuleEntry {
		i32 33554904, ; type_token_id
		i32 117; java_map_index
	}, 
	; 194
	%struct.TypeMapModuleEntry {
		i32 33554905, ; type_token_id
		i32 128; java_map_index
	}, 
	; 195
	%struct.TypeMapModuleEntry {
		i32 33554906, ; type_token_id
		i32 0; java_map_index
	}, 
	; 196
	%struct.TypeMapModuleEntry {
		i32 33554908, ; type_token_id
		i32 115; java_map_index
	}, 
	; 197
	%struct.TypeMapModuleEntry {
		i32 33554909, ; type_token_id
		i32 136; java_map_index
	}, 
	; 198
	%struct.TypeMapModuleEntry {
		i32 33554910, ; type_token_id
		i32 185; java_map_index
	}, 
	; 199
	%struct.TypeMapModuleEntry {
		i32 33554911, ; type_token_id
		i32 126; java_map_index
	}, 
	; 200
	%struct.TypeMapModuleEntry {
		i32 33554912, ; type_token_id
		i32 85; java_map_index
	}, 
	; 201
	%struct.TypeMapModuleEntry {
		i32 33554913, ; type_token_id
		i32 18; java_map_index
	}, 
	; 202
	%struct.TypeMapModuleEntry {
		i32 33554914, ; type_token_id
		i32 221; java_map_index
	}, 
	; 203
	%struct.TypeMapModuleEntry {
		i32 33554916, ; type_token_id
		i32 30; java_map_index
	}, 
	; 204
	%struct.TypeMapModuleEntry {
		i32 33554918, ; type_token_id
		i32 88; java_map_index
	}, 
	; 205
	%struct.TypeMapModuleEntry {
		i32 33554919, ; type_token_id
		i32 25; java_map_index
	}, 
	; 206
	%struct.TypeMapModuleEntry {
		i32 33554920, ; type_token_id
		i32 211; java_map_index
	}, 
	; 207
	%struct.TypeMapModuleEntry {
		i32 33554922, ; type_token_id
		i32 43; java_map_index
	}, 
	; 208
	%struct.TypeMapModuleEntry {
		i32 33554923, ; type_token_id
		i32 162; java_map_index
	}, 
	; 209
	%struct.TypeMapModuleEntry {
		i32 33554924, ; type_token_id
		i32 195; java_map_index
	}, 
	; 210
	%struct.TypeMapModuleEntry {
		i32 33554940, ; type_token_id
		i32 159; java_map_index
	}
], align 16; end of 'module1_managed_to_java' array


; module1_managed_to_java_duplicates
@module1_managed_to_java_duplicates = internal constant [71 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554543, ; type_token_id
		i32 49; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554545, ; type_token_id
		i32 70; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554548, ; type_token_id
		i32 61; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33554550, ; type_token_id
		i32 7; java_map_index
	}, 
	; 4
	%struct.TypeMapModuleEntry {
		i32 33554552, ; type_token_id
		i32 188; java_map_index
	}, 
	; 5
	%struct.TypeMapModuleEntry {
		i32 33554554, ; type_token_id
		i32 105; java_map_index
	}, 
	; 6
	%struct.TypeMapModuleEntry {
		i32 33554556, ; type_token_id
		i32 77; java_map_index
	}, 
	; 7
	%struct.TypeMapModuleEntry {
		i32 33554558, ; type_token_id
		i32 197; java_map_index
	}, 
	; 8
	%struct.TypeMapModuleEntry {
		i32 33554560, ; type_token_id
		i32 198; java_map_index
	}, 
	; 9
	%struct.TypeMapModuleEntry {
		i32 33554564, ; type_token_id
		i32 227; java_map_index
	}, 
	; 10
	%struct.TypeMapModuleEntry {
		i32 33554568, ; type_token_id
		i32 113; java_map_index
	}, 
	; 11
	%struct.TypeMapModuleEntry {
		i32 33554570, ; type_token_id
		i32 151; java_map_index
	}, 
	; 12
	%struct.TypeMapModuleEntry {
		i32 33554573, ; type_token_id
		i32 190; java_map_index
	}, 
	; 13
	%struct.TypeMapModuleEntry {
		i32 33554579, ; type_token_id
		i32 44; java_map_index
	}, 
	; 14
	%struct.TypeMapModuleEntry {
		i32 33554582, ; type_token_id
		i32 229; java_map_index
	}, 
	; 15
	%struct.TypeMapModuleEntry {
		i32 33554587, ; type_token_id
		i32 170; java_map_index
	}, 
	; 16
	%struct.TypeMapModuleEntry {
		i32 33554592, ; type_token_id
		i32 135; java_map_index
	}, 
	; 17
	%struct.TypeMapModuleEntry {
		i32 33554594, ; type_token_id
		i32 69; java_map_index
	}, 
	; 18
	%struct.TypeMapModuleEntry {
		i32 33554596, ; type_token_id
		i32 47; java_map_index
	}, 
	; 19
	%struct.TypeMapModuleEntry {
		i32 33554604, ; type_token_id
		i32 8; java_map_index
	}, 
	; 20
	%struct.TypeMapModuleEntry {
		i32 33554615, ; type_token_id
		i32 44; java_map_index
	}, 
	; 21
	%struct.TypeMapModuleEntry {
		i32 33554617, ; type_token_id
		i32 59; java_map_index
	}, 
	; 22
	%struct.TypeMapModuleEntry {
		i32 33554623, ; type_token_id
		i32 165; java_map_index
	}, 
	; 23
	%struct.TypeMapModuleEntry {
		i32 33554630, ; type_token_id
		i32 209; java_map_index
	}, 
	; 24
	%struct.TypeMapModuleEntry {
		i32 33554634, ; type_token_id
		i32 164; java_map_index
	}, 
	; 25
	%struct.TypeMapModuleEntry {
		i32 33554641, ; type_token_id
		i32 153; java_map_index
	}, 
	; 26
	%struct.TypeMapModuleEntry {
		i32 33554645, ; type_token_id
		i32 187; java_map_index
	}, 
	; 27
	%struct.TypeMapModuleEntry {
		i32 33554647, ; type_token_id
		i32 65; java_map_index
	}, 
	; 28
	%struct.TypeMapModuleEntry {
		i32 33554660, ; type_token_id
		i32 109; java_map_index
	}, 
	; 29
	%struct.TypeMapModuleEntry {
		i32 33554662, ; type_token_id
		i32 99; java_map_index
	}, 
	; 30
	%struct.TypeMapModuleEntry {
		i32 33554664, ; type_token_id
		i32 53; java_map_index
	}, 
	; 31
	%struct.TypeMapModuleEntry {
		i32 33554666, ; type_token_id
		i32 82; java_map_index
	}, 
	; 32
	%struct.TypeMapModuleEntry {
		i32 33554677, ; type_token_id
		i32 55; java_map_index
	}, 
	; 33
	%struct.TypeMapModuleEntry {
		i32 33554701, ; type_token_id
		i32 108; java_map_index
	}, 
	; 34
	%struct.TypeMapModuleEntry {
		i32 33554705, ; type_token_id
		i32 67; java_map_index
	}, 
	; 35
	%struct.TypeMapModuleEntry {
		i32 33554707, ; type_token_id
		i32 130; java_map_index
	}, 
	; 36
	%struct.TypeMapModuleEntry {
		i32 33554709, ; type_token_id
		i32 27; java_map_index
	}, 
	; 37
	%struct.TypeMapModuleEntry {
		i32 33554714, ; type_token_id
		i32 56; java_map_index
	}, 
	; 38
	%struct.TypeMapModuleEntry {
		i32 33554718, ; type_token_id
		i32 111; java_map_index
	}, 
	; 39
	%struct.TypeMapModuleEntry {
		i32 33554731, ; type_token_id
		i32 40; java_map_index
	}, 
	; 40
	%struct.TypeMapModuleEntry {
		i32 33554743, ; type_token_id
		i32 80; java_map_index
	}, 
	; 41
	%struct.TypeMapModuleEntry {
		i32 33554745, ; type_token_id
		i32 144; java_map_index
	}, 
	; 42
	%struct.TypeMapModuleEntry {
		i32 33554749, ; type_token_id
		i32 210; java_map_index
	}, 
	; 43
	%struct.TypeMapModuleEntry {
		i32 33554751, ; type_token_id
		i32 226; java_map_index
	}, 
	; 44
	%struct.TypeMapModuleEntry {
		i32 33554753, ; type_token_id
		i32 176; java_map_index
	}, 
	; 45
	%struct.TypeMapModuleEntry {
		i32 33554765, ; type_token_id
		i32 45; java_map_index
	}, 
	; 46
	%struct.TypeMapModuleEntry {
		i32 33554799, ; type_token_id
		i32 231; java_map_index
	}, 
	; 47
	%struct.TypeMapModuleEntry {
		i32 33554805, ; type_token_id
		i32 90; java_map_index
	}, 
	; 48
	%struct.TypeMapModuleEntry {
		i32 33554810, ; type_token_id
		i32 138; java_map_index
	}, 
	; 49
	%struct.TypeMapModuleEntry {
		i32 33554814, ; type_token_id
		i32 15; java_map_index
	}, 
	; 50
	%struct.TypeMapModuleEntry {
		i32 33554837, ; type_token_id
		i32 217; java_map_index
	}, 
	; 51
	%struct.TypeMapModuleEntry {
		i32 33554839, ; type_token_id
		i32 20; java_map_index
	}, 
	; 52
	%struct.TypeMapModuleEntry {
		i32 33554842, ; type_token_id
		i32 14; java_map_index
	}, 
	; 53
	%struct.TypeMapModuleEntry {
		i32 33554846, ; type_token_id
		i32 107; java_map_index
	}, 
	; 54
	%struct.TypeMapModuleEntry {
		i32 33554849, ; type_token_id
		i32 142; java_map_index
	}, 
	; 55
	%struct.TypeMapModuleEntry {
		i32 33554851, ; type_token_id
		i32 228; java_map_index
	}, 
	; 56
	%struct.TypeMapModuleEntry {
		i32 33554855, ; type_token_id
		i32 139; java_map_index
	}, 
	; 57
	%struct.TypeMapModuleEntry {
		i32 33554857, ; type_token_id
		i32 168; java_map_index
	}, 
	; 58
	%struct.TypeMapModuleEntry {
		i32 33554859, ; type_token_id
		i32 93; java_map_index
	}, 
	; 59
	%struct.TypeMapModuleEntry {
		i32 33554862, ; type_token_id
		i32 31; java_map_index
	}, 
	; 60
	%struct.TypeMapModuleEntry {
		i32 33554868, ; type_token_id
		i32 48; java_map_index
	}, 
	; 61
	%struct.TypeMapModuleEntry {
		i32 33554874, ; type_token_id
		i32 66; java_map_index
	}, 
	; 62
	%struct.TypeMapModuleEntry {
		i32 33554883, ; type_token_id
		i32 71; java_map_index
	}, 
	; 63
	%struct.TypeMapModuleEntry {
		i32 33554888, ; type_token_id
		i32 196; java_map_index
	}, 
	; 64
	%struct.TypeMapModuleEntry {
		i32 33554890, ; type_token_id
		i32 184; java_map_index
	}, 
	; 65
	%struct.TypeMapModuleEntry {
		i32 33554897, ; type_token_id
		i32 101; java_map_index
	}, 
	; 66
	%struct.TypeMapModuleEntry {
		i32 33554901, ; type_token_id
		i32 149; java_map_index
	}, 
	; 67
	%struct.TypeMapModuleEntry {
		i32 33554915, ; type_token_id
		i32 221; java_map_index
	}, 
	; 68
	%struct.TypeMapModuleEntry {
		i32 33554917, ; type_token_id
		i32 30; java_map_index
	}, 
	; 69
	%struct.TypeMapModuleEntry {
		i32 33554921, ; type_token_id
		i32 211; java_map_index
	}, 
	; 70
	%struct.TypeMapModuleEntry {
		i32 33554925, ; type_token_id
		i32 195; java_map_index
	}
], align 16; end of 'module1_managed_to_java_duplicates' array


; module2_managed_to_java
@module2_managed_to_java = internal constant [4 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554810, ; type_token_id
		i32 95; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554821, ; type_token_id
		i32 21; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554823, ; type_token_id
		i32 215; java_map_index
	}, 
	; 3
	%struct.TypeMapModuleEntry {
		i32 33555446, ; type_token_id
		i32 110; java_map_index
	}
], align 16; end of 'module2_managed_to_java' array


; module3_managed_to_java
@module3_managed_to_java = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554436, ; type_token_id
		i32 29; java_map_index
	}
], align 4; end of 'module3_managed_to_java' array


; module3_managed_to_java_duplicates
@module3_managed_to_java_duplicates = internal constant [1 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554437, ; type_token_id
		i32 29; java_map_index
	}
], align 4; end of 'module3_managed_to_java_duplicates' array


; module4_managed_to_java
@module4_managed_to_java = internal constant [3 x %struct.TypeMapModuleEntry] [
	; 0
	%struct.TypeMapModuleEntry {
		i32 33554439, ; type_token_id
		i32 202; java_map_index
	}, 
	; 1
	%struct.TypeMapModuleEntry {
		i32 33554445, ; type_token_id
		i32 122; java_map_index
	}, 
	; 2
	%struct.TypeMapModuleEntry {
		i32 33554448, ; type_token_id
		i32 9; java_map_index
	}
], align 16; end of 'module4_managed_to_java' array

; Map modules
@__TypeMapModule_assembly_name.0 = internal constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 16
@__TypeMapModule_assembly_name.1 = internal constant [13 x i8] c"Mono.Android\00", align 1
@__TypeMapModule_assembly_name.2 = internal constant [26 x i8] c"Microsoft.Identity.Client\00", align 16
@__TypeMapModule_assembly_name.3 = internal constant [37 x i8] c"Xamarin.AndroidX.VersionedParcelable\00", align 16
@__TypeMapModule_assembly_name.4 = internal constant [16 x i8] c"MicroTranslator\00", align 16

; map_modules
@map_modules = global [5 x %struct.TypeMapModule] [
	; 0
	%struct.TypeMapModule {
		[16 x i8] c"#\19&\FA\01\EB\BCJ\85x\D2\DF\C0s\EDN", ; module_uuid: fa261923-eb01-4abc-8578-d2dfc073ed4e
		i32 13, ; entry_count
		i32 3, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([13 x %struct.TypeMapModuleEntry], [13 x %struct.TypeMapModuleEntry]* @module0_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([3 x %struct.TypeMapModuleEntry], [3 x %struct.TypeMapModuleEntry]* @module0_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__TypeMapModule_assembly_name.0, i32 0, i32 0), ; assembly_name: Xamarin.AndroidX.Core
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 1
	%struct.TypeMapModule {
		[16 x i8] c"\81F\BAO\BCH\DEA\9A\92\AEv\E7\E6P\1A", ; module_uuid: 4fba4681-48bc-41de-9a92-ae76e7e6501a
		i32 211, ; entry_count
		i32 71, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([211 x %struct.TypeMapModuleEntry], [211 x %struct.TypeMapModuleEntry]* @module1_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([71 x %struct.TypeMapModuleEntry], [71 x %struct.TypeMapModuleEntry]* @module1_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__TypeMapModule_assembly_name.1, i32 0, i32 0), ; assembly_name: Mono.Android
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 2
	%struct.TypeMapModule {
		[16 x i8] c"\96\E8\CE8\D5\C4cC\A4&\10\0DzF</", ; module_uuid: 38cee896-c4d5-4363-a426-100d7a463c2f
		i32 4, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([4 x %struct.TypeMapModuleEntry], [4 x %struct.TypeMapModuleEntry]* @module2_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__TypeMapModule_assembly_name.2, i32 0, i32 0), ; assembly_name: Microsoft.Identity.Client
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 3
	%struct.TypeMapModule {
		[16 x i8] c"\C7\EE\8E\0B'^(O\8E\12\0B9_\04+\C9", ; module_uuid: 0b8eeec7-5e27-4f28-8e12-0b395f042bc9
		i32 1, ; entry_count
		i32 1, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module3_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* getelementptr inbounds ([1 x %struct.TypeMapModuleEntry], [1 x %struct.TypeMapModuleEntry]* @module3_managed_to_java_duplicates, i32 0, i32 0), ; duplicate_map
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__TypeMapModule_assembly_name.3, i32 0, i32 0), ; assembly_name: Xamarin.AndroidX.VersionedParcelable
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}, 
	; 4
	%struct.TypeMapModule {
		[16 x i8] c"\E9G\B0\DF>'8D\9FYV\D8\FE\8Bf\1E", ; module_uuid: dfb047e9-273e-4438-9f59-56d8fe8b661e
		i32 3, ; entry_count
		i32 0, ; duplicate_count
		%struct.TypeMapModuleEntry* getelementptr inbounds ([3 x %struct.TypeMapModuleEntry], [3 x %struct.TypeMapModuleEntry]* @module4_managed_to_java, i32 0, i32 0), ; map
		%struct.TypeMapModuleEntry* null, ; duplicate_map
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__TypeMapModule_assembly_name.4, i32 0, i32 0), ; assembly_name: MicroTranslator
		%struct.MonoImage* null, ; image
		i32 0, ; java_name_width
		i8* null; java_map
	}
], align 16; end of 'map_modules' array


; Java to managed map

; map_java
@map_java = local_unnamed_addr constant [232 x %struct.TypeMapJava] [
	; 0
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554906, ; type_token_id
		i32 208; java_name_index
	}, 
	; 1
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554769, ; type_token_id
		i32 147; java_name_index
	}, 
	; 2
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554651, ; type_token_id
		i32 74; java_name_index
	}, 
	; 3
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554583, ; type_token_id
		i32 35; java_name_index
	}, 
	; 4
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554657, ; type_token_id
		i32 80; java_name_index
	}, 
	; 5
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554612, ; type_token_id
		i32 51; java_name_index
	}, 
	; 6
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554467, ; type_token_id
		i32 10; java_name_index
	}, 
	; 7
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554549, ; type_token_id
		i32 17; java_name_index
	}, 
	; 8
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 48; java_name_index
	}, 
	; 9
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554448, ; type_token_id
		i32 231; java_name_index
	}, 
	; 10
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554885, ; type_token_id
		i32 192; java_name_index
	}, 
	; 11
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554598, ; type_token_id
		i32 43; java_name_index
	}, 
	; 12
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554727, ; type_token_id
		i32 122; java_name_index
	}, 
	; 13
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554740, ; type_token_id
		i32 126; java_name_index
	}, 
	; 14
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 160; java_name_index
	}, 
	; 15
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554813, ; type_token_id
		i32 155; java_name_index
	}, 
	; 16
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554650, ; type_token_id
		i32 73; java_name_index
	}, 
	; 17
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554860, ; type_token_id
		i32 172; java_name_index
	}, 
	; 18
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554913, ; type_token_id
		i32 214; java_name_index
	}, 
	; 19
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554812, ; type_token_id
		i32 154; java_name_index
	}, 
	; 20
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 158; java_name_index
	}, 
	; 21
	%struct.TypeMapJava {
		i32 2, ; module_index
		i32 33554821, ; type_token_id
		i32 225; java_name_index
	}, 
	; 22
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554864, ; type_token_id
		i32 175; java_name_index
	}, 
	; 23
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554702, ; type_token_id
		i32 107; java_name_index
	}, 
	; 24
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554653, ; type_token_id
		i32 76; java_name_index
	}, 
	; 25
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554919, ; type_token_id
		i32 218; java_name_index
	}, 
	; 26
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554865, ; type_token_id
		i32 176; java_name_index
	}, 
	; 27
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 111; java_name_index
	}, 
	; 28
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554632, ; type_token_id
		i32 64; java_name_index
	}, 
	; 29
	%struct.TypeMapJava {
		i32 3, ; module_index
		i32 33554436, ; type_token_id
		i32 228; java_name_index
	}, 
	; 30
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554916, ; type_token_id
		i32 216; java_name_index
	}, 
	; 31
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554861, ; type_token_id
		i32 173; java_name_index
	}, 
	; 32
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554853, ; type_token_id
		i32 168; java_name_index
	}, 
	; 33
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554767, ; type_token_id
		i32 145; java_name_index
	}, 
	; 34
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554766, ; type_token_id
		i32 144; java_name_index
	}, 
	; 35
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554670, ; type_token_id
		i32 89; java_name_index
	}, 
	; 36
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554599, ; type_token_id
		i32 44; java_name_index
	}, 
	; 37
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554468, ; type_token_id
		i32 11; java_name_index
	}, 
	; 38
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554747, ; type_token_id
		i32 131; java_name_index
	}, 
	; 39
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554655, ; type_token_id
		i32 78; java_name_index
	}, 
	; 40
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554730, ; type_token_id
		i32 125; java_name_index
	}, 
	; 41
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554459, ; type_token_id
		i32 4; java_name_index
	}, 
	; 42
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554683, ; type_token_id
		i32 98; java_name_index
	}, 
	; 43
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554922, ; type_token_id
		i32 220; java_name_index
	}, 
	; 44
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554571, ; type_token_id
		i32 30; java_name_index
	}, 
	; 45
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554763, ; type_token_id
		i32 142; java_name_index
	}, 
	; 46
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554863, ; type_token_id
		i32 174; java_name_index
	}, 
	; 47
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 41; java_name_index
	}, 
	; 48
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554867, ; type_token_id
		i32 178; java_name_index
	}, 
	; 49
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554542, ; type_token_id
		i32 13; java_name_index
	}, 
	; 50
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554669, ; type_token_id
		i32 88; java_name_index
	}, 
	; 51
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554580, ; type_token_id
		i32 33; java_name_index
	}, 
	; 52
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554642, ; type_token_id
		i32 69; java_name_index
	}, 
	; 53
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 84; java_name_index
	}, 
	; 54
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554879, ; type_token_id
		i32 187; java_name_index
	}, 
	; 55
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554676, ; type_token_id
		i32 92; java_name_index
	}, 
	; 56
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 114; java_name_index
	}, 
	; 57
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554682, ; type_token_id
		i32 97; java_name_index
	}, 
	; 58
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554565, ; type_token_id
		i32 26; java_name_index
	}, 
	; 59
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554616, ; type_token_id
		i32 53; java_name_index
	}, 
	; 60
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554654, ; type_token_id
		i32 77; java_name_index
	}, 
	; 61
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554547, ; type_token_id
		i32 16; java_name_index
	}, 
	; 62
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554601, ; type_token_id
		i32 46; java_name_index
	}, 
	; 63
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554884, ; type_token_id
		i32 191; java_name_index
	}, 
	; 64
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554680, ; type_token_id
		i32 95; java_name_index
	}, 
	; 65
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554646, ; type_token_id
		i32 72; java_name_index
	}, 
	; 66
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554873, ; type_token_id
		i32 183; java_name_index
	}, 
	; 67
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554704, ; type_token_id
		i32 109; java_name_index
	}, 
	; 68
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554761, ; type_token_id
		i32 140; java_name_index
	}, 
	; 69
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 40; java_name_index
	}, 
	; 70
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554544, ; type_token_id
		i32 14; java_name_index
	}, 
	; 71
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554882, ; type_token_id
		i32 190; java_name_index
	}, 
	; 72
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554637, ; type_token_id
		i32 67; java_name_index
	}, 
	; 73
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554696, ; type_token_id
		i32 104; java_name_index
	}, 
	; 74
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554711, ; type_token_id
		i32 112; java_name_index
	}, 
	; 75
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554465, ; type_token_id
		i32 9; java_name_index
	}, 
	; 76
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 3; java_name_index
	}, 
	; 77
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 20; java_name_index
	}, 
	; 78
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554455, ; type_token_id
		i32 1; java_name_index
	}, 
	; 79
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554729, ; type_token_id
		i32 124; java_name_index
	}, 
	; 80
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554742, ; type_token_id
		i32 128; java_name_index
	}, 
	; 81
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554764, ; type_token_id
		i32 143; java_name_index
	}, 
	; 82
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 85; java_name_index
	}, 
	; 83
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554656, ; type_token_id
		i32 79; java_name_index
	}, 
	; 84
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554762, ; type_token_id
		i32 141; java_name_index
	}, 
	; 85
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554912, ; type_token_id
		i32 213; java_name_index
	}, 
	; 86
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554643, ; type_token_id
		i32 70; java_name_index
	}, 
	; 87
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554462, ; type_token_id
		i32 7; java_name_index
	}, 
	; 88
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554918, ; type_token_id
		i32 217; java_name_index
	}, 
	; 89
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554878, ; type_token_id
		i32 186; java_name_index
	}, 
	; 90
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554800, ; type_token_id
		i32 151; java_name_index
	}, 
	; 91
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554597, ; type_token_id
		i32 42; java_name_index
	}, 
	; 92
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554726, ; type_token_id
		i32 121; java_name_index
	}, 
	; 93
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554858, ; type_token_id
		i32 171; java_name_index
	}, 
	; 94
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554469, ; type_token_id
		i32 12; java_name_index
	}, 
	; 95
	%struct.TypeMapJava {
		i32 2, ; module_index
		i32 33554810, ; type_token_id
		i32 224; java_name_index
	}, 
	; 96
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554725, ; type_token_id
		i32 120; java_name_index
	}, 
	; 97
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554602, ; type_token_id
		i32 47; java_name_index
	}, 
	; 98
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554892, ; type_token_id
		i32 196; java_name_index
	}, 
	; 99
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 83; java_name_index
	}, 
	; 100
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554746, ; type_token_id
		i32 130; java_name_index
	}, 
	; 101
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 200; java_name_index
	}, 
	; 102
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554652, ; type_token_id
		i32 75; java_name_index
	}, 
	; 103
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554728, ; type_token_id
		i32 123; java_name_index
	}, 
	; 104
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554876, ; type_token_id
		i32 184; java_name_index
	}, 
	; 105
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 19; java_name_index
	}, 
	; 106
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554629, ; type_token_id
		i32 62; java_name_index
	}, 
	; 107
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 163; java_name_index
	}, 
	; 108
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554700, ; type_token_id
		i32 106; java_name_index
	}, 
	; 109
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 82; java_name_index
	}, 
	; 110
	%struct.TypeMapJava {
		i32 2, ; module_index
		i32 33555446, ; type_token_id
		i32 227; java_name_index
	}, 
	; 111
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 115; java_name_index
	}, 
	; 112
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554613, ; type_token_id
		i32 52; java_name_index
	}, 
	; 113
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554567, ; type_token_id
		i32 28; java_name_index
	}, 
	; 114
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554460, ; type_token_id
		i32 5; java_name_index
	}, 
	; 115
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554908, ; type_token_id
		i32 209; java_name_index
	}, 
	; 116
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554872, ; type_token_id
		i32 182; java_name_index
	}, 
	; 117
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554904, ; type_token_id
		i32 206; java_name_index
	}, 
	; 118
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554721, ; type_token_id
		i32 116; java_name_index
	}, 
	; 119
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554456, ; type_token_id
		i32 2; java_name_index
	}, 
	; 120
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554899, ; type_token_id
		i32 202; java_name_index
	}, 
	; 121
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554898, ; type_token_id
		i32 201; java_name_index
	}, 
	; 122
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554445, ; type_token_id
		i32 230; java_name_index
	}, 
	; 123
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554628, ; type_token_id
		i32 61; java_name_index
	}, 
	; 124
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554589, ; type_token_id
		i32 39; java_name_index
	}, 
	; 125
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554768, ; type_token_id
		i32 146; java_name_index
	}, 
	; 126
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554911, ; type_token_id
		i32 212; java_name_index
	}, 
	; 127
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554757, ; type_token_id
		i32 136; java_name_index
	}, 
	; 128
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554905, ; type_token_id
		i32 207; java_name_index
	}, 
	; 129
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554712, ; type_token_id
		i32 113; java_name_index
	}, 
	; 130
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554706, ; type_token_id
		i32 110; java_name_index
	}, 
	; 131
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554584, ; type_token_id
		i32 36; java_name_index
	}, 
	; 132
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554840, ; type_token_id
		i32 159; java_name_index
	}, 
	; 133
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554658, ; type_token_id
		i32 81; java_name_index
	}, 
	; 134
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554562, ; type_token_id
		i32 24; java_name_index
	}, 
	; 135
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554585, ; type_token_id
		i32 37; java_name_index
	}, 
	; 136
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554909, ; type_token_id
		i32 210; java_name_index
	}, 
	; 137
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 149; java_name_index
	}, 
	; 138
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554809, ; type_token_id
		i32 152; java_name_index
	}, 
	; 139
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554854, ; type_token_id
		i32 169; java_name_index
	}, 
	; 140
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554843, ; type_token_id
		i32 161; java_name_index
	}, 
	; 141
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554621, ; type_token_id
		i32 57; java_name_index
	}, 
	; 142
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554848, ; type_token_id
		i32 165; java_name_index
	}, 
	; 143
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554684, ; type_token_id
		i32 99; java_name_index
	}, 
	; 144
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554744, ; type_token_id
		i32 129; java_name_index
	}, 
	; 145
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554894, ; type_token_id
		i32 198; java_name_index
	}, 
	; 146
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554758, ; type_token_id
		i32 137; java_name_index
	}, 
	; 147
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554667, ; type_token_id
		i32 86; java_name_index
	}, 
	; 148
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554893, ; type_token_id
		i32 197; java_name_index
	}, 
	; 149
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554900, ; type_token_id
		i32 203; java_name_index
	}, 
	; 150
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554608, ; type_token_id
		i32 49; java_name_index
	}, 
	; 151
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554569, ; type_token_id
		i32 29; java_name_index
	}, 
	; 152
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554576, ; type_token_id
		i32 32; java_name_index
	}, 
	; 153
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554640, ; type_token_id
		i32 68; java_name_index
	}, 
	; 154
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554895, ; type_token_id
		i32 199; java_name_index
	}, 
	; 155
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554870, ; type_token_id
		i32 180; java_name_index
	}, 
	; 156
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554844, ; type_token_id
		i32 162; java_name_index
	}, 
	; 157
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554723, ; type_token_id
		i32 118; java_name_index
	}, 
	; 158
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554741, ; type_token_id
		i32 127; java_name_index
	}, 
	; 159
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554940, ; type_token_id
		i32 223; java_name_index
	}, 
	; 160
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554754, ; type_token_id
		i32 135; java_name_index
	}, 
	; 161
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554546, ; type_token_id
		i32 15; java_name_index
	}, 
	; 162
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554923, ; type_token_id
		i32 221; java_name_index
	}, 
	; 163
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554903, ; type_token_id
		i32 205; java_name_index
	}, 
	; 164
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 65; java_name_index
	}, 
	; 165
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 58; java_name_index
	}, 
	; 166
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554871, ; type_token_id
		i32 181; java_name_index
	}, 
	; 167
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554671, ; type_token_id
		i32 90; java_name_index
	}, 
	; 168
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554856, ; type_token_id
		i32 170; java_name_index
	}, 
	; 169
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554631, ; type_token_id
		i32 63; java_name_index
	}, 
	; 170
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 38; java_name_index
	}, 
	; 171
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554561, ; type_token_id
		i32 23; java_name_index
	}, 
	; 172
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554902, ; type_token_id
		i32 204; java_name_index
	}, 
	; 173
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554880, ; type_token_id
		i32 188; java_name_index
	}, 
	; 174
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554826, ; type_token_id
		i32 156; java_name_index
	}, 
	; 175
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554672, ; type_token_id
		i32 91; java_name_index
	}, 
	; 176
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 134; java_name_index
	}, 
	; 177
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554724, ; type_token_id
		i32 119; java_name_index
	}, 
	; 178
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554668, ; type_token_id
		i32 87; java_name_index
	}, 
	; 179
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554877, ; type_token_id
		i32 185; java_name_index
	}, 
	; 180
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554693, ; type_token_id
		i32 101; java_name_index
	}, 
	; 181
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554461, ; type_token_id
		i32 6; java_name_index
	}, 
	; 182
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554679, ; type_token_id
		i32 94; java_name_index
	}, 
	; 183
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554624, ; type_token_id
		i32 59; java_name_index
	}, 
	; 184
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 195; java_name_index
	}, 
	; 185
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554910, ; type_token_id
		i32 211; java_name_index
	}, 
	; 186
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554635, ; type_token_id
		i32 66; java_name_index
	}, 
	; 187
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 71; java_name_index
	}, 
	; 188
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 18; java_name_index
	}, 
	; 189
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554611, ; type_token_id
		i32 50; java_name_index
	}, 
	; 190
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 31; java_name_index
	}, 
	; 191
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554566, ; type_token_id
		i32 27; java_name_index
	}, 
	; 192
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554678, ; type_token_id
		i32 93; java_name_index
	}, 
	; 193
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554692, ; type_token_id
		i32 100; java_name_index
	}, 
	; 194
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554852, ; type_token_id
		i32 167; java_name_index
	}, 
	; 195
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554924, ; type_token_id
		i32 222; java_name_index
	}, 
	; 196
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 194; java_name_index
	}, 
	; 197
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 21; java_name_index
	}, 
	; 198
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 22; java_name_index
	}, 
	; 199
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554869, ; type_token_id
		i32 179; java_name_index
	}, 
	; 200
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554694, ; type_token_id
		i32 102; java_name_index
	}, 
	; 201
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554619, ; type_token_id
		i32 55; java_name_index
	}, 
	; 202
	%struct.TypeMapJava {
		i32 4, ; module_index
		i32 33554439, ; type_token_id
		i32 229; java_name_index
	}, 
	; 203
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554620, ; type_token_id
		i32 56; java_name_index
	}, 
	; 204
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554722, ; type_token_id
		i32 117; java_name_index
	}, 
	; 205
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554811, ; type_token_id
		i32 153; java_name_index
	}, 
	; 206
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554760, ; type_token_id
		i32 139; java_name_index
	}, 
	; 207
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554794, ; type_token_id
		i32 148; java_name_index
	}, 
	; 208
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554697, ; type_token_id
		i32 105; java_name_index
	}, 
	; 209
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554627, ; type_token_id
		i32 60; java_name_index
	}, 
	; 210
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 132; java_name_index
	}, 
	; 211
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554920, ; type_token_id
		i32 219; java_name_index
	}, 
	; 212
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 0, ; type_token_id
		i32 8; java_name_index
	}, 
	; 213
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554759, ; type_token_id
		i32 138; java_name_index
	}, 
	; 214
	%struct.TypeMapJava {
		i32 0, ; module_index
		i32 33554454, ; type_token_id
		i32 0; java_name_index
	}, 
	; 215
	%struct.TypeMapJava {
		i32 2, ; module_index
		i32 33554823, ; type_token_id
		i32 226; java_name_index
	}, 
	; 216
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554703, ; type_token_id
		i32 108; java_name_index
	}, 
	; 217
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 157; java_name_index
	}, 
	; 218
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554881, ; type_token_id
		i32 189; java_name_index
	}, 
	; 219
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554847, ; type_token_id
		i32 164; java_name_index
	}, 
	; 220
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554866, ; type_token_id
		i32 177; java_name_index
	}, 
	; 221
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 215; java_name_index
	}, 
	; 222
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554681, ; type_token_id
		i32 96; java_name_index
	}, 
	; 223
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554600, ; type_token_id
		i32 45; java_name_index
	}, 
	; 224
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554695, ; type_token_id
		i32 103; java_name_index
	}, 
	; 225
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554618, ; type_token_id
		i32 54; java_name_index
	}, 
	; 226
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 0, ; type_token_id
		i32 133; java_name_index
	}, 
	; 227
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554563, ; type_token_id
		i32 25; java_name_index
	}, 
	; 228
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554850, ; type_token_id
		i32 166; java_name_index
	}, 
	; 229
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554581, ; type_token_id
		i32 34; java_name_index
	}, 
	; 230
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554886, ; type_token_id
		i32 193; java_name_index
	}, 
	; 231
	%struct.TypeMapJava {
		i32 1, ; module_index
		i32 33554798, ; type_token_id
		i32 150; java_name_index
	}
], align 16; end of 'map_java' array

@map_java_hashes = local_unnamed_addr constant [232 x i64] [
	i64 128182020419974451, ; 0: 0x1c764de51b97533 => java/lang/String
	i64 176627442730137433, ; 1: 0x27381b92d83f759 => android/content/pm/Signature
	i64 191318127108177865, ; 2: 0x2a7b2d2ad603fc9 => android/provider/Settings$NameValueTable
	i64 318564728890166633, ; 3: 0x46bc4eedf778d69 => android/widget/Button
	i64 361870449891484378, ; 4: 0x5059f41c47e22da => android/os/Bundle
	i64 363417747702605178, ; 5: 0x50b1e841ce2e57a => android/widget/TextView
	i64 426040045525745741, ; 6: 0x5e9992a05a7404d => androidx/core/app/Person
	i64 698692053645229055, ; 7: 0x9b240b890e97bff => javax/net/ssl/HttpsURLConnection
	i64 769314120471534533, ; 8: 0xaad271dd765dbc5 => android/widget/SeekBar$OnSeekBarChangeListener
	i64 784820327601755988, ; 9: 0xae43dee07355754 => crc642f584d5611e72b84/MainActivity_MyUtteranceProgressListener
	i64 870874870088288028, ; 10: 0xc15f8148b6d471c => java/lang/Exception
	i64 963739547087029502, ; 11: 0xd5fe403101e44fe => android/widget/RadioButton
	i64 994850409983335970, ; 12: 0xdce6b2d4bb55e22 => android/app/NotificationManager
	i64 1022018314545883268, ; 13: 0xe2ef03e00736884 => android/content/ActivityNotFoundException
	i64 1079586186822872943, ; 14: 0xefb75eac1feef6f => java/util/function/Consumer
	i64 1217044833273073796, ; 15: 0x10e3cfd3e2f75084 => java/util/HashSet
	i64 1264118133047759527, ; 16: 0x118b0cbe927112a7 => android/provider/Settings
	i64 1283121375857603354, ; 17: 0x11ce9017d3b3f31a => java/net/ConnectException
	i64 1317579852464953526, ; 18: 0x1248fbe51d6298b6 => java/io/FileInputStream
	i64 1320822650197077237, ; 19: 0x12548133cc496cf5 => android/runtime/JavaProxyThrowable
	i64 1362770524300979611, ; 20: 0x12e9889253552d9b => java/util/Iterator
	i64 1475741559951561216, ; 21: 0x147ae32145319200 => microsoft/identity/client/AuthenticationActivity
	i64 1550860884384862055, ; 22: 0x1585c3c1edcecf67 => java/net/ProtocolException
	i64 1554440221627438146, ; 23: 0x15927b2552aed442 => android/graphics/drawable/Icon
	i64 1747499027921055994, ; 24: 0x18405d1b749330fa => android/os/BaseBundle
	i64 1831728799718484971, ; 25: 0x196b9ba37012abeb => java/io/IOException
	i64 1877272793125324469, ; 26: 0x1a0d69a8bcbd86b5 => java/net/Proxy
	i64 1891509142727870308, ; 27: 0x1a3ffd8b2db2c764 => android/database/Cursor
	i64 1927635245349774197, ; 28: 0x1ac0560ae798a375 => android/util/Base64
	i64 2027001557442772014, ; 29: 0x1c215b2d4e8a3c2e => androidx/versionedparcelable/CustomVersionedParcelable
	i64 2164140653916027403, ; 30: 0x1e08927568a57a0b => java/io/InputStream
	i64 2266689907793747123, ; 31: 0x1f74e67632025cb3 => java/net/HttpURLConnection
	i64 2319268360137032813, ; 32: 0x202fb24918c5446d => java/security/SecureRandom
	i64 2373817610115313634, ; 33: 0x20f17e8a147d6fe2 => android/content/pm/ServiceInfo
	i64 2390467345448904872, ; 34: 0x212ca562aca728a8 => android/content/pm/ResolveInfo
	i64 2600674482769555637, ; 35: 0x241773a9c1e6f0b5 => android/os/PowerManager
	i64 2628651148550353663, ; 36: 0x247ad84adbc432ff => android/widget/RelativeLayout
	i64 2918035570847029626, ; 37: 0x287ef1e42a4a997a => androidx/core/app/Person$Builder
	i64 2972252214977986258, ; 38: 0x293f8fa450a17ed2 => android/content/Intent
	i64 3071747017624329461, ; 39: 0x2aa109a3415d1cf5 => android/os/Build
	i64 3093465012747984901, ; 40: 0x2aee320a09f16005 => android/app/Service
	i64 3423930440400858719, ; 41: 0x2f843e9843bd6e5f => androidx/core/app/NotificationCompat
	i64 3452021135870973674, ; 42: 0x2fe80aeef8bad6ea => android/media/AudioRecord$Builder
	i64 3476617847597562063, ; 43: 0x303f6d8331d5f8cf => java/io/PrintWriter
	i64 3492966660860961054, ; 44: 0x307982abe8e6611e => android/widget/AdapterView
	i64 3648679180818523925, ; 45: 0x32a2b662280d2715 => android/content/pm/PackageManager
	i64 3656396631051491790, ; 46: 0x32be215d0fc259ce => java/net/InetSocketAddress
	i64 3880992763041431256, ; 47: 0x35dc0e5b08f23ed8 => android/widget/SpinnerAdapter
	i64 3936478700004404583, ; 48: 0x36a12e8573a76d67 => java/net/SocketAddress
	i64 3957166361670620563, ; 49: 0x36eaadd708809593 => javax/security/cert/Certificate
	i64 4058549526270185901, ; 50: 0x3852dd4a80aa11ad => android/os/PersistableBundle
	i64 4175515025192399737, ; 51: 0x39f268cae6e63379 => android/widget/ArrayAdapter
	i64 4200728372439161058, ; 52: 0x3a4bfc32c52418e2 => android/text/style/ForegroundColorSpan
	i64 4216519898928517408, ; 53: 0x3a8416820c001120 => android/os/IInterface
	i64 4305371449952891808, ; 54: 0x3bbfc085dc8cf3a0 => java/lang/Class
	i64 4328468547648071486, ; 55: 0x3c11cf35fc03a73e => android/net/Uri
	i64 4478066494514585963, ; 56: 0x3e2549c03e1ee16b => android/accounts/AccountManagerCallback
	i64 4585002479197784888, ; 57: 0x3fa1337662de8b38 => android/media/AudioRecord
	i64 4590799101254748484, ; 58: 0x3fb5cb75a178c944 => javax/net/ssl/TrustManagerFactory
	i64 4672418894112007217, ; 59: 0x40d7c43a895ea431 => android/webkit/WebSettings
	i64 4697149848814993238, ; 60: 0x412fa0e6a365bf56 => android/os/Binder
	i64 4756101769800025001, ; 61: 0x4201115c588983a9 => javax/net/SocketFactory
	i64 5121018397111246860, ; 62: 0x47118319900e600c => android/widget/RemoteViews
	i64 5214467817578676657, ; 63: 0x485d82da477bc1b1 => java/lang/Error
	i64 5385533966949817450, ; 64: 0x4abd429bf1d81c6a => android/media/AudioPlaybackCaptureConfiguration
	i64 5483180883607833997, ; 65: 0x4c182bf666a84d8d => android/speech/tts/UtteranceProgressListener
	i64 5793982059409158284, ; 66: 0x50685bfc3611b08c => java/net/URLConnection
	i64 5866051512250042973, ; 67: 0x516866c54dce8a5d => android/database/ContentObserver
	i64 5880236631793339455, ; 68: 0x519acc0fd1480c3f => android/content/pm/PackageInfo
	i64 5928119462157283979, ; 69: 0x5244e93e07f6f28b => android/widget/Adapter
	i64 5991054489085362647, ; 70: 0x53248050dbf141d7 => javax/security/cert/X509Certificate
	i64 6000768439507874839, ; 71: 0x5347031a303df417 => java/lang/Enum
	i64 6082559832693444876, ; 72: 0x546997f0e8c0910c => android/text/SpannableStringBuilder
	i64 6160296053631453721, ; 73: 0x557dc49f43f18a19 => android/graphics/PorterDuff
	i64 6223939517799474418, ; 74: 0x565fe003fdf424f2 => android/accounts/AccountManager
	i64 6492732295776037053, ; 75: 0x5a1ad19f7f6fe8bd => androidx/core/app/NotificationCompat$Style
	i64 6614034307282298093, ; 76: 0x5bc9c528e9cee4ed => androidx/core/app/NotificationBuilderWithBuilderAccessor
	i64 6740334783866200195, ; 77: 0x5d8a7ac62b8de083 => javax/net/ssl/SSLSession
	i64 6845548855192212761, ; 78: 0x5f00466a1e505519 => androidx/core/content/LocusIdCompat
	i64 6873453922512352052, ; 79: 0x5f6369ece75d3334 => android/app/Person
	i64 6875961628645093091, ; 80: 0x5f6c52abbc9b6ee3 => android/content/ContentResolver
	i64 7124724141366219156, ; 81: 0x62e01adbb0c89194 => android/content/pm/PackageManager$NameNotFoundException
	i64 7282188369651690282, ; 82: 0x650f87bd5091eb2a => android/os/Parcelable
	i64 7291810569935423650, ; 83: 0x6531b714667088a2 => android/os/Build$VERSION
	i64 7359209775714103835, ; 84: 0x66212a4cdd05721b => android/content/pm/PackageItemInfo
	i64 7437796681088239247, ; 85: 0x67385cac9fd8068f => java/io/FileDescriptor
	i64 7542712316008827805, ; 86: 0x68ad18e36eab8b9d => android/speech/tts/TextToSpeech
	i64 7545390795723370996, ; 87: 0x68b69cf39697f1f4 => androidx/core/app/NotificationCompat$Builder
	i64 7620119821450638162, ; 88: 0x69c01a9abf7a7352 => java/io/InterruptedIOException
	i64 7658195837123306865, ; 89: 0x6a476089fc1c2571 => java/lang/Character
	i64 7933543037734065265, ; 90: 0x6e199b5bee699471 => java/util/HashMap
	i64 7977746367831656039, ; 91: 0x6eb6a60dbac4c667 => android/widget/ProgressBar
	i64 8144041705376199321, ; 92: 0x710572c834ea3299 => android/app/NotificationChannel
	i64 8190305621607579207, ; 93: 0x71a9cf9199cdfe47 => java/nio/channels/spi/AbstractInterruptibleChannel
	i64 8285028404156604688, ; 94: 0x72fa557007c6a110 => androidx/core/app/RemoteInput
	i64 8295601641446377106, ; 95: 0x731fe5bdac8f0692 => crc648316b0a9aa8cfd61/BrowserTabActivity
	i64 8297633541287010709, ; 96: 0x73271dbe38c76195 => android/app/Notification$Builder
	i64 8372779371615156560, ; 97: 0x7432167a43d6f950 => android/widget/SeekBar
	i64 8416619862292774857, ; 98: 0x74cdd72bed753fc9 => java/lang/IllegalArgumentException
	i64 8462361838522003613, ; 99: 0x75705941b1ecf09d => android/os/IBinder
	i64 8487642170263250902, ; 100: 0x75ca29959b2aa7d6 => android/content/ContextWrapper
	i64 8587172038193766563, ; 101: 0x772bc378d1b4e0a3 => java/lang/Runnable
	i64 8720029361076671000, ; 102: 0x7903c480d1f39218 => android/provider/Settings$Secure
	i64 8722435519081898203, ; 103: 0x790c50e4232060db => android/app/PendingIntent
	i64 8950391188589719199, ; 104: 0x7c362d5d64ad2e9f => java/lang/Boolean
	i64 9154019302997878316, ; 105: 0x7f099c0e5641e62c => javax/net/ssl/KeyManager
	i64 9187009981601112352, ; 106: 0x7f7ed0e7454d6120 => android/view/ViewGroup$MarginLayoutParams
	i64 9217569019755338609, ; 107: 0x7feb622fcb299b71 => java/security/Principal
	i64 9355021183435591253, ; 108: 0x81d3b63388eece55 => android/graphics/drawable/Drawable
	i64 9374080444557732201, ; 109: 0x82176c7f91cca969 => android/os/IBinder$DeathRecipient
	i64 9400545413074029007, ; 110: 0x8275723f393489cf => crc64ed1888fb4925e3b7/AuthenticationAgentActivity_CoreWebViewClient
	i64 9453304220225858309, ; 111: 0x8330e21a40436b05 => android/accounts/AccountManagerFuture
	i64 9478593896738967145, ; 112: 0x838abaede94fce69 => android/widget/Toast
	i64 9507464054666394215, ; 113: 0x83f14c2f5d2f7a67 => android/widget/AbsSeekBar
	i64 9525517866534212039, ; 114: 0x84317008006891c7 => androidx/core/app/NotificationCompat$Action
	i64 9667515047141612341, ; 115: 0x8629e9b6f59e9b35 => java/lang/Thread
	i64 9785570804745343508, ; 116: 0x87cd54ccfd479214 => java/net/URL
	i64 9866983915955550238, ; 117: 0x88ee91981305f81e => java/lang/SecurityException
	i64 9869939015140501507, ; 118: 0x88f9113db837e803 => android/app/Activity
	i64 9876202071173388047, ; 119: 0x890f51751644570f => androidx/core/content/pm/ShortcutInfoCompat
	i64 9977296435420958008, ; 120: 0x8a767a3efc098d38 => java/lang/NullPointerException
	i64 10266059374509936169, ; 121: 0x8e785e9bf4bbce29 => java/lang/Long
	i64 10492845079272835255, ; 122: 0x919e1301914348b7 => com/ForegroundService/GetMedia
	i64 10499957734077086001, ; 123: 0x91b757ed9047b931 => android/view/ViewGroup$LayoutParams
	i64 10528560983360194325, ; 124: 0x921cf66e8138c715 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i64 10565471938346028939, ; 125: 0x92a018bfe9790f8b => android/content/pm/ShortcutInfo
	i64 10589642565195629679, ; 126: 0x92f5f7ce84d7846f => java/lang/UnsupportedOperationException
	i64 10655658609895831411, ; 127: 0x93e0810cb2ac7773 => android/content/res/ColorStateList
	i64 10722894652849872693, ; 128: 0x94cf5fdfdb0d5f35 => java/lang/Short
	i64 10786556522827307957, ; 129: 0x95b18c0204cb5bb5 => android/accounts/AuthenticatorDescription
	i64 10808978037618020601, ; 130: 0x96013441bd3890f9 => android/database/DataSetObserver
	i64 10846083286812210570, ; 131: 0x96850748cabe358a => android/widget/CheckBox
	i64 11005920483369566278, ; 132: 0x98bce25e25704046 => java/util/Random
	i64 11112718717483603117, ; 133: 0x9a384ecbbc71d4ad => android/os/Handler
	i64 11393831178655295976, ; 134: 0x9e1f05170284e9e8 => javax/net/ssl/SSLContext
	i64 11535591933768018538, ; 135: 0xa016a7bede1aaa6a => android/widget/CompoundButton
	i64 11573301743732151818, ; 136: 0xa09ca09e3190560a => mono/java/lang/RunnableImplementor
	i64 11585998938245262039, ; 137: 0xa0c9bca62a296ad7 => mono/android/runtime/JavaArray
	i64 11712899692065226922, ; 138: 0xa28c94365b5480aa => java/util/ArrayList
	i64 11763058807128842702, ; 139: 0xa33ec7a966f1e1ce => java/security/cert/Certificate
	i64 11895525870086415889, ; 140: 0xa51565c0eef86611 => java/util/concurrent/TimeUnit
	i64 11954228872253987625, ; 141: 0xa5e5f3d2b66adb29 => android/view/View
	i64 11989433154782493969, ; 142: 0xa66305ee7919fd11 => java/security/MessageDigest
	i64 12138582761206165278, ; 143: 0xa874e8b5565faf1e => android/media/AudioTrack
	i64 12228984007958404582, ; 144: 0xa9b61429ce4b1de6 => android/content/Context
	i64 12426529965699990912, ; 145: 0xac73e72a4c4b8580 => java/lang/IndexOutOfBoundsException
	i64 12458575303368155603, ; 146: 0xace5c03ae4b6a1d3 => android/content/res/Resources
	i64 12476375190645835422, ; 147: 0xad24fd221af1069e => android/os/Looper
	i64 12488842103917764438, ; 148: 0xad5147b98bf5df56 => java/lang/IllegalStateException
	i64 12532121860257401396, ; 149: 0xadeb0a6f128cca34 => java/lang/Number
	i64 12580464349154168910, ; 150: 0xae96c9abe0ccd04e => mono/android/widget/SeekBar_OnSeekBarChangeListenerImplementor
	i64 12610567535961206755, ; 151: 0xaf01bc5c3d0a6fe3 => android/widget/AbsSpinner
	i64 12740368432395772516, ; 152: 0xb0cee196808ce264 => mono/android/widget/AdapterView_OnItemSelectedListenerImplementor
	i64 12787245097144369327, ; 153: 0xb1756baa872540af => android/text/style/CharacterStyle
	i64 12806567541869262104, ; 154: 0xb1ba1153c52a3518 => java/lang/Integer
	i64 12882710959019299141, ; 155: 0xb2c8955c98609145 => java/net/SocketTimeoutException
	i64 13096165904162462397, ; 156: 0xb5beed80dd2f9abd => java/security/GeneralSecurityException
	i64 13291009470876803657, ; 157: 0xb87326b1e9f6e249 => android/app/Notification
	i64 13291089739636035741, ; 158: 0xb8736fb2f0d8509d => android/content/ComponentName
	i64 13402779434266666368, ; 159: 0xba003ce26e602580 => mono/android/TypeManager
	i64 13431868251608748947, ; 160: 0xba6795027efc9393 => android/content/LocusId
	i64 13502560151794130917, ; 161: 0xbb62baeb1e089fe5 => javax/security/auth/Subject
	i64 13770727111868296170, ; 162: 0xbf1b735909c02bea => java/io/StringWriter
	i64 13789203013919682202, ; 163: 0xbf5d1715346dae9a => java/lang/RuntimeException
	i64 13805562342397192842, ; 164: 0xbf9735ce2f182a8a => android/util/AttributeSet
	i64 13877554026709814142, ; 165: 0xc096f9dc61548b7e => android/view/View$OnClickListener
	i64 13959986462581077347, ; 166: 0xc1bbd5b97b683563 => java/net/UnknownServiceException
	i64 14008091590880237307, ; 167: 0xc266bd15778d96fb => android/os/Process
	i64 14031640676547298208, ; 168: 0xc2ba66da3d8603a0 => java/nio/channels/FileChannel
	i64 14122621771724408359, ; 169: 0xc3fda1ad30d4c627 => android/util/AndroidException
	i64 14146902927644867185, ; 170: 0xc453e5425a34ba71 => android/widget/CompoundButton$OnCheckedChangeListener
	i64 14160925941038085484, ; 171: 0xc485b71d9630756c => javax/net/ssl/KeyManagerFactory
	i64 14167891754637755728, ; 172: 0xc49e767c735e8550 => java/lang/Object
	i64 14180814796703042768, ; 173: 0xc4cc5feca7168cd0 => java/lang/ClassCastException
	i64 14206023932851353817, ; 174: 0xc525ef800c4d78d9 => mono/android/runtime/OutputStreamAdapter
	i64 14258149992133074876, ; 175: 0xc5df1fdffb549fbc => android/os/UserHandle
	i64 14296237994325564878, ; 176: 0xc66670b60c37ddce => android/content/SharedPreferences
	i64 14348164000481939304, ; 177: 0xc71eeb237bc60f68 => android/app/Notification$BubbleMetadata
	i64 14361620789319229198, ; 178: 0xc74eba044a3cdf0e => android/os/Parcel
	i64 14501341618205132561, ; 179: 0xc93f1d5ecfb48711 => java/lang/Byte
	i64 14511075231484494049, ; 180: 0xc961b20a419a40e1 => android/media/projection/MediaProjectionManager
	i64 14524258068897415822, ; 181: 0xc99087c2c6bb428e => androidx/core/app/NotificationCompat$BubbleMetadata
	i64 14544331799669894602, ; 182: 0xc9d7d8b66ebdedca => android/media/AudioFormat$Builder
	i64 14649586819325063784, ; 183: 0xcb4dc998681d7268 => mono/android/view/View_OnClickListenerImplementor
	i64 14684559126920293129, ; 184: 0xcbca08b94b4deb09 => java/lang/CharSequence
	i64 14940408132235664607, ; 185: 0xcf56fe09e1439cdf => java/lang/Throwable
	i64 14940704599466395126, ; 186: 0xcf580bac893d45f6 => android/util/Log
	i64 15114515369987516226, ; 187: 0xd1c18ba61c49a742 => android/speech/tts/TextToSpeech$OnInitListener
	i64 15178898666151156562, ; 188: 0xd2a647ea65971b52 => javax/net/ssl/HostnameVerifier
	i64 15227253633559603018, ; 189: 0xd35212809518a74a => android/widget/Spinner
	i64 15295416057057826855, ; 190: 0xd4443bdd84bcd827 => android/widget/AdapterView$OnItemSelectedListener
	i64 15367873893566575642, ; 191: 0xd545a7e23b08f41a => android/widget/AbsoluteLayout
	i64 15376163993763393351, ; 192: 0xd5631baf986b2f47 => android/media/AudioFormat
	i64 15415511537645001811, ; 193: 0xd5eee61190441c53 => android/media/projection/MediaProjection
	i64 15462149522156220739, ; 194: 0xd69497118418f143 => java/security/NoSuchAlgorithmException
	i64 15633873768898914415, ; 195: 0xd8f6ad5c6a84686f => java/io/Writer
	i64 15645438581444444576, ; 196: 0xd91fc37f2a3001a0 => java/lang/Appendable
	i64 15767615218119146656, ; 197: 0xdad1d2801f08fca0 => javax/net/ssl/SSLSessionContext
	i64 15888603495552893685, ; 198: 0xdc7fa8b2a175c2f5 => javax/net/ssl/TrustManager
	i64 15896143924811176167, ; 199: 0xdc9a72ada0da98e7 => java/net/SocketException
	i64 16003229482241506982, ; 200: 0xde16e46ce4103ea6 => android/graphics/Bitmap
	i64 16101147842785907581, ; 201: 0xdf72c4a7cd4d137d => android/webkit/WebViewClient
	i64 16117086181121338230, ; 202: 0xdfab647d60182b76 => crc642f584d5611e72b84/MainActivity
	i64 16314168557433322311, ; 203: 0xe26791dde7a8fb47 => android/view/ContextThemeWrapper
	i64 16542847110558016359, ; 204: 0xe593ffcc9e686367 => android/app/Application
	i64 16603717322881265010, ; 205: 0xe66c40ef55566d72 => mono/android/runtime/JavaObject
	i64 16646452011251683774, ; 206: 0xe70413e8553e51be => android/content/pm/ComponentInfo
	i64 16723123314454325679, ; 207: 0xe814780d351a69af => mono/android/runtime/InputStreamAdapter
	i64 16732048506261937943, ; 208: 0xe8342d775c591f17 => android/graphics/PorterDuff$Mode
	i64 16832017439803262409, ; 209: 0xe99756ae80a745c9 => android/view/ViewGroup
	i64 16878061737430998064, ; 210: 0xea3aebb9f4afdc30 => android/content/SharedPreferences$Editor
	i64 17125416866214736517, ; 211: 0xeda9b3e7cd367285 => java/io/OutputStream
	i64 17274563319870435211, ; 212: 0xefbb93d09adeaf8b => androidx/core/app/NotificationCompat$Extender
	i64 17296586735193580360, ; 213: 0xf009d1fe91f26348 => android/content/pm/ApplicationInfo
	i64 17333291439753423356, ; 214: 0xf08c38ba8ed269fc => androidx/core/graphics/drawable/IconCompat
	i64 17445284700809742323, ; 215: 0xf21a1a019d5247f3 => crc64ed1888fb4925e3b7/AuthenticationAgentActivity
	i64 17485531046532206351, ; 216: 0xf2a915d8319dcf0f => android/database/CharArrayBuffer
	i64 17490083481060646178, ; 217: 0xf2b94242748c1d22 => java/util/Enumeration
	i64 17498018958444438720, ; 218: 0xf2d57388c321a4c0 => java/lang/Double
	i64 17519581955836770800, ; 219: 0xf3220ef752fe79f0 => java/security/KeyStore
	i64 17605619666541934257, ; 220: 0xf453b9cee2dcf6b1 => java/net/Proxy$Type
	i64 17645817129531856090, ; 221: 0xf4e28930113fd4da => java/io/Closeable
	i64 17677411818637202813, ; 222: 0xf552c863de29957d => android/media/AudioPlaybackCaptureConfiguration$Builder
	i64 17749278089719554056, ; 223: 0xf6521a62055ba008 => android/widget/RelativeLayout$LayoutParams
	i64 17786854109604896016, ; 224: 0xf6d79992eab25d10 => android/graphics/BitmapFactory
	i64 17992660388602075186, ; 225: 0xf9b2c54b52de5832 => android/webkit/WebView
	i64 18213852175163534091, ; 226: 0xfcc49a0d5c192b0b => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i64 18216578448169670053, ; 227: 0xfcce4995423095a5 => javax/net/ssl/SSLSocketFactory
	i64 18252438040904317073, ; 228: 0xfd4dafb150edb891 => java/security/MessageDigestSpi
	i64 18323076787180290332, ; 229: 0xfe48a5421416411c => android/widget/BaseAdapter
	i64 18401512074820890716, ; 230: 0xff5f4dbc95c2b05c => java/lang/Float
	i64 18401692079723824300 ; 231: 0xff5ff1733e0ec4ac => java/util/Collection
], align 16

; java_type_names
@__java_type_names.0 = internal constant [43 x i8] c"androidx/core/graphics/drawable/IconCompat\00", align 16
@__java_type_names.1 = internal constant [36 x i8] c"androidx/core/content/LocusIdCompat\00", align 16
@__java_type_names.2 = internal constant [44 x i8] c"androidx/core/content/pm/ShortcutInfoCompat\00", align 16
@__java_type_names.3 = internal constant [57 x i8] c"androidx/core/app/NotificationBuilderWithBuilderAccessor\00", align 16
@__java_type_names.4 = internal constant [37 x i8] c"androidx/core/app/NotificationCompat\00", align 16
@__java_type_names.5 = internal constant [44 x i8] c"androidx/core/app/NotificationCompat$Action\00", align 16
@__java_type_names.6 = internal constant [52 x i8] c"androidx/core/app/NotificationCompat$BubbleMetadata\00", align 16
@__java_type_names.7 = internal constant [45 x i8] c"androidx/core/app/NotificationCompat$Builder\00", align 16
@__java_type_names.8 = internal constant [46 x i8] c"androidx/core/app/NotificationCompat$Extender\00", align 16
@__java_type_names.9 = internal constant [43 x i8] c"androidx/core/app/NotificationCompat$Style\00", align 16
@__java_type_names.10 = internal constant [25 x i8] c"androidx/core/app/Person\00", align 16
@__java_type_names.11 = internal constant [33 x i8] c"androidx/core/app/Person$Builder\00", align 16
@__java_type_names.12 = internal constant [30 x i8] c"androidx/core/app/RemoteInput\00", align 16
@__java_type_names.13 = internal constant [32 x i8] c"javax/security/cert/Certificate\00", align 16
@__java_type_names.14 = internal constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 16
@__java_type_names.15 = internal constant [28 x i8] c"javax/security/auth/Subject\00", align 16
@__java_type_names.16 = internal constant [24 x i8] c"javax/net/SocketFactory\00", align 16
@__java_type_names.17 = internal constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 16
@__java_type_names.18 = internal constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 16
@__java_type_names.19 = internal constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 16
@__java_type_names.20 = internal constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 16
@__java_type_names.21 = internal constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 16
@__java_type_names.22 = internal constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 16
@__java_type_names.23 = internal constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 16
@__java_type_names.24 = internal constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 16
@__java_type_names.25 = internal constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 16
@__java_type_names.26 = internal constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 16
@__java_type_names.27 = internal constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 16
@__java_type_names.28 = internal constant [26 x i8] c"android/widget/AbsSeekBar\00", align 16
@__java_type_names.29 = internal constant [26 x i8] c"android/widget/AbsSpinner\00", align 16
@__java_type_names.30 = internal constant [27 x i8] c"android/widget/AdapterView\00", align 16
@__java_type_names.31 = internal constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 16
@__java_type_names.32 = internal constant [66 x i8] c"mono/android/widget/AdapterView_OnItemSelectedListenerImplementor\00", align 16
@__java_type_names.33 = internal constant [28 x i8] c"android/widget/ArrayAdapter\00", align 16
@__java_type_names.34 = internal constant [27 x i8] c"android/widget/BaseAdapter\00", align 16
@__java_type_names.35 = internal constant [22 x i8] c"android/widget/Button\00", align 16
@__java_type_names.36 = internal constant [24 x i8] c"android/widget/CheckBox\00", align 16
@__java_type_names.37 = internal constant [30 x i8] c"android/widget/CompoundButton\00", align 16
@__java_type_names.38 = internal constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 16
@__java_type_names.39 = internal constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 16
@__java_type_names.40 = internal constant [23 x i8] c"android/widget/Adapter\00", align 16
@__java_type_names.41 = internal constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 16
@__java_type_names.42 = internal constant [27 x i8] c"android/widget/ProgressBar\00", align 16
@__java_type_names.43 = internal constant [27 x i8] c"android/widget/RadioButton\00", align 16
@__java_type_names.44 = internal constant [30 x i8] c"android/widget/RelativeLayout\00", align 16
@__java_type_names.45 = internal constant [43 x i8] c"android/widget/RelativeLayout$LayoutParams\00", align 16
@__java_type_names.46 = internal constant [27 x i8] c"android/widget/RemoteViews\00", align 16
@__java_type_names.47 = internal constant [23 x i8] c"android/widget/SeekBar\00", align 16
@__java_type_names.48 = internal constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 16
@__java_type_names.49 = internal constant [63 x i8] c"mono/android/widget/SeekBar_OnSeekBarChangeListenerImplementor\00", align 16
@__java_type_names.50 = internal constant [23 x i8] c"android/widget/Spinner\00", align 16
@__java_type_names.51 = internal constant [24 x i8] c"android/widget/TextView\00", align 16
@__java_type_names.52 = internal constant [21 x i8] c"android/widget/Toast\00", align 16
@__java_type_names.53 = internal constant [27 x i8] c"android/webkit/WebSettings\00", align 16
@__java_type_names.54 = internal constant [23 x i8] c"android/webkit/WebView\00", align 16
@__java_type_names.55 = internal constant [29 x i8] c"android/webkit/WebViewClient\00", align 16
@__java_type_names.56 = internal constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 16
@__java_type_names.57 = internal constant [18 x i8] c"android/view/View\00", align 16
@__java_type_names.58 = internal constant [34 x i8] c"android/view/View$OnClickListener\00", align 16
@__java_type_names.59 = internal constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 16
@__java_type_names.60 = internal constant [23 x i8] c"android/view/ViewGroup\00", align 16
@__java_type_names.61 = internal constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 16
@__java_type_names.62 = internal constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 16
@__java_type_names.63 = internal constant [30 x i8] c"android/util/AndroidException\00", align 16
@__java_type_names.64 = internal constant [20 x i8] c"android/util/Base64\00", align 16
@__java_type_names.65 = internal constant [26 x i8] c"android/util/AttributeSet\00", align 16
@__java_type_names.66 = internal constant [17 x i8] c"android/util/Log\00", align 16
@__java_type_names.67 = internal constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 16
@__java_type_names.68 = internal constant [34 x i8] c"android/text/style/CharacterStyle\00", align 16
@__java_type_names.69 = internal constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 16
@__java_type_names.70 = internal constant [32 x i8] c"android/speech/tts/TextToSpeech\00", align 16
@__java_type_names.71 = internal constant [47 x i8] c"android/speech/tts/TextToSpeech$OnInitListener\00", align 16
@__java_type_names.72 = internal constant [45 x i8] c"android/speech/tts/UtteranceProgressListener\00", align 16
@__java_type_names.73 = internal constant [26 x i8] c"android/provider/Settings\00", align 16
@__java_type_names.74 = internal constant [41 x i8] c"android/provider/Settings$NameValueTable\00", align 16
@__java_type_names.75 = internal constant [33 x i8] c"android/provider/Settings$Secure\00", align 16
@__java_type_names.76 = internal constant [22 x i8] c"android/os/BaseBundle\00", align 16
@__java_type_names.77 = internal constant [18 x i8] c"android/os/Binder\00", align 16
@__java_type_names.78 = internal constant [17 x i8] c"android/os/Build\00", align 16
@__java_type_names.79 = internal constant [25 x i8] c"android/os/Build$VERSION\00", align 16
@__java_type_names.80 = internal constant [18 x i8] c"android/os/Bundle\00", align 16
@__java_type_names.81 = internal constant [19 x i8] c"android/os/Handler\00", align 16
@__java_type_names.82 = internal constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 16
@__java_type_names.83 = internal constant [19 x i8] c"android/os/IBinder\00", align 16
@__java_type_names.84 = internal constant [22 x i8] c"android/os/IInterface\00", align 16
@__java_type_names.85 = internal constant [22 x i8] c"android/os/Parcelable\00", align 16
@__java_type_names.86 = internal constant [18 x i8] c"android/os/Looper\00", align 16
@__java_type_names.87 = internal constant [18 x i8] c"android/os/Parcel\00", align 16
@__java_type_names.88 = internal constant [29 x i8] c"android/os/PersistableBundle\00", align 16
@__java_type_names.89 = internal constant [24 x i8] c"android/os/PowerManager\00", align 16
@__java_type_names.90 = internal constant [19 x i8] c"android/os/Process\00", align 16
@__java_type_names.91 = internal constant [22 x i8] c"android/os/UserHandle\00", align 16
@__java_type_names.92 = internal constant [16 x i8] c"android/net/Uri\00", align 16
@__java_type_names.93 = internal constant [26 x i8] c"android/media/AudioFormat\00", align 16
@__java_type_names.94 = internal constant [34 x i8] c"android/media/AudioFormat$Builder\00", align 16
@__java_type_names.95 = internal constant [48 x i8] c"android/media/AudioPlaybackCaptureConfiguration\00", align 16
@__java_type_names.96 = internal constant [56 x i8] c"android/media/AudioPlaybackCaptureConfiguration$Builder\00", align 16
@__java_type_names.97 = internal constant [26 x i8] c"android/media/AudioRecord\00", align 16
@__java_type_names.98 = internal constant [34 x i8] c"android/media/AudioRecord$Builder\00", align 16
@__java_type_names.99 = internal constant [25 x i8] c"android/media/AudioTrack\00", align 16
@__java_type_names.100 = internal constant [41 x i8] c"android/media/projection/MediaProjection\00", align 16
@__java_type_names.101 = internal constant [48 x i8] c"android/media/projection/MediaProjectionManager\00", align 16
@__java_type_names.102 = internal constant [24 x i8] c"android/graphics/Bitmap\00", align 16
@__java_type_names.103 = internal constant [31 x i8] c"android/graphics/BitmapFactory\00", align 16
@__java_type_names.104 = internal constant [28 x i8] c"android/graphics/PorterDuff\00", align 16
@__java_type_names.105 = internal constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 16
@__java_type_names.106 = internal constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 16
@__java_type_names.107 = internal constant [31 x i8] c"android/graphics/drawable/Icon\00", align 16
@__java_type_names.108 = internal constant [33 x i8] c"android/database/CharArrayBuffer\00", align 16
@__java_type_names.109 = internal constant [33 x i8] c"android/database/ContentObserver\00", align 16
@__java_type_names.110 = internal constant [33 x i8] c"android/database/DataSetObserver\00", align 16
@__java_type_names.111 = internal constant [24 x i8] c"android/database/Cursor\00", align 16
@__java_type_names.112 = internal constant [32 x i8] c"android/accounts/AccountManager\00", align 16
@__java_type_names.113 = internal constant [42 x i8] c"android/accounts/AuthenticatorDescription\00", align 16
@__java_type_names.114 = internal constant [40 x i8] c"android/accounts/AccountManagerCallback\00", align 16
@__java_type_names.115 = internal constant [38 x i8] c"android/accounts/AccountManagerFuture\00", align 16
@__java_type_names.116 = internal constant [21 x i8] c"android/app/Activity\00", align 16
@__java_type_names.117 = internal constant [24 x i8] c"android/app/Application\00", align 16
@__java_type_names.118 = internal constant [25 x i8] c"android/app/Notification\00", align 16
@__java_type_names.119 = internal constant [40 x i8] c"android/app/Notification$BubbleMetadata\00", align 16
@__java_type_names.120 = internal constant [33 x i8] c"android/app/Notification$Builder\00", align 16
@__java_type_names.121 = internal constant [32 x i8] c"android/app/NotificationChannel\00", align 16
@__java_type_names.122 = internal constant [32 x i8] c"android/app/NotificationManager\00", align 16
@__java_type_names.123 = internal constant [26 x i8] c"android/app/PendingIntent\00", align 16
@__java_type_names.124 = internal constant [19 x i8] c"android/app/Person\00", align 16
@__java_type_names.125 = internal constant [20 x i8] c"android/app/Service\00", align 16
@__java_type_names.126 = internal constant [42 x i8] c"android/content/ActivityNotFoundException\00", align 16
@__java_type_names.127 = internal constant [30 x i8] c"android/content/ComponentName\00", align 16
@__java_type_names.128 = internal constant [32 x i8] c"android/content/ContentResolver\00", align 16
@__java_type_names.129 = internal constant [24 x i8] c"android/content/Context\00", align 16
@__java_type_names.130 = internal constant [31 x i8] c"android/content/ContextWrapper\00", align 16
@__java_type_names.131 = internal constant [23 x i8] c"android/content/Intent\00", align 16
@__java_type_names.132 = internal constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 16
@__java_type_names.133 = internal constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 16
@__java_type_names.134 = internal constant [34 x i8] c"android/content/SharedPreferences\00", align 16
@__java_type_names.135 = internal constant [24 x i8] c"android/content/LocusId\00", align 16
@__java_type_names.136 = internal constant [35 x i8] c"android/content/res/ColorStateList\00", align 16
@__java_type_names.137 = internal constant [30 x i8] c"android/content/res/Resources\00", align 16
@__java_type_names.138 = internal constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 16
@__java_type_names.139 = internal constant [33 x i8] c"android/content/pm/ComponentInfo\00", align 16
@__java_type_names.140 = internal constant [31 x i8] c"android/content/pm/PackageInfo\00", align 16
@__java_type_names.141 = internal constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 16
@__java_type_names.142 = internal constant [34 x i8] c"android/content/pm/PackageManager\00", align 16
@__java_type_names.143 = internal constant [56 x i8] c"android/content/pm/PackageManager$NameNotFoundException\00", align 16
@__java_type_names.144 = internal constant [31 x i8] c"android/content/pm/ResolveInfo\00", align 16
@__java_type_names.145 = internal constant [31 x i8] c"android/content/pm/ServiceInfo\00", align 16
@__java_type_names.146 = internal constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 16
@__java_type_names.147 = internal constant [29 x i8] c"android/content/pm/Signature\00", align 16
@__java_type_names.148 = internal constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 16
@__java_type_names.149 = internal constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 16
@__java_type_names.150 = internal constant [21 x i8] c"java/util/Collection\00", align 16
@__java_type_names.151 = internal constant [18 x i8] c"java/util/HashMap\00", align 16
@__java_type_names.152 = internal constant [20 x i8] c"java/util/ArrayList\00", align 16
@__java_type_names.153 = internal constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 16
@__java_type_names.154 = internal constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 16
@__java_type_names.155 = internal constant [18 x i8] c"java/util/HashSet\00", align 16
@__java_type_names.156 = internal constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 16
@__java_type_names.157 = internal constant [22 x i8] c"java/util/Enumeration\00", align 16
@__java_type_names.158 = internal constant [19 x i8] c"java/util/Iterator\00", align 16
@__java_type_names.159 = internal constant [17 x i8] c"java/util/Random\00", align 16
@__java_type_names.160 = internal constant [28 x i8] c"java/util/function/Consumer\00", align 16
@__java_type_names.161 = internal constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 16
@__java_type_names.162 = internal constant [39 x i8] c"java/security/GeneralSecurityException\00", align 16
@__java_type_names.163 = internal constant [24 x i8] c"java/security/Principal\00", align 16
@__java_type_names.164 = internal constant [23 x i8] c"java/security/KeyStore\00", align 16
@__java_type_names.165 = internal constant [28 x i8] c"java/security/MessageDigest\00", align 16
@__java_type_names.166 = internal constant [31 x i8] c"java/security/MessageDigestSpi\00", align 16
@__java_type_names.167 = internal constant [39 x i8] c"java/security/NoSuchAlgorithmException\00", align 16
@__java_type_names.168 = internal constant [27 x i8] c"java/security/SecureRandom\00", align 16
@__java_type_names.169 = internal constant [31 x i8] c"java/security/cert/Certificate\00", align 16
@__java_type_names.170 = internal constant [30 x i8] c"java/nio/channels/FileChannel\00", align 16
@__java_type_names.171 = internal constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 16
@__java_type_names.172 = internal constant [26 x i8] c"java/net/ConnectException\00", align 16
@__java_type_names.173 = internal constant [27 x i8] c"java/net/HttpURLConnection\00", align 16
@__java_type_names.174 = internal constant [27 x i8] c"java/net/InetSocketAddress\00", align 16
@__java_type_names.175 = internal constant [27 x i8] c"java/net/ProtocolException\00", align 16
@__java_type_names.176 = internal constant [15 x i8] c"java/net/Proxy\00", align 1
@__java_type_names.177 = internal constant [20 x i8] c"java/net/Proxy$Type\00", align 16
@__java_type_names.178 = internal constant [23 x i8] c"java/net/SocketAddress\00", align 16
@__java_type_names.179 = internal constant [25 x i8] c"java/net/SocketException\00", align 16
@__java_type_names.180 = internal constant [32 x i8] c"java/net/SocketTimeoutException\00", align 16
@__java_type_names.181 = internal constant [33 x i8] c"java/net/UnknownServiceException\00", align 16
@__java_type_names.182 = internal constant [13 x i8] c"java/net/URL\00", align 1
@__java_type_names.183 = internal constant [23 x i8] c"java/net/URLConnection\00", align 16
@__java_type_names.184 = internal constant [18 x i8] c"java/lang/Boolean\00", align 16
@__java_type_names.185 = internal constant [15 x i8] c"java/lang/Byte\00", align 1
@__java_type_names.186 = internal constant [20 x i8] c"java/lang/Character\00", align 16
@__java_type_names.187 = internal constant [16 x i8] c"java/lang/Class\00", align 16
@__java_type_names.188 = internal constant [29 x i8] c"java/lang/ClassCastException\00", align 16
@__java_type_names.189 = internal constant [17 x i8] c"java/lang/Double\00", align 16
@__java_type_names.190 = internal constant [15 x i8] c"java/lang/Enum\00", align 1
@__java_type_names.191 = internal constant [16 x i8] c"java/lang/Error\00", align 16
@__java_type_names.192 = internal constant [20 x i8] c"java/lang/Exception\00", align 16
@__java_type_names.193 = internal constant [16 x i8] c"java/lang/Float\00", align 16
@__java_type_names.194 = internal constant [21 x i8] c"java/lang/Appendable\00", align 16
@__java_type_names.195 = internal constant [23 x i8] c"java/lang/CharSequence\00", align 16
@__java_type_names.196 = internal constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 16
@__java_type_names.197 = internal constant [32 x i8] c"java/lang/IllegalStateException\00", align 16
@__java_type_names.198 = internal constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 16
@__java_type_names.199 = internal constant [18 x i8] c"java/lang/Integer\00", align 16
@__java_type_names.200 = internal constant [19 x i8] c"java/lang/Runnable\00", align 16
@__java_type_names.201 = internal constant [15 x i8] c"java/lang/Long\00", align 1
@__java_type_names.202 = internal constant [31 x i8] c"java/lang/NullPointerException\00", align 16
@__java_type_names.203 = internal constant [17 x i8] c"java/lang/Number\00", align 16
@__java_type_names.204 = internal constant [17 x i8] c"java/lang/Object\00", align 16
@__java_type_names.205 = internal constant [27 x i8] c"java/lang/RuntimeException\00", align 16
@__java_type_names.206 = internal constant [28 x i8] c"java/lang/SecurityException\00", align 16
@__java_type_names.207 = internal constant [16 x i8] c"java/lang/Short\00", align 16
@__java_type_names.208 = internal constant [17 x i8] c"java/lang/String\00", align 16
@__java_type_names.209 = internal constant [17 x i8] c"java/lang/Thread\00", align 16
@__java_type_names.210 = internal constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 16
@__java_type_names.211 = internal constant [20 x i8] c"java/lang/Throwable\00", align 16
@__java_type_names.212 = internal constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 16
@__java_type_names.213 = internal constant [23 x i8] c"java/io/FileDescriptor\00", align 16
@__java_type_names.214 = internal constant [24 x i8] c"java/io/FileInputStream\00", align 16
@__java_type_names.215 = internal constant [18 x i8] c"java/io/Closeable\00", align 16
@__java_type_names.216 = internal constant [20 x i8] c"java/io/InputStream\00", align 16
@__java_type_names.217 = internal constant [31 x i8] c"java/io/InterruptedIOException\00", align 16
@__java_type_names.218 = internal constant [20 x i8] c"java/io/IOException\00", align 16
@__java_type_names.219 = internal constant [21 x i8] c"java/io/OutputStream\00", align 16
@__java_type_names.220 = internal constant [20 x i8] c"java/io/PrintWriter\00", align 16
@__java_type_names.221 = internal constant [21 x i8] c"java/io/StringWriter\00", align 16
@__java_type_names.222 = internal constant [15 x i8] c"java/io/Writer\00", align 1
@__java_type_names.223 = internal constant [25 x i8] c"mono/android/TypeManager\00", align 16
@__java_type_names.224 = internal constant [41 x i8] c"crc648316b0a9aa8cfd61/BrowserTabActivity\00", align 16
@__java_type_names.225 = internal constant [49 x i8] c"microsoft/identity/client/AuthenticationActivity\00", align 16
@__java_type_names.226 = internal constant [50 x i8] c"crc64ed1888fb4925e3b7/AuthenticationAgentActivity\00", align 16
@__java_type_names.227 = internal constant [68 x i8] c"crc64ed1888fb4925e3b7/AuthenticationAgentActivity_CoreWebViewClient\00", align 16
@__java_type_names.228 = internal constant [55 x i8] c"androidx/versionedparcelable/CustomVersionedParcelable\00", align 16
@__java_type_names.229 = internal constant [35 x i8] c"crc642f584d5611e72b84/MainActivity\00", align 16
@__java_type_names.230 = internal constant [31 x i8] c"com/ForegroundService/GetMedia\00", align 16
@__java_type_names.231 = internal constant [63 x i8] c"crc642f584d5611e72b84/MainActivity_MyUtteranceProgressListener\00", align 16

@java_type_names = local_unnamed_addr constant [232 x i8*] [
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.0, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.1, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.2, i32 0, i32 0),
	i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__java_type_names.3, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__java_type_names.4, i32 0, i32 0),
	i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__java_type_names.5, i32 0, i32 0),
	i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__java_type_names.6, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.7, i32 0, i32 0),
	i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__java_type_names.8, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.9, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.10, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.11, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.12, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.13, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.14, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.15, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.16, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.17, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.18, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.19, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.20, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.21, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.22, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.23, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.24, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.25, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.26, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.27, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.28, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.29, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.30, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.31, i32 0, i32 0),
	i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__java_type_names.32, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.33, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.34, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.35, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.36, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.37, i32 0, i32 0),
	i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__java_type_names.38, i32 0, i32 0),
	i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__java_type_names.39, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.40, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.41, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.42, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.43, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.44, i32 0, i32 0),
	i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__java_type_names.45, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.46, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.47, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.48, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.49, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.50, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.51, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.52, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.53, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.54, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.55, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.56, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.57, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.58, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.59, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.60, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.61, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.62, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.63, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.64, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.65, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.66, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.67, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.68, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.69, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.70, i32 0, i32 0),
	i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__java_type_names.71, i32 0, i32 0),
	i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__java_type_names.72, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.73, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.74, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.75, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.76, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.77, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.78, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.79, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.80, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.81, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.82, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.83, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.84, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.85, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.86, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.87, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.88, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.89, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.90, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.91, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.92, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.93, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.94, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.95, i32 0, i32 0),
	i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__java_type_names.96, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.97, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.98, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.99, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.100, i32 0, i32 0),
	i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__java_type_names.101, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.102, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.103, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.104, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.105, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.106, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.107, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.108, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.109, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.110, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.111, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.112, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.113, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.114, i32 0, i32 0),
	i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__java_type_names.115, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.116, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.117, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.118, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.119, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.120, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.121, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.122, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.123, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.124, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.125, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__java_type_names.126, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.127, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.128, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.129, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.130, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.131, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.132, i32 0, i32 0),
	i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__java_type_names.133, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.134, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.135, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.136, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.137, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.138, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.139, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.140, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.141, i32 0, i32 0),
	i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__java_type_names.142, i32 0, i32 0),
	i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__java_type_names.143, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.144, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.145, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.146, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.147, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.148, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.149, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.150, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.151, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.152, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.153, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.154, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.155, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.156, i32 0, i32 0),
	i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__java_type_names.157, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.158, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.159, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.160, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.161, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.162, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.163, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.164, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.165, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.166, i32 0, i32 0),
	i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__java_type_names.167, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.168, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.169, i32 0, i32 0),
	i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__java_type_names.170, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__java_type_names.171, i32 0, i32 0),
	i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__java_type_names.172, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.173, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.174, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.175, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.176, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.177, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.178, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.179, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.180, i32 0, i32 0),
	i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__java_type_names.181, i32 0, i32 0),
	i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__java_type_names.182, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.183, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.184, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.185, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.186, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.187, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__java_type_names.188, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.189, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.190, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.191, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.192, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.193, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.194, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.195, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.196, i32 0, i32 0),
	i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__java_type_names.197, i32 0, i32 0),
	i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__java_type_names.198, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.199, i32 0, i32 0),
	i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__java_type_names.200, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.201, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.202, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.203, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.204, i32 0, i32 0),
	i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__java_type_names.205, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__java_type_names.206, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__java_type_names.207, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.208, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__java_type_names.209, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.210, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.211, i32 0, i32 0),
	i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__java_type_names.212, i32 0, i32 0),
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__java_type_names.213, i32 0, i32 0),
	i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__java_type_names.214, i32 0, i32 0),
	i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__java_type_names.215, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.216, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.217, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.218, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.219, i32 0, i32 0),
	i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__java_type_names.220, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__java_type_names.221, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__java_type_names.222, i32 0, i32 0),
	i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__java_type_names.223, i32 0, i32 0),
	i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__java_type_names.224, i32 0, i32 0),
	i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__java_type_names.225, i32 0, i32 0),
	i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__java_type_names.226, i32 0, i32 0),
	i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__java_type_names.227, i32 0, i32 0),
	i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__java_type_names.228, i32 0, i32 0),
	i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__java_type_names.229, i32 0, i32 0),
	i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__java_type_names.230, i32 0, i32 0),
	i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__java_type_names.231, i32 0, i32 0)
], align 16

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/release/7.0.2xx @ 58a54aef5213e50e3e59008e244a64896fe971b6"}
