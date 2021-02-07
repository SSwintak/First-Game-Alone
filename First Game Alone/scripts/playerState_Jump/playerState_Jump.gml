// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerState_Jump(){
	
	//movement
	var move = right - left;
	
	hsp = move * walksp;
	
	vsp += grav;
	
	var onGround = place_meeting(x, y + 1, oCollWall);	
	
	
	
	
	//what to do in situations
	image_speed = 1;
	if (!onGround)
	{
		sprite_index = spPlayerJump
		
		if(sign(vsp) > 0) image_index = 1; else image_index = 0;	
	}
	else
	{
		state = pState.Free;
	}
	
	
	if (!onGround) && (att)
	{
		state = pState.AAtt;	
	}
	else
	{
		state = pState.Free	
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