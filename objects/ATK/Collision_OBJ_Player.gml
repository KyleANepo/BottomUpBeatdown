if(image_index == DMGFrame && abs(depth - other.depth) <= LayerSize && abs(y - other.y) <= LayerSize && Owner == "Enemy"){
    
	if (other.IsGuarding == true)
	{
		Damage /= 10;
		other.IsHit = true;
		other.alarm[3] = StunLength;
		
	}
	
    other.CurrentHP -= Damage;
    other.IsHit = true;
    other.alarm[3] = StunLength;
     
}
