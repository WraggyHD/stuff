/*
	COP UNIFORM SCRIPT
	Author: coldgas (http://altis.newhopeoutfit.de)
	Created for www.altisliferpg.com
*/

	#define __GETC__(var) (call var)
	
	// Standard Cop Uniforms by coplevel. Create new 'if' for every coplevel you want to have a special uniform. (e.G. if(__GETC__(life_coplevel) == 1) then {... )
	if (__GETC__(life_coplevel) > 0)  then {
		player setObjectTextureGlobal [0, "textures\police_shirt.paa"]; // this is for all cops whitelisted or public.
	};
	

	if (__GETC__(life_coplevel) > 2)  then {
		player setObjectTextureGlobal [0, "textures\swat_shirt.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};
	
	
	// Special Uniforms cops can buy in shops. Add new 'if' for every classname you want the skin to be overwritten. (warning, does NOT work with every class!)
	
	if ((uniform player) == "U_O_GhillieSuit")  then {
		player setObjectTextureGlobal [0, "textures\sniper_shirt.paa"];
	};
	
	if ((uniform player) == "U_I_HeliPilotCoveralls")  then {
		player setObjectTextureGlobal [0, "textures\pilot_uniform.paa"];
	};
	
// call this script in as many files as possible, especially init_cop, init_civ and all files related to the cop-shop.