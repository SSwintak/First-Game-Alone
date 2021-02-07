vsp = 0;
hsp = 0;
walksp = 4;
grav = 0.5;
hascontrol = true;


state = pState.Free;
hitByAtt = ds_list_create();


enum pState
{
	Free,
	Att,
	Jump,
	AAtt,
	Hit,
	Dead
}


