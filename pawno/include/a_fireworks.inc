enum FIREWORKS
{
	Float:F_X,
	Float:F_Y,
	Float:F_Z,
	Float:FM_X,
	Float:FM_Y,
	Float:FM_Z,
	OBJECT,
	TYPE,
	TIMER[2],
	bool:F_USED,
	bool:IS_POINT
};
new
	firework_id, Float:fwposition[3], fireworks[ MAX_FIREWORKS ][ FIREWORKS ];

stock CreateFirework(type, Float: f_X, Float: f_Y, Float: f_Z)
{
    firework_id = 1;
    fireworks[firework_id][OBJECT] = CreateObject(type, f_X, f_Y, f_Z -2, 0, 0, 0);
    fireworks[firework_id][F_X] = f_X;
    fireworks[firework_id][F_Y] = f_Y;
    fireworks[firework_id][F_Z] = f_Z;
    fireworks[firework_id][TYPE] = type;
    fireworks[firework_id][F_USED] = true;
    fireworks[firework_id][IS_POINT] = false;
    fireworks[firework_id][TIMER][0] = SetTimerEx("MoveFirework", 3300, false, "d", firework_id);
	return firework_id;
}
stock PushFireworkToPoint(fireworkid, Float:fp_x, Float:fp_y, Float:fp_z, Float:Point_x, Float:Point_y, Float:Point_z)
{
    if(!fireworks[fireworkid][F_USED]) return printf("(USED_FIREWEORKS) this a fireworks not used");
	for(new f; f < 2; f++) KillTimer(fireworks[fireworkid][TIMER][f]);
	DestroyObject(fireworks[fireworkid][OBJECT]);
    fireworks[fireworkid][F_X] = fp_x;
    fireworks[fireworkid][F_Y] = fp_y;
    fireworks[fireworkid][F_Z] = fp_z;
    fireworks[fireworkid][FM_X] = Point_x;
    fireworks[fireworkid][FM_Y] = Point_y;
    fireworks[fireworkid][FM_Z] = Point_z;
    fireworks[fireworkid][IS_POINT] = true;
    fireworks[fireworkid][TIMER][0] = SetTimerEx("MoveFirework", 3300, false, "d", fireworkid);
	return fireworks[fireworkid][OBJECT] = CreateObject(fireworks[fireworkid][TYPE], fp_x, fp_y, fp_z, 0, 0, 0);
}
stock MoveFireworkToPlayer(fireworkid, userid)
{
    if(!fireworks[fireworkid][F_USED]) return printf("(USED_FIREWEORKS) this a fireworks not used");
	for(new f; f < 2; f++) KillTimer(fireworks[fireworkid][TIMER][f]);
	GetPlayerPos(userid, fwposition[0], fwposition[1], fwposition[2]);
	fireworks[fireworkid][F_X] = fwposition[0];
    fireworks[fireworkid][F_Y] = fwposition[1];
    fireworks[fireworkid][F_Z] = fwposition[2]-2;
	DestroyObject(fireworks[fireworkid][OBJECT]);
	fireworks[fireworkid][TIMER][0] = SetTimerEx("MoveFirework", 3300, true, "d", fireworkid);
	return fireworks[fireworkid][OBJECT] = CreateObject(fireworks[fireworkid][TYPE], fwposition[0], fwposition[1], fwposition[2], 0, 0, 0);
}
stock AttachFireworkToPlayer(fireworkid, userid) return fireworks[fireworkid][TIMER][1] = SetTimerEx("CheckFirework", 300, true, "d", fireworkid, userid);
stock DestroyFirework(fireid)
{
    if(!fireworks[fireid][F_USED]) return printf("(USED_FIREWEORKS) this a fireworks not used");
	for(new f; f < 2; f++) KillTimer(fireworks[fireid][TIMER][f]);
	fireworks[fireid][F_USED] = false;
	return DestroyObject(fireworks[fireid][OBJECT]);
}
stock DestroyAllFirework()
{
	for(new j; j < MAX_FIREWORKS; j++) if(fireworks[j][F_USED]) for(new f; f < 2; f++) KillTimer(fireworks[j][TIMER][f]),DestroyObject(fireworks[j][OBJECT]),fireworks[j][F_USED] = false;
	return true;
}
forward MoveFirework(firework);
public MoveFirework(firework)
{
	MoveObject(fireworks[firework][OBJECT], !fireworks[firework][IS_POINT]?(fireworks[firework][F_X]):(fireworks[firework][FM_X]), !fireworks[firework][IS_POINT]?(fireworks[firework][F_Y]):(fireworks[firework][FM_Y]), !fireworks[firework][IS_POINT]?(fireworks[firework][F_Z]+30):(fireworks[firework][FM_Z]),30);
	return !fireworks[firework][IS_POINT]?(SetTimerEx("BoomFirework", 1300, false, "d", firework)):(fireworks[firework][TIMER][1] = SetTimerEx("CheckFirework", 1000, true, "d", firework, -1));
}
forward BoomFirework(obid);
public BoomFirework(obid)
{
    DestroyObject(fireworks[obid][OBJECT]);
	fireworks[obid][OBJECT] = CreateObject(fireworks[obid][TYPE], fireworks[obid][F_X], fireworks[obid][F_Y], fireworks[obid][F_Z] -2, 0, 0, 0);
 	CreateExplosion(fireworks[obid][F_X], fireworks[obid][F_Y], fireworks[obid][F_Z]+48, 7, 10);
	return DestroyFirework(obid);
}
forward CheckFirework(fireworkid, userid);
public CheckFirework(fireworkid, userid)
{
	GetObjectPos(fireworks[fireworkid][OBJECT], fwposition[0], fwposition[1], fwposition[2]);
	if(fireworks[fireworkid][F_USED] && fireworks[fireworkid][IS_POINT] && fwposition[0] == fireworks[fireworkid][FM_X] && fwposition[1] == fireworks[fireworkid][FM_Y] && fwposition[2] == fireworks[fireworkid][FM_Z])
	{
	    CreateExplosion(fireworks[fireworkid][FM_X], fireworks[fireworkid][FM_Y], fireworks[fireworkid][FM_Z], 7, 10);
	    fireworks[fireworkid][TIMER][0] = SetTimerEx("MoveFirework", 3300, false, "d", fireworkid);
	    DestroyObject(fireworks[fireworkid][OBJECT]);
		fireworks[fireworkid][OBJECT] = CreateObject(fireworks[fireworkid][TYPE], fireworks[fireworkid][F_X], fireworks[fireworkid][F_Y], fireworks[fireworkid][F_Z], 0, 0, 0);
		return KillTimer(fireworks[fireworkid][TIMER][1]);
	}
    GetPlayerPos(userid, fwposition[0], fwposition[1], fwposition[2]);
	fireworks[fireworkid][F_X] = fwposition[0];
    fireworks[fireworkid][F_Y] = fwposition[1];
    fireworks[fireworkid][F_Z] = fwposition[2]-2;
	return true;
}
