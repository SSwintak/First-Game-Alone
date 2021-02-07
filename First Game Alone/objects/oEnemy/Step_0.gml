switch (state)
{
	case eState.Free: EnemyState_Free(); break;
	case eState.Hit: EnemyState_Hit(); break;
	case eState.Dead: EnemyState_Dead(); break;
	
}

var cx = (oPlayer.x / 32) * 32 + 16;
var cy = (oPlayer.y);


if (state = eState.Free)
{
	
	if (distance_to_object(oPlayer) < 100 && mp_grid_path(global.grid, path, x, y, cx, cy, 1))
	{
		path_start(path, walksp, path_action_stop, false);	
		sprite_index = spEnemyWalk;
		image_speed = 1;
		
	
	}
}
		
