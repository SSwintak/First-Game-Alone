// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Dead(){
	
	
	if (sprite_index != spEnemyDead)
	{
		sprite_index = spEnemyDead;
		image_index = 0;
	}
	
	if (animation_end()) instance_change(oEnemyDead,true);
		
}