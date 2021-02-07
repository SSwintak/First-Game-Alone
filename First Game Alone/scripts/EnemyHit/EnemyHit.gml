// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(argument0){

	var damage = argument0;
	
	hp -= damage;
	flash = true;
	if (hp > 0)
	{
		state = eState.Hit
		hitNow = true;
	}
	else
	{
		state = eState.Dead;	
	}

}