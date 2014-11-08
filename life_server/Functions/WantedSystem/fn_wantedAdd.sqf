/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name","_gesuchter","_query","_queryResult"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Vehicular Manslaughter",6500]};
	case "187": {_type = ["Manslaughter",8500]};
	case "901": {_type = ["Escaping Jail",4500]};
	case "261": {_type = ["Rape",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Attempted Rape",3000]};
	case "215": {_type = ["Attempted Auto Theft",2000]};
	case "213": {_type = ["Use of illegal explosives",10000]};
	case "211": {_type = ["Robbery",1000]};
	case "207": {_type = ["Kidnapping",3500]};
	case "207A": {_type = ["Attempted Kidnapping",2000]};
	case "487": {_type = ["Grand Theft",1500]};
	case "488": {_type = ["Petty Theft",700]};
	case "480": {_type = ["Hit and run",1300]};
	case "481": {_type = ["Drug Possession",1000]};
	case "482": {_type = ["Intent to distribute",5000]};
	case "483": {_type = ["Drug Trafficking",9500]};
	case "459": {_type = ["Burglary",6500]};
	
	case "1": {_type = ["Driving Without A License",1500]};
    case "2": {_type = ["Attempted Theft Of A Civilian Vehicle",3500]};
    case "3": {_type = ["Theft Of A Civilian Vehicle",5000]};
    case "4": {_type = [Driving Without Lights",350]};
    case "5": {_type = ["Excessive Speed",3500]};
    case "6": {_type = ["Dangerous Driving",2500]};
    case "7": {_type = ["Attempted Theft Of A Police Vehicle",7500]};
    case "8": {_type = ["Theft Of A Police Vehicle",20000]};
    case "9": {_type = ["Landing In A No-Fly Zone",2500]};
    case "10": {_type = ["Driving An Illegal Vehicle",10000]};
    case "11": {_type = ["Caused An Accident",5000]};
    case "12": {_type = ["Running From The Police",7500]};
    case "13": {_type = ["Driving Over Another Player",25000]};
    case "14": {_type = ["Illegal Roadblock",5000]};
    case "15": {_type = ["Civil Disorder",15000]};
    case "16": {_type = ["Not Obeying Orders",5000]};
    case "17": {_type = ["Insulting People",2500]};
    case "18": {_type = ["Harassment Of A Police Officer",8000]};
    case "19": {_type = ["Entering A Restricted Zone",5000]};
    case "20": {_type = ["Killing Of A Police Officer",25000]};
    case "21": {_type = ["Shooting At Players / Houses / Vehicles",15000]};
    case "22": {_type = ["Destruction Of Police Property",15000]};
    case "23": {_type = ["Drug Offences",12000]};
    case "24": {_type = ["Possession Of Firearms Without A License",5000]};
    case "25": {_type = ["Open Carry Of A Weapon In A Safe Zone",2500]};
    case "26": {_type = ["Possession of An Illegal Weapon",10000]};
    case "27": {_type = ["Using A Firearm Within A City",10000]};
    case "28": {_type = ["Took Someone As A Hostage",30000]};
    case "29": {_type = ["Attacking A Person / Vehicle",10000]};
    case "30": {_type = ["Bank Robbery",200000]};
    case "31": {_type = ["Murder",60000]};
    case "32": {_type = ["Uprising",35000]};
    case "33": {_type = ["Rebels Attacking Someone",35000]};
    case "34": {_type = ["Attack On Cities",25000]};
    case "35": {_type = ["Landing In A No-Fly Zone",1500]};
    case "36": {_type = ["Flying / Hovering Below 100M",2000]};
    case "37": {_type = ["Escaped From Prison",25000]};
    case "38": {_type = ["Flying Without A Pilot License",1200]};
    case "39": {_type = ["Permanently Annoying People Using A Horn",1000]};
    case "40": {_type = ["Trading Exotic Goods",25000]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};

diag_log format["WANTED_LIST = %1", life_wanted_list];

_gesuchter = [life_wanted_list] call DB_fnc_mresArray;
_query = format["UPDATE wanted set list = '%1'", _gesuchter];


waitUntil {sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,1] call DB_fnc_asyncCall;