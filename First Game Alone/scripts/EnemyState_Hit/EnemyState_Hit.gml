
function EnemyState_Hit(){
	
	vsp += grav;
	
	if (hitNow)
	{
		sprite_index = spEnemyHit
		image_index = 0;
		hitNow = false;
		frameCount = 0;
	}

	frameCount++;
	if (frameCount > 20) 
	{
		frameCount = 0;
		state = eState.Free;
	}
	
	
}