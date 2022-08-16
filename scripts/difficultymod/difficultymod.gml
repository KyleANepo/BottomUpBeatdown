// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function difficultyMod(){
	if (global.difficulty == 0) { HealthMod = .8; AggroMod = -.015; }
	else if (global.difficulty == 1) { HealthMod = 1; AggroMod = 0 }
	else { HealthMod = 1.2; AggroMod = .02 }
}