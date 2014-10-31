#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MX_F",nil,35000],
						["SMG_02_ACO_F",nil,30000],
						["HandGrenade_Stone","Flashbang",1700],
						["MineDetector",nil,1000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
						["srifle_LRR_F",nil,50000],
						["arifle_MX_SW_F",nil,42500],
						["LMG_Mk200_F",nil,45000],
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["HandGrenade_Stone","Flashbang",1700],
						["arifle_MXC_F",nil,30000],
						["optic_Arco",nil,2500],
						["muzzle_snds_H",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200],
						["200Rnd_65x39_cased_Box",nil,750],
						["200Rnd_65x39_cased_Box_Tracer",nil,900],
						["100Rnd_65x39_caseless_mag",nil,500],
						["100Rnd_65x39_caseless_mag_Tracer",nil,650],
						["7Rnd_408_Mag",nil,500],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_SOS",nil,15000],
						["optic_Arco",nil,1500],
						["optic_Aco",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_Aco_smg",nil,450],
						["optic_ACO_grn_smg",nil,450],
						["optic_Holosight",nil,600],
						["optic_Holosight_smg",nil,550],
						["optic_Yorris",nil,300],
						["optic_MRD",nil,300],
						["optic_LRPS",nil,15000],
						["optic_NVS",nil,5000],
						["optic_Nightstalker",nil,7500],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,12500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Mk20_F",nil,25000],
						["arifle_TRG21_F",nil,27500],
						["arifle_MX_GL_F",nil,50000],
						["SMG_01_F",nil,17500],
						["SMG_02_F,nil,19000],
						["arifle_MX_F",nil,40000],
						["arifle_MXM_F",nil,50000],
						["arifle_MX_SW_F",nil,75000],
						["LMG_Mk200_F",nil,75000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["hgun_P07_F",nil,5000],
						["hgun_P07_snds_F",nil,7500],
						["hgun_Rook40_F",nil,5000],
						["hgun_Rook40_snds_F",nil,7500],
						["srifle_EBR_F",nil,50000],
						["srifle_GM6_F",nil,60000],
						["srifle_LRR_F",nil,70000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_SOS",nil,15000],
						["optic_Arco",nil,1500],
						["optic_Aco",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_Aco_smg",nil,450],
						["optic_ACO_grn_smg",nil,450],
						["optic_Holosight",nil,600],
						["optic_Holosight_smg",nil,550],
						["optic_Yorris",nil,300],
						["optic_MRD",nil,300],
						["optic_LRPS",nil,15000],
						["optic_NVS",nil,5000],
						["optic_Nightstalker",nil,7500],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,12500],
						["muzzle_snds_H",nil,750],
						["muzzle_snds_L",nil,750],
						["muzzle_snds_M",nil,750],
						["muzzle_snds_B",nil,750],
						["muzzle_snds_H_MG",nil,750],
						["16Rnd_9x21_Mag",nil,100],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,500],
						["10Rnd_762x51_Mag",nil,500],
						["200Rnd_65x39_cased_Box",nil,1500],
						["200Rnd_65x39_cased_Box_Tracer",nil,1750],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["100Rnd_65x39_caseless_mag",nil,750],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,400],
						["20Rnd_762x51_Mag",nil,600],
						["5Rnd_127x108_Mag",nil,450],
						["5Rnd_127x108_APDS_Mag",nil,550],
						["7Rnd_408_Mag",nil,600],
						["30Rnd_65x39_caseless_green",nil,275],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,1200],
						["Rangefinder",nil,3000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Mk20_F",nil,25000],
						["arifle_TRG21_F",nil,27500],
						["arifle_MX_GL_F",nil,50000],
						["SMG_01_F",nil,17500],
						["SMG_02_F,nil,19000],
						["arifle_MX_F",nil,40000],
						["arifle_MXM_F",nil,50000],
						["arifle_MX_SW_F",nil,75000],
						["LMG_Mk200_F",nil,75000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["hgun_P07_F",nil,5000],
						["hgun_P07_snds_F",nil,7500],
						["hgun_Rook40_F",nil,5000],
						["hgun_Rook40_snds_F",nil,7500],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["acc_pointer_IR",nil,1000],
						["optic_Hamr",nil,7500],
						["optic_SOS",nil,15000],
						["optic_Arco",nil,1500],
						["optic_Aco",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_Aco_smg",nil,450],
						["optic_ACO_grn_smg",nil,450],
						["optic_Holosight",nil,600],
						["optic_Holosight_smg",nil,550],
						["optic_Yorris",nil,300],
						["optic_MRD",nil,300],
						["optic_LRPS",nil,15000],
						["optic_NVS",nil,5000],
						["optic_Nightstalker",nil,7500],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,12500],
						["muzzle_snds_H",nil,750],
						["muzzle_snds_L",nil,750],
						["muzzle_snds_M",nil,750],
						["muzzle_snds_B",nil,750],
						["muzzle_snds_H_MG",nil,750],
						["16Rnd_9x21_Mag",nil,100],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,500],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,500],
						["10Rnd_762x51_Mag",nil,500],
						["200Rnd_65x39_cased_Box",nil,1500],
						["200Rnd_65x39_cased_Box_Tracer",nil,1750],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_65x39_caseless_mag_Tracer",nil,500],
						["100Rnd_65x39_caseless_mag",nil,750],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,400],
						["30Rnd_65x39_caseless_green",nil,275],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,1200],
						["Rangefinder",nil,3000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};