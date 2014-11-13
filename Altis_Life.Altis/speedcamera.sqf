private ["_veh","_speedCam16001","_speedCam16002","_speedCam16003","_speedCam16004","_speedCam16005","_speedCam16006","_speedCam16007","_speedCam16008","_speedCam16009","_speedCam16010","_speedCam16011","_speedCam16010","_speedCam12001","_speedCam12002","_speedCam12003","_speedCam12004","_speedCam12005","_speedCam12006","_speedCam12007","_speedCam12008","_speedCam12009","_speedCam12010","_speedCam12011","_speedCam12012","_speedCam12013","_speedCam12014","_speedCam12015","_speedCam12016","_speedCam12017","_speedCam12018","_speedCam12019","_speedCam12020","_speedCam12021","_speedCam12022","_speedCam12023","_speedCam12024","_speedCam12025","_speedCam12026","_speedCam12027","_speedCam12028","_speedCam12029","_speedCam12030","_speedCam12031","_speedCam12032","_speedCam12033","_speedCam12034","_speedCam12035","_speedCam12036","_speedCam12037","_speedCam12038","_speedCam12039","_speedCam12040","_speedCam12041","_speedCam07001","_speedCam07002","_speedCam07003","_speedCam07004","_speedCam07005","_speedCam07006","_speedCam07007","_speedCam07008","_speedCam07009","_speedCam07010","_speedCam07011","_speedCam07012","_speedCam05001","_speedCam05002","_speedCam05003","_speedCam05004","_speedCam05005","_speedCam05006","_speedCam05007","_speedCam05008","_speedCam05009","_speedCam05010","_speedCam05011","_speedCam05012","_speedCam05013","_speedCam05014","_speedCam05015","_speedCam05016","_speedCam05017","_speedCam05018","_speedCam05019","_speedCam05020","_speedCam05021","_speedCam05022","_speedCam05023","_speedCam05024","_speedCam05025","_speedCam05026","_speedCam05027","_speedCam05028","_speedCam05029","_speedCam05030","_speedCam05031","_speedCam05032","_speedCam05033","_speedCam05034","_speedCam05035","_speedCam05036","_speedCam05037","_speedCam05038","_speedCam05039","_speedCam05040","_speedCam05041","_speedCam05042","_speedCam05043","_speedCam05044","_speedCam05045","_speedCam05046","_speedCam05047","_speedCam05048","_speedCam05049","_speedCam05050","_speedCam05051","_speedCam05052","_speedCam05053","_speedCam05054","_speedCam05055","_speedCam05056","_speedCam05057","_speedCam05058","_speedCam05059","_speedCam05060","_speedCam05061","_speedCam05062","_speedCam05063","_speedCam05064","_speedCam05065","_speedCam05066","_speedCam05067","_speedCam05068","_speedCam05069","_dis"];

_veh = vehicle player;
_dis = 60;

_speedCam16001 = getMarkerPos "speed_cam_160_1";
_speedCam16002 = getMarkerPos "speed_cam_160_2";
_speedCam16003 = getMarkerPos "speed_cam_160_3";
_speedCam16004 = getMarkerPos "speed_cam_160_4";
_speedCam16005 = getMarkerPos "speed_cam_160_5";
_speedCam16006 = getMarkerPos "speed_cam_160_6";
_speedCam16007 = getMarkerPos "speed_cam_160_7";
_speedCam16008 = getMarkerPos "speed_cam_160_8";
_speedCam16009 = getMarkerPos "speed_cam_160_9";
_speedCam16010 = getMarkerPos "speed_cam_160_10";
_speedCam16011 = getMarkerPos "speed_cam_160_11";
_speedCam16012 = getMarkerPos "speed_cam_160_12";
_speedCam16013 = getMarkerPos "speed_cam_160_13";

