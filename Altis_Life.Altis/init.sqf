enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "safezone.sqf";
[] execVM "speedcamera.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";
[] execVM "zlt_fastrope.sqf";
[] execVM "core\fn_addKey.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

// mod cruise control
call mod_cruiseControl;