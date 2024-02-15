#include <a_samp>

forward OnPlayerUseVending(playerid);
forward VendCheck(playerid);
stock IsKeyJustDown( key, newkeys, oldkeys )
{
	if((newkeys & key) && !(oldkeys & key)) return true;
	return false;
}
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys){
	if(IsKeyJustDown(KEY_SECONDARY_ATTACK, newkeys, oldkeys)) {
		if(GetPlayerAnimationIndex(playerid)!=1660) SetTimerEx("VendCheck", 1000, false, "d", playerid);
	}
	return CallLocalFunction("vend_OnPlayerKeyStateChange", "iii", playerid, newkeys, oldkeys);
}

#if defined _ALS_OnPlayerKeyStateChange
    #undef OnPlayerKeyStateChange
#else
    #define _ALS_OnPlayerKeyStateChange
#endif
#define OnPlayerKeyStateChange vend_OnPlayerKeyStateChange
forward vend_OnPlayerKeyStateChange(playerid, newkeys, oldkeys);

public VendCheck(playerid){
	if(GetPlayerAnimationIndex(playerid)==1660) CallLocalFunction("OnPlayerUseVending", "i", playerid);
}