_speedCam12001 = getMarkerPos "speed_cam_120_1";
_speedCam12002 = getMarkerPos "speed_cam_120_2";
_speedCam12003 = getMarkerPos "speed_cam_120_3";
_speedCam12004 = getMarkerPos "speed_cam_120_4";
_speedCam12005 = getMarkerPos "speed_cam_120_5";
_speedCam12006 = getMarkerPos "speed_cam_120_6";
_speedCam12007 = getMarkerPos "speed_cam_120_7";
_speedCam12008 = getMarkerPos "speed_cam_120_8";
_speedCam12009 = getMarkerPos "speed_cam_120_9";
_speedCam12010 = getMarkerPos "speed_cam_120_10";
_speedCam12011 = getMarkerPos "speed_cam_120_11";
_speedCam12012 = getMarkerPos "speed_cam_120_12";
_speedCam12013 = getMarkerPos "speed_cam_120_13";
_speedCam12014 = getMarkerPos "speed_cam_120_14";
_speedCam12015 = getMarkerPos "speed_cam_120_15";
_speedCam12016 = getMarkerPos "speed_cam_120_16";
_speedCam12017 = getMarkerPos "speed_cam_120_17";
_speedCam12018 = getMarkerPos "speed_cam_120_18";
_speedCam12019 = getMarkerPos "speed_cam_120_19";
_speedCam12020 = getMarkerPos "speed_cam_120_20";
_speedCam12021 = getMarkerPos "speed_cam_120_21";
_speedCam12022 = getMarkerPos "speed_cam_120_22";
_speedCam12023 = getMarkerPos "speed_cam_120_23";
_speedCam12024 = getMarkerPos "speed_cam_120_24";
_speedCam12025 = getMarkerPos "speed_cam_120_25";
_speedCam12026 = getMarkerPos "speed_cam_120_26";
_speedCam12027 = getMarkerPos "speed_cam_120_27";
_speedCam12028 = getMarkerPos "speed_cam_120_28";
_speedCam12029 = getMarkerPos "speed_cam_120_29";
_speedCam12030 = getMarkerPos "speed_cam_120_30";
_speedCam12031 = getMarkerPos "speed_cam_120_31";
_speedCam12032 = getMarkerPos "speed_cam_120_32";
_speedCam12033 = getMarkerPos "speed_cam_120_33";
_speedCam12034 = getMarkerPos "speed_cam_120_34";
_speedCam12035 = getMarkerPos "speed_cam_120_35";
_speedCam12036 = getMarkerPos "speed_cam_120_36";
_speedCam12037 = getMarkerPos "speed_cam_120_37";
_speedCam12038 = getMarkerPos "speed_cam_120_38";
_speedCam12039 = getMarkerPos "speed_cam_120_39";
_speedCam12040 = getMarkerPos "speed_cam_120_40";
_speedCam12041 = getMarkerPos "speed_cam_120_41";

_speedCam07001 = getMarkerPos "speed_cam_70_1";
_speedCam07002 = getMarkerPos "speed_cam_70_2";
_speedCam07003 = getMarkerPos "speed_cam_70_3";
_speedCam07004 = getMarkerPos "speed_cam_70_4";
_speedCam07005 = getMarkerPos "speed_cam_70_5";
_speedCam07006 = getMarkerPos "speed_cam_70_6";
_speedCam07007 = getMarkerPos "speed_cam_70_7";
_speedCam07008 = getMarkerPos "speed_cam_70_8";
_speedCam07009 = getMarkerPos "speed_cam_70_9";
_speedCam07010 = getMarkerPos "speed_cam_70_10";
_speedCam07011 = getMarkerPos "speed_cam_70_11";
_speedCam07012 = getMarkerPos "speed_cam_70_12";

