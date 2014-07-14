﻿#include <macro.h>
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 3) exitWith {cutText["Es gab einen Fehler beim Einrichten deines Clienten.","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText ["Nachfrage vom Server erhalten... Überprüfe...","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and  junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName _this == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count _this == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((_this select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != _this select 0) exitWith {[] call SOCK_fnc_dataQuery;};

//Parse basic player information.
__CONST__(life_adminlevel,parseNumber(_this select 4));
__CONST__(life_donator,0);

//Loop through licenses
if(count (_this select 6) > 0) then {
	{
		missionNamespace setVariable [(_x select 0),(_x select 1)];
	} foreach (_this select 6);
};

//Parse side specific information.
switch(playerSide) do {
	case west: {
		//Geld
		life_cash = parseNumber (_this select 2);
		life_atmcash = parseNumber (_this select 3);
		//
		__CONST__(life_coplevel,parseNumber(_this select 7));
		life_gear = _this select 8;
		[] spawn life_fnc_loadGear;
		life_blacklisted = _this select 9;
		__CONST__(life_medicLevel,0);
		__CONST__(life_adaclevel,0);
	};
	
	case civilian: {
		//Trenne Konten und Gear von ADAC und Zivilisten
			if((str(player) in ["civ_71","civ_72","civ_73","civ_74","civ_75","civ_66","civ_67","civ_68","civ_69","civ_70"])) then 
			{
				life_cash = parseNumber (_this select 9);
				life_atmcash = parseNumber (_this select 10);
				__CONST__(life_adaclevel,parseNumber(_this select 11));
				life_gear = _this select 12;
				life_gangData = _this select 15;
				[] spawn life_fnc_loadGear;
			} else {
				life_cash = parseNumber (_this select 2);
				life_atmcash = parseNumber (_this select 3);
				life_gear = _this select 8;
				life_gangData = _this select 14;
				__CONST__(life_adaclevel,0);
				[] spawn life_fnc_loadGear;
			};
		//
		life_is_arrested = _this select 7;
		//life_is_arrested = call compile format["%1", _this select 7];
		__CONST__(life_coplevel,0);
		__CONST__(life_medicLevel,0);
		life_houses = _this select 13;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles set[count life_vehicles,_house];
		} foreach life_houses;
		
		if(count life_gangData != 0) then {
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;
	};
	
	case independent: {
		life_cash = parseNumber (_this select 2);
		life_atmcash = parseNumber (_this select 3);
		life_gear = _this select 8;
		[] spawn life_fnc_loadGear;
		__CONST__(life_medicLevel,parseNumber(_this select 7));
		__CONST__(life_copLevel,0);
		__CONST__(life_adaclevel,0);
	};
};

life_session_completed = true;