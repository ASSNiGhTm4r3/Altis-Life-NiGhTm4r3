/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
		
	["oilp", 60, 10, 900, 2, 1, 
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["iron_r", 60, 20, 700, 3, 1,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["diamondc", 240, 40, 1150, 3, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	
	["copper_r", 50, 10, 300, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1] 
		] 
	],
	["muell", 40, 10, 80, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1] 
		] 
	],
	["wertstoffe", 60, 10, 360, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["muell",1],
			["edelmetall",1],
			["copper_r",1] 
		] 
	],
	["kunststoff", 80, 10, 420, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["edelmetall",1],
			["muell",-1]
		] 
	],
	["edelmetall", 190, 40, 670, 2, 1, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1] 
		] 
	],
	
	["salt_r", 50, 10, 420, 2, 1, 
		[ 
			["turtlesoup",1],
			["froschbein",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["glass", 40, 5, 340, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1]
		] 
	],
	
	["cement", 40, 5, 400, 2, 1, 
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],
	
	["apple", 10, 5, 20, 2, 1, 
		[ 
			["turtlesoup",1], 
			["froschbein",1],
			["wein",1],
			["mullet",1],
			["tuna",1],
			["weintrauben",1]
		] 
	],
	
	["turtlesoup", 40, 5, 600, 2, 1, 
		[ 
			["apple",1], 
			["peach",1],
			["froschbein",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	
	["peach", 10, 5, 20, 2, 1, 
		[  
			["turtlesoup",1],
			["froschbein",1],
			["wein",1],
			["mackerel",20],
			["weintrauben",1]
		] 
	],
	
	["froschbein", 120, 10, 430, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["peach",1],
			["wein",1],
			["weintrauben",1]
		] 
	],
	["mackerel", 20, 5, 55, 2, 1, 
		[ 
			["salema",1], 
			["ornate",1],
			["apple",1],
			["tuna",1],
			["mullet",1]
		] 
	],
	["mullet", 10, 1, 40, 2, 1, 
		[ 
			["salema",1], 
			["ornate",1],
			["apple",1],
			["tuna",1],
			["mackrele",1]
		] 
	],
	["ornate", 10, 5, 35, 2, 1, 
		[ 
			["salema",1], 
			["peach",1],
			["apple",1],
			["mackrele",1]
		] 
	],
	["salema", 10, 5, 40, 2, 1, 
		[ 
			["ornate",1], 
			["mullet",1],
			["peach",1],
			["tuna",1],
			["mackrele",1]
		] 
	],
	
	["tuna", 10, 1, 50, 2, 1, 
		[ 
			["salema",1], 
			["ornate",1],
			["peach",1],
			["mackerel",1],
			["mullet",1]
		] 
	],
	["wein", 60, 5, 530, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["froschbein",1],
			["weintrauben",1]
		] 
	],
	
	["weintraube", 40, 5, 300, 2, 1, 
		[ 
			["apple",1], 
			["turtlesoup",1],
			["peach",1],
			["froschbein",1],
			["wein",1]
		] 
	],
	["tabak", 25, 5, 370, 2, 1, 
		[  
			["turtlesoup",1],
			["niere",1],
			["froschbein",1],
			["wein",1]
		] 
	],
	["zigarren", 40, 5, 650, 2, 1, 
		[ 
			["wein",1],
			["niere",1]
		] 
	],
	
	["turtle", 170, 40, 1700, 2, 5,  
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	["catshark", 190, 40, 2400, 10, 10,  
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 120, 30, 630, 7, 5,   
		[ 
			["cocainep",1],
			["turtle",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["cocainep", 240, 40, 1400, 4, 6,   
		[ 
			["turtle",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	
	["heroinp", 120, 20, 900, 6, 8,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["froschlsd",1],
			["turtle",1]
		] 
	],
	["froschlsd", 150, 30, 780, 2, 3,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["moonshine",1],
			["turtle",1],
			["heroinp",1]
		] 
	],
	["moonshine", 150, 30, 540, 8, 8,   
		[ 
			["cocainep",1],
			["marijuana",1],
			["turtle",1],
			["froschlsd",1],
			["heroinp",1]
		] 
	],
	["niere", 2500, 500, 4000, 4, 3,   
		[ 
			["cocainep",1],
			["moonshine",1],
			["wein",1],
			["froschlsd",1],
			["heroinp",1],
			["apple",-1], 
			["turtlesoup",-1],
			["peach",-1],
			["froschbein",-1],
			["wein",-1]
		] 
	],
	["schmuck", 60, 5, 420, 8, 8,   
		[ 
			["schaufel",1],
			["oilp",1],
			["iron_r",1],
			["edelmetall",1],
			["copper_r",1],
			["niere",1],
			["heroinp",1],
			["cocainep",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};