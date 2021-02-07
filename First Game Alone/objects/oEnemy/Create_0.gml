hsp = 0;
vsp = 0;
grav = 0.5;
walksp = 3;
hitNow = false;
frameCount = 0;
flash = false;
path = path_add();

hitByAtt = ds_list_create();

hp = 8;



state = eState.Free;

enum eState
{
	Free,
	Dead,
	Hit
	
}

