// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Approach(a, b, c){
	if (a < b) {
	   return min(a + c, b);
	} else {
	   return max(a - c, b);
	}
}