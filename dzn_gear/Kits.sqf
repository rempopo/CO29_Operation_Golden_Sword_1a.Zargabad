// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]


#define PMC_UNI	["TRYK_U_B_BLKOCP_CombatUniform","TRYK_U_B_BLOD_T","TRYK_U_B_BLTAN_T","TRYK_U_B_C01_Tsirt","TRYK_U_B_wh_OD_Rollup_CombatUniform","TRYK_shirts_DENIM_BL","TRYK_shirts_DENIM_BK","TRYK_shirts_DENIM_BWH","TRYK_shirts_DENIM_od","TRYK_shirts_DENIM_R","TRYK_shirts_DENIM_RED2","TRYK_shirts_DENIM_WH","TRYK_shirts_DENIM_WHB","TRYK_shirts_DENIM_ylb","TRYK_shirts_DENIM_RED2_Sleeve","TRYK_shirts_BLK_PAD_BLU3","TRYK_shirts_OD_PAD","TRYK_shirts_BLK_PAD_YEL","TRYK_U_B_BLK_T_BG_WH","TRYK_B_TRYK_UCP_T"]
#define PMC_VEST ["TRYK_V_ArmorVest_green2","TRYK_V_ArmorVest_AOR2_2","TRYK_V_ArmorVest_AOR2","TRYK_V_ArmorVest_green","TRYK_V_PlateCarrier_ACU","TRYK_V_PlateCarrier_wood","TRYK_V_PlateCarrier_JSDF"]
#define PMC_GOG ["rhs_googles_orange","rhs_googles_black","G_Spectacles_Tinted","G_Squares","G_Sport_Greenblack","G_Sport_Blackred","G_Sport_Checkered","G_Sport_BlackWhite","G_Sport_Blackyellow","G_Sport_Red","G_Spectacles","G_Shades_Red","G_Shades_Green","G_Shades_Blue","G_Lowprofile","G_Aviator","rhs_googles_yellow"]
#define PMC_HED ["TRYK_H_PASGT_OD","TRYK_H_PASGT_BLK","H_Cap_blk_ION","H_Cap_tan_specops_US","H_Cap_usblack","H_MilCap_gry","rhsusf_ach_bare_wood","rhsusf_opscore_fg","TRYK_H_headsetcap_blk"]


// ****************
kit_sec_gr = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"B_AssaultPack_cbr",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4_m320","30Rnd_556x45_Stanag",["rhsusf_acc_SF3P556","acc_flashlight","rhsusf_acc_ACOG_RMR_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_XL50",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_M433_HEDP",8]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["SmokeShellGreen",2],["SmokeShellRed",2]]]
];

kit_sec_sl = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"tf_rt1523g_big_bwmod",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_wd","30Rnd_556x45_Stanag",["rhsusf_acc_SF3P556","acc_flashlight","rhsusf_acc_ACOG_RMR_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_XL50",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["SmokeShellGreen",2],["SmokeShellRed",2]]]
];

kit_sec_ftl = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"B_AssaultPack_cbr",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_m4_m320","30Rnd_556x45_Stanag",["rhsusf_acc_SF3P556","acc_flashlight","rhsusf_acc_ACOG_RMR_3d",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_EarPlugs",1],["ACE_epinephrine",2],["ACE_Flashlight_XL50",1],["ACE_morphine",2],["ACE_packingBandage",5],["ACE_tourniquet",2]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_M433_HEDP",8]]],
	["<BACKPACK ITEMS >> ",[["HandGrenade",2],["SmokeShellGreen",2],["SmokeShellRed",2]]]
];

kit_sec_ar = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"B_AssaultPack_cbr",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_m249_pip_S_para","rhs_200rnd_556x45_M_SAW",["","rhs_acc_2dpZenit_ris","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_sec_r0 = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"B_AssaultPack_cbr",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d10","30Rnd_556x45_Stanag",["rhsusf_acc_SFMB556","rhs_acc_2dpZenit_ris","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_200rnd_556x45_M_SAW",2]]]
];

kit_sec_r1 = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"B_AssaultPack_cbr",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_hk416d145","30Rnd_556x45_Stanag",["rhsusf_acc_SFMB556","rhs_acc_2dpZenit_ris","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_200rnd_556x45_M_SAW",2]]]
];

kit_sec_r2 = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"B_AssaultPack_cbr",PMC_HED,PMC_GOG],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18","30Rnd_556x45_Stanag",["","rhs_acc_2dpZenit_ris","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_200rnd_556x45_M_SAW",2]]]
];

