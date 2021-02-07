// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerState_Dead(){
	
	
	if (sprite_index != spPlayerDead)
	{
		sprite_index = spPlayerDead;
		image_index = 0;
	}
	
	if (animation_end()) instance_change(oPlayerDead,true);
		
}