
function playerState_Att(){

	var onGround = place_meeting(x, y + 1, oCollWall);
	
	var move = right - left;
	
	hsp = move * walksp;
	
	vsp += grav;
	
	//start of attack
	
	Process_Attack(spPlayerAtt,spPlayerAttHB);
	image_speed = 1;
	if (onGround) && (att)
	{		
		image_index = spPlayerAtt;	
	}
	
	
	if (att) && (image_index > 1)
	{	
		state = pState.Att;
	}
	
	if(!onGround) && (att)
	{
		state = pState.AAtt;	
	}
		
	if (animation_end())
	{
		sprite_index = spPlayerIdle;
		state = pState.Free;
	}
	
		// H collision
	if (place_meeting(x + hsp, y, oCollWall))
	{
		while (!place_meeting(x + sign(hsp), y, oCollWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
		
		
	}
	
	x += hsp;
	
	// V collision
	if (place_meeting(x, y + vsp, oCollWall))
	{
		while (!place_meeting(x, y + sign(vsp), oCollWall))
		{
			y += sign(vsp);
		}
		vsp = 0;
		
		
	}
	
	
	y += vsp;

	
	
}