kit_sec_r3 = [
	["<EQUIPEMENT >>  ",PMC_UNI,PMC_VEST,"B_AssaultPack_cbr","H_Cap_tan_specops_US","G_Spectacles"],
	["<PRIMARY WEAPON >>  ","rhs_weap_m27iar","30Rnd_556x45_Stanag",["rhsusf_acc_SFMB556","rhs_acc_2dpZenit_ris","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_M136_hedp","rhs_m136_hedp_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["rhs_200rnd_556x45_M_SAW",2]]]
];

kit_sec_r = [
"kit_sec_r0",
"kit_sec_r1",
"kit_sec_r3",
"kit_sec_r2"
];


kit_civ_vip = [
	["<EQUIPEMENT >>  ","TRYK_SUITS_BLK_F","Specter_MBSS_PACA_l_BLK","","H_Titan_Helmet","rhs_googles_black"],
	["<PRIMARY WEAPON >>  ","rhs_weap_mk18_grip2","30Rnd_556x45_Stanag",["rhsusf_acc_SF3P556","acc_flashlight","rhsusf_acc_eotech_552","rhsusf_acc_grip2"]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch","tf_anprc152","ACE_Vector"],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_elasticBandage",5]]],
	["<VEST ITEMS >> ",[["ACE_quikclot",5],["ACE_epinephrine",2],["ACE_morphine",2],["ACE_packingBandage",5],["PRIMARY MAG",4],["ACE_HandFlare_Yellow",1],["SmokeShellGreen",1],["HandGrenade",1]]],
	["<BACKPACK ITEMS >> ",[]]
];


/*
 *	INSURGENTS
 */
 
#define	INS_HEAD		["CUP_H_TKI_Pakol_2_03","CUP_H_TKI_Pakol_1_06","CUP_H_TKI_Pakol_1_02","CUP_H_TKI_Lungee_06","CUP_H_TKI_Lungee_04","CUP_H_TKI_Lungee_01","CUP_H_TKI_Lungee_03"]
#define	INS_UNI_1		["CUP_U_O_Partisan_TTsKO_Mixed","CUP_U_O_Partisan_TTsKO","CUP_B_USMC_Navy_Brown","CUP_U_O_TK_MixedCamo","CUP_U_O_SLA_Desert","CUP_U_O_SLA_Desert","CUP_U_O_SLA_MixedCamo","CUP_U_I_GUE_Woodland1"]
#define	INS_VEST_1		["CUP_V_O_TK_Vest_1","CUP_V_O_TK_Vest_1"]
#define	INS_UNI_2		["CUP_O_TKI_Khet_Partug_06","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_04"]
#define	INS_VEST_2		["CUP_V_OI_TKI_Jacket4_03","CUP_V_OI_TKI_Jacket2_03","CUP_V_OI_TKI_Jacket2_01","CUP_V_OI_TKI_Jacket2_01"]
#define	INS_RADIO		["ItemRadio", "", "", "", "", ""]
#define	INS_MAP		["ItemMap", "", "", "", "", ""]
#define	INS_AITEMS		INS_RADIO, INS_MAP
#define	INS_R_WEP		["rhs_weap_ak74m","rhs_weap_akm","rhs_weap_akms","CUP_arifle_FNFAL","CUP_srifle_LeeEnfield"]
#define	INS_R_MAG		["rhs_30Rnd_545x39_AK","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","CUP_20Rnd_762x51_FNFAL_M","CUP_10x_303_M"]

kit_ins_random = [
	"kit_ins_fighter_r"
	,"kit_ins_fighter_gr"	
	,"kit_ins_light_marksman"
	,"kit_ins_light_r"
	
	,"kit_ins_fighter_r","kit_ins_fighter_gr","kit_ins_light_marksman","kit_ins_light_r"
	,"kit_ins_fighter_r","kit_ins_fighter_gr","kit_ins_light_marksman","kit_ins_light_r"
	,"kit_ins_fighter_r","kit_ins_fighter_gr","kit_ins_light_marksman","kit_ins_light_r"
	
	
	,"kit_ins_fighter_rat"
	,"kit_ins_fighter_mg"
	,"kit_ins_fighter_rpg"
	,"kit_ins_light_mg"
	,"kit_ins_light_rat"
	,"kit_ins_light_rpg"
];

