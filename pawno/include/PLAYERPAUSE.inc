#if defined _OnPlayerPause_included
	#endinput
#endif
#define _OnPlayerPause_included

#include <a_samp>

#define MinTimeWithoutUpdates 6 // Time in seconds after which a player will be considered as paused.
//#define PRINTPAUSE // Define this if you want this script to print messages on your server console. This
//  is useful for example for admin filterscripts.

new stock TimeOfLastUpdate[MAX_PLAYERS];
new stock bool:Paused[MAX_PLAYERS];
new stock bool:InClassSelection[MAX_PLAYERS];

stock IsPlayerPaused(playerid)
{
	if(Paused[playerid] == true)
	{
	    return 1;
	}
	return 0;
}

stock IsPlayerInClassSelection(playerid)
{
	if(InClassSelection[playerid] == true)
	{
	    return 1;
	}
	return 0;
}