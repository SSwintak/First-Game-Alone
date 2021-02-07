// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Free(){
	
	vsp += grav;
	var onGround = place_meeting(x, y + 1, oCollWall);
	
	
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
	
		
		
	//what the state does
	
	if (onGround)
	{
	
		if (hsp == 0)
		{
			sprite_index = spEnemyIdle;	
		}
		else
		{
			sprite_index = spEnemyWalk;
			image_speed = 1;
		}
		
		
		if (hsp != 0)
		{
			image_xscale = sign(hsp);
		}
	
	}
	
	
}