kit_ins_fighter_gr = [
	["<EQUIPEMENT >>  ",INS_UNI_1,INS_VEST_1,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",["rhs_weap_ak74m_gp25","rhs_weap_akm_gp25"],["rhs_30Rnd_545x39_AK","rhs_30Rnd_762x39mm"],["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_VOG25",6],["rhs_VOG25P",6],["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_fighter_r = [
	["<EQUIPEMENT >>  ",INS_UNI_1,INS_VEST_1,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  "
		,["rhs_weap_ak74m","rhs_weap_akm","rhs_weap_akms","CUP_arifle_FNFAL","CUP_srifle_LeeEnfield"]
		,["rhs_30Rnd_545x39_AK","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm","CUP_20Rnd_762x51_FNFAL_M","CUP_10x_303_M"]
		,["","","",""]
	],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_rgd5",4],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_fighter_rat = [
	["<EQUIPEMENT >>  ",INS_UNI_1,INS_VEST_1,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  "
		,INS_R_WEP
		,INS_R_MAG
		,["","","",""]
	],
	["<LAUNCHER WEAPON >>  "
		,["rhs_weap_rpg26","rhs_weap_rshg2"]
		,["rhs_rpg26_mag","rhs_rshg2_mag"]
		,["","","",""]
	],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_ins_fighter_mg = [
	["<EQUIPEMENT >>  ",INS_UNI_1,INS_VEST_1,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ", "rhs_weap_pkm", "rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1],["rhs_mag_rdg2_black",2],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];
kit_ins_fighter_rpg = [
	["<EQUIPEMENT >>  ",INS_UNI_1,INS_VEST_1,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_R_WEP,INS_R_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7VL_mag",["","","",""]],	
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["rhs_mag_rdg2_black",2],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["SECONDARY MAG",2]]]
];



kit_ins_light_marksman = [
	["<EQUIPEMENT >>  ",INS_UNI_2,INS_VEST_2,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svdp_wd","rhs_10Rnd_762x54mmR_7N1",["","","rhs_acc_pso1m2",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_black",2],["PRIMARY MAG",8],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_light_r = [
	["<EQUIPEMENT >>  ",INS_UNI_2,INS_VEST_2,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_R_WEP,INS_R_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["rhs_mag_rdg2_black",2],["PRIMARY MAG",8],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ins_light_rat = [
	["<EQUIPEMENT >>  ",INS_UNI_2,INS_VEST_2,"",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_R_WEP,INS_R_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  "
		,["rhs_weap_rpg26","rhs_weap_rshg2"]
		,["rhs_rpg26_mag","rhs_rshg2_mag"]
		,["","","",""]
	],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_rgd5",2],["rhs_mag_rdg2_black",2]]],
	["<BACKPACK ITEMS >> ",[]]
];


kit_ins_light_mg = [
	["<EQUIPEMENT >>  ",INS_UNI_2,INS_VEST_2,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ", "rhs_weap_pkm", "rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1],["rhs_mag_rdg2_black",2],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",3]]]
];

kit_ins_light_rpg = [
	["<EQUIPEMENT >>  ",INS_UNI_2,INS_VEST_2,"CUP_B_AlicePack_Khaki",INS_HEAD,""],
	["<PRIMARY WEAPON >>  ",INS_R_WEP,INS_R_MAG,["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7VL_mag",["","","",""]],	
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", INS_AITEMS],
	["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",10],["ACE_packingBandage",2],["ACE_elasticBandage",2],["ACE_tourniquet",1],["ACE_Cellphone",1]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["rhs_mag_rdg2_black",2],["rhs_mag_rgd5",1]]],
	["<BACKPACK ITEMS >> ",[["rhs_rpg7_OG7V_mag",2],["SECONDARY MAG",2]]]
];

 
kit_cargo = [
	[],
	[["rhs_200rnd_556x45_M_SAW",20],["rhs_mag_30Rnd_556x45_M855A1_Stanag",30],["rhs_mag_m67",20],["rhs_mag_m18_green",20],["rhs_mag_m18_red",20],["rhs_mag_an_m8hc",20]],
	[["ACE_fieldDressing",30],["ACE_elasticBandage",30],["ACE_quikclot",30],["ACE_bodyBag",20],["ACE_CableTie",30],["ACE_epinephrine",15],["ACE_morphine",15],["ACE_packingBandage",30],["ACE_SpraypaintRed",4]],
	[]
];