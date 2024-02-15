/*
				   iParachute v0.1
					By irinel1996
				Thanks to FireCat too
*/
#include <mapandreas>
forward OnPlayerOpenParachute(playerid, altitude);
stock IsPlayerSkyDiving(playerid)
{
	new idx=GetPlayerAnimationIndex(playerid);
	if(idx==1134||idx==961||idx==962||idx==958||idx==959||
	idx==971||idx==963||idx==976||idx==978||idx==965) return 1;
	return 0;
}
stock GetPlayerParachuteState(playerid)
{
    new idx=GetPlayerAnimationIndex(playerid);
    if(idx==963||idx==976||idx==978||idx==965) return 1; //Opened
    else if(idx==971) return 2; //Opening
    return 0; //Closed
}
stock GetPlayerAltitude(playerid, tipo=0)
{
    new Float:x,Float:y,Float:z;
	switch(tipo)
	{
		case 0:
		{
			if(IsPlayerSkyDiving(playerid))
			{
				GetPlayerPos(playerid,x,y,z);
				new Float:r=GetPointZPos(x,y);
				new Float:r2 = z-r;
				return floatround(r2,floatround_round);
			}
		}
		case 1:
		{
	    	GetPlayerPos(playerid,x,y,z);
			new Float:r=GetPointZPos(x,y);
			new Float:r2 = z-r;
			return floatround(r2,floatround_round);
		}
	}
	return 0;
}
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT){
	    if(GetPlayerWeapon(playerid) == 46){
			if(newkeys & KEY_FIRE){
				if(GetPlayerParachuteState(playerid) == 0 || GetPlayerParachuteState(playerid) == 2){
				    CallLocalFunction("OnPlayerOpenParachute","dd",playerid,GetPlayerAltitude(playerid,1));
	}	}	}	}
    CallLocalFunction("isd_OnPlayerKeyStateChange","iii",playerid,newkeys,oldkeys);
}
#if defined _ALS_OnPlayerKeyStateChange
    #undef OnPlayerKeyStateChange
#else
    #define _ALS_OnPlayerKeyStateChange
#endif
#define OnPlayerKeyStateChange isd_OnPlayerKeyStateChange
forward OnPlayerKeyStateChange(playerid, newkeys, oldkeys);
