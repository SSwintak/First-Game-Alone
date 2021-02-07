if (hascontrol)
{
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	jump = keyboard_check_pressed(ord("W"));
	att = mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_enter);
	
}
else
{
	left = 0;
	right = 0;
	jump = 0;
	att = 0;
}


switch (state)
{	
	case pState.Free: playerState_Free(); break;	
	case pState.Jump: playerState_Jump(); break;
	case pState.Att: playerState_Att(); break;	
	case pState.AAtt: playerState_AAtt(); break;			
}
