
function EnemyState_Att(){

	var onGround = place_meeting(x, y + 1, oCollWall);
	
	
	
	vsp += grav;
	
	//start of attack
	
	Process_Attack(spEnemyAtt,spEnemyAttHB);
	image_speed = 1;
	if (onGround) && (att)
	{		
		image_index = spEnemyAtt;	
	}
	
	
	if (att) && (image_index > 1)
	{	
		state = eState.Att;
	}
	
	if(!onGround) && (att)
	{
		state = eState.AAtt;	
	}
		
	if (animation_end())
	{
		sprite_index = spEnemyIdle;
		state = eState.Free;
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