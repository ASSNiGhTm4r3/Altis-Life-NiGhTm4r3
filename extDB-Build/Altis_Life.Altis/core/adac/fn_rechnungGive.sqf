﻿/*
	File: fn_rechnungGive.sqf
	Based on fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_rechnung_unit}) exitWith {hint "Person die eine Rechnung bekommen soll ist nicht definiert"};
if(isNull life_rechnung_unit) exitWith {hint "Person die eine Rechnung bekommen soll existiert nicht."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "Du hast kein richtiges Nummernformat eingegeben."};
if((parseNumber _val) > 100000) exitWith {hint "Rechnungen können nicht höher als $100,000 sein!"};
[[0,format["%1 hat an %3 eine Rechnung in Höhe von $%2 ausgestellt",profileName,[(parseNumber _val)] call life_fnc_numberText,life_rechnung_unit getVariable["realname",name life_rechnung_unit]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_rechnungPrompt",life_rechnung_unit,false] spawn life_fnc_MP;
closeDialog 0;