_speedCam05001 = getMarkerPos "speed_cam_50_1";
_speedCam05002 = getMarkerPos "speed_cam_50_2";
_speedCam05003 = getMarkerPos "speed_cam_50_3";
_speedCam05004 = getMarkerPos "speed_cam_50_4";
_speedCam05005 = getMarkerPos "speed_cam_50_5";
_speedCam05006 = getMarkerPos "speed_cam_50_6";
_speedCam05007 = getMarkerPos "speed_cam_50_7";
_speedCam05008 = getMarkerPos "speed_cam_50_8";
_speedCam05009 = getMarkerPos "speed_cam_50_9";
_speedCam05010 = getMarkerPos "speed_cam_50_10";
_speedCam05011 = getMarkerPos "speed_cam_50_11";
_speedCam05012 = getMarkerPos "speed_cam_50_12";
_speedCam05013 = getMarkerPos "speed_cam_50_13";
_speedCam05014 = getMarkerPos "speed_cam_50_14";
_speedCam05015 = getMarkerPos "speed_cam_50_15";
_speedCam05016 = getMarkerPos "speed_cam_50_16";
_speedCam05017 = getMarkerPos "speed_cam_50_17";
_speedCam05018 = getMarkerPos "speed_cam_50_18";
_speedCam05019 = getMarkerPos "speed_cam_50_19";
_speedCam05020 = getMarkerPos "speed_cam_50_20";
_speedCam05021 = getMarkerPos "speed_cam_50_21";
_speedCam05022 = getMarkerPos "speed_cam_50_22";
_speedCam05023 = getMarkerPos "speed_cam_50_23";
_speedCam05024 = getMarkerPos "speed_cam_50_24";
_speedCam05025 = getMarkerPos "speed_cam_50_25";
_speedCam05026 = getMarkerPos "speed_cam_50_26";
_speedCam05027 = getMarkerPos "speed_cam_50_27";
_speedCam05028 = getMarkerPos "speed_cam_50_28";
_speedCam05029 = getMarkerPos "speed_cam_50_29";
_speedCam05030 = getMarkerPos "speed_cam_50_30";
_speedCam05031 = getMarkerPos "speed_cam_50_31";
_speedCam05032 = getMarkerPos "speed_cam_50_32";
_speedCam05033 = getMarkerPos "speed_cam_50_33";
_speedCam05034 = getMarkerPos "speed_cam_50_34";
_speedCam05035 = getMarkerPos "speed_cam_50_35";
_speedCam05036 = getMarkerPos "speed_cam_50_36";
_speedCam05037 = getMarkerPos "speed_cam_50_37";
_speedCam05038 = getMarkerPos "speed_cam_50_38";
_speedCam05039 = getMarkerPos "speed_cam_50_39";
_speedCam05040 = getMarkerPos "speed_cam_50_40";
_speedCam05041 = getMarkerPos "speed_cam_50_41";
_speedCam05042 = getMarkerPos "speed_cam_50_42";
_speedCam05043 = getMarkerPos "speed_cam_50_43";
_speedCam05044 = getMarkerPos "speed_cam_50_44";
_speedCam05045 = getMarkerPos "speed_cam_50_45";
_speedCam05046 = getMarkerPos "speed_cam_50_46";
_speedCam05047 = getMarkerPos "speed_cam_50_47";
_speedCam05048 = getMarkerPos "speed_cam_50_48";
_speedCam05049 = getMarkerPos "speed_cam_50_49";
_speedCam05050 = getMarkerPos "speed_cam_50_50";
_speedCam05051 = getMarkerPos "speed_cam_50_51";
_speedCam05052 = getMarkerPos "speed_cam_50_52";
_speedCam05053 = getMarkerPos "speed_cam_50_53";
_speedCam05054 = getMarkerPos "speed_cam_50_54";
_speedCam05055 = getMarkerPos "speed_cam_50_55";
_speedCam05056 = getMarkerPos "speed_cam_50_56";
_speedCam05057 = getMarkerPos "speed_cam_50_57";
_speedCam05058 = getMarkerPos "speed_cam_50_58";
_speedCam05059 = getMarkerPos "speed_cam_50_59";
_speedCam05060 = getMarkerPos "speed_cam_50_60";
_speedCam05061 = getMarkerPos "speed_cam_50_61";
_speedCam05062 = getMarkerPos "speed_cam_50_62";
_speedCam05063 = getMarkerPos "speed_cam_50_63";
_speedCam05064 = getMarkerPos "speed_cam_50_64";
_speedCam05065 = getMarkerPos "speed_cam_50_65";
_speedCam05066 = getMarkerPos "speed_cam_50_66";
_speedCam05067 = getMarkerPos "speed_cam_50_67";
_speedCam05068 = getMarkerPos "speed_cam_50_68";
_speedCam05069 = getMarkerPos "speed_cam_50_69";


switch(playerSide) do
{
	case civilian:
	{
		while {true} do
		{
			if (alive player) then
			{
				if (_speedCam16001 distance player < _dis || _speedCam16002 distance player < _dis || _speedCam16003 distance player < _dis || _speedCam16004 distance player < _dis || _speedCam16005 distance player < _dis || _speedCam16006 distance player < _dis || _speedCam16007 distance player < _dis || _speedCam16008 distance player < _dis || _speedCam16009 distance player < _dis || _speedCam160010 distance player < _dis || _speedCam160011 distance player < _dis || _speedCam160012 distance player < _dis || _speedCam160013 distance player < _dis) then
				{
					if (speed _veh > 160) then
					{
						_ppEffect = ppEffectCreate ["ColorCorrections",2500];
						_ppEffect ppEffectAdjust [1, 1, -0.01, [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]];
						_ppEffect ppEffectCommit 0.1;
						_ppEffect ppEffectEnable true;
						_ppEffect ppEffectForceInNVG true;
						_blurEffect ppEffectAdjust [3];
						_blurEffect ppEffectCommit 0.2;
						hint "You have been caught speeding !";
						[[getPlayerUID player,profileName,"569"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
						player say3D "cameraFlash";
						sleep 0.15;
						_ppEffect ppEffectEnable false;
						ppEffectDestroy _ppEffect;
						sleep 4;
					};
				};
			};
		
		};
	};
};