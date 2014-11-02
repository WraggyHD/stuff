if (player getVariable ["hostage",true) then {
	detach player;
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
	titleText["You have been violently taken out of the car!","PLAIN"];
	titleFadeOut 4;
};