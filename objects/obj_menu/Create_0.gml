#macro MAIN		0
#macro LEVEL	1
#macro SETTINGS	2

global.dsm_settings = ds_map_create();
#macro set		global.dsm_settings

ds_map_add(set, "sound", [5, [0, 10]]);
ds_map_add(set, "music", [5, [0, 10]]);
ds_map_add(set, "difficulty", [global.difficulty, ["Easy", "Normal", "Hard"]]);

time_held_right = 0;
time_held_left = 0;

menu[MAIN][0] = "Start";
menu[MAIN][1] = "Options";
menu[MAIN][2] = "Exit";

//level select submenu
menu[LEVEL][0] = "Buster";
menu[LEVEL][1] = "Vinny";
menu[LEVEL][2] = "Pork";
menu[LEVEL][3] = "Back";

//settings submenu
menu[SETTINGS][0] = ["Sound FX ", "sound"];
menu[SETTINGS][1] = ["Music ", "music"];
menu[SETTINGS][2] = ["Difficulty ", "difficulty"];
menu[SETTINGS][3] = "Back";

index = 0; //menu index pos
sub_menu = 0;	//current submenu