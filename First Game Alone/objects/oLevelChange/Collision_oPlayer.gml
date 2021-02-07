


with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		Transition(trans_mode.goto, other.target);
	}
}
