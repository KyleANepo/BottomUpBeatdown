
if (state == 0) {
	timer++;
	
	//change room
	if (timer >= duration) {
		room_goto(targetRoom);
		
		//set state0
		state = 1;
	}
}

//exit state
else if (state == 1) {
	timer--;
	
	//destroy
	if (timer <= 0) {
		instance_destroy();
	}
}

alpha = timer / duration;