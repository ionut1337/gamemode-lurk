#define SAMP_AC_STATE_DAMAGE                                                    true





#include                                                                        pawn_raknet
#include                                                                        SAMP_AC/CUSTOM_FUNC/SAMP_AC_CONTROL_SYSTEM

enum E_DAMAGE_SYSTEM
{
	DAMAGE_REASON,      
	DAMAGE_KILLER,     
	DAMAGE_IMPACT,	
	DAMAGE_REPORT,     
	DAMAGE_FIX_HP,      
	DAMAGE_DEATH,       
	DAMAGE_TIMER,
	
Float: DAMAGE_HEALTH,
Float: DAMAGE_ARMOUR,
}
new DAMAGE_INFO[MAX_PLAYERS][E_DAMAGE_SYSTEM];

enum E_SAMP_AC_INFO
{
	SAMP_FUNC[100],
	SAMP_LAGG[100],
	SAMP_WARN[100],
	SAMP_FIX_WORLD,
	
	SAMP_TIMER,
	SAMP_TICK,
	SAMP_PING,


	SAMP_USE_SPAWN,
	SAMP_GTC_SPAWN,
	SAMP_FIX_SPAWN,
	SAMP_FIX_POSITION,
	
	
	SAMP_FIX_BRAKE,
	SAMP_FIX_SPEED,
	SAMP_LAST_SPEED,
	
	SAMP_USE_WEAPON,
	SAMP_SET_WEAPON,
	SAMP_GTC_WEAPON,
	SAMP_USE_REPORT,
	
	SAMP_ID_VEHICLE,
	SAMP_SET_VEHICLE,
	SAMP_USE_VEHICLE,
	SAMP_GTC_VEHICLE,
	SAMP_ID_SEAT,
	

	SAMP_WEAPON[13],
	SAMP_AMMOUT[13],
	SAMP_TIC_WEAPON,
	SAMP_FIX_WEAPON,

Float:	SAMP_POS_X,
Float:	SAMP_POS_Y,
Float:  SAMP_POS_Z,

Float:  SAMP_POS_SX,
Float:  SAMP_POS_SY,
Float:  SAMP_POS_SZ,

Float:  SAMP_SPEED_X,
Float:  SAMP_SPEED_Y,
Float:  SAMP_SPEED_Z,

Float: 	SAMP_FIX_TELEPORT,

}
new SERVER_INFO[MAX_PLAYERS][E_SAMP_AC_INFO];


new SAMP_AC_WEAPON_SLOT[47] =
{
	0, 0,
	1, 1, 1, 1, 1, 1, 1, 1,
	10, 10, 10, 10, 10, 10,
	8, 8, 8,
	0, 0, 0,
	2, 2, 2,
	3, 3, 3,
	4, 4,
	5, 5,
	4,
	6, 6,
	7, 7, 7, 7,
	8,
	12,
	9, 9, 9,
	11, 11, 11
};

new WEAPON_FIX_WARNING[3][13];
new SAMP_AC_VEHICLE_SPEED[MAX_VEHICLES];
new Float: SAMP_AC_VEHICLE_POSITION[MAX_VEHICLES];
new SAC_WARNING_PROGRESSIVE[MAX_PLAYERS][100];

#include                                                                        SAMP_AC/HOOK_RAKNET/SAMP_AC_RAKNET_SYNC


public OnPlayerConnect(playerid)
{
	for(new i = 99; i >= 0; i --)
	{
	    SERVER_INFO[playerid][SAMP_FUNC][i] = 1;
	    SERVER_INFO[playerid][SAMP_LAGG][i] = 1;
	    SERVER_INFO[playerid][SAMP_WARN][i] = 1;
	}
	for(new i = 12; i >= 0; i --)
	{
	    SERVER_INFO[playerid][SAMP_WEAPON][i] = 0;
	    SERVER_INFO[playerid][SAMP_AMMOUT][i] = 0;
 		WEAPON_FIX_WARNING[0][i] = 0;
 	 	WEAPON_FIX_WARNING[1][i] = 0;
 		WEAPON_FIX_WARNING[2][i] = 0;
	}
	SERVER_INFO[playerid][SAMP_USE_WEAPON] = 1;
	
	SERVER_INFO[playerid][SAMP_FIX_WORLD] =
	SERVER_INFO[playerid][SAMP_SET_WEAPON] =
	SERVER_INFO[playerid][SAMP_USE_SPAWN] = 0;
	
	DAMAGE_INFO[playerid][DAMAGE_REASON] = DAMAGE_INFO[playerid][DAMAGE_KILLER] = 0xFFFF;
	DAMAGE_INFO[playerid][DAMAGE_IMPACT] = DAMAGE_INFO[playerid][DAMAGE_REPORT] = 0xFFFF;
 	DAMAGE_INFO[playerid][DAMAGE_FIX_HP] = 5;
	DAMAGE_INFO[playerid][DAMAGE_HEALTH] = 100.0;
	DAMAGE_INFO[playerid][DAMAGE_ARMOUR] = 0.0;

	DAMAGE_INFO[playerid][DAMAGE_DEATH] =
	DAMAGE_INFO[playerid][DAMAGE_TIMER] = 0;
	
	SERVER_INFO[playerid][SAMP_FIX_SPEED] = 0;
	SERVER_INFO[playerid][SAMP_FIX_TELEPORT] = 0.0;
	
	SetPlayerTeam(playerid, NO_TEAM);
	
	SERVER_INFO[playerid][SAMP_TIMER] = SetTimerEx("SAMP_AC_SECOND_TIMER", 1000, true, "i", playerid);
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	KillTimer(SERVER_INFO[playerid][SAMP_TIMER]);
	return true;
}

public OnPlayerDeath(playerid, killerid, reason)
{
    DAMAGE_INFO[playerid][DAMAGE_KILLER] = DAMAGE_INFO[playerid][DAMAGE_REASON] = 0xFFFF;
	DAMAGE_INFO[playerid][DAMAGE_IMPACT] = DAMAGE_INFO[playerid][DAMAGE_REPORT] = 0xFFFF;
	DAMAGE_INFO[playerid][DAMAGE_HEALTH] = DAMAGE_INFO[playerid][DAMAGE_ARMOUR] = 0;
	DAMAGE_INFO[playerid][DAMAGE_DEATH]  = DAMAGE_INFO[playerid][DAMAGE_TIMER] = 0;

	SERVER_INFO[playerid][SAMP_FIX_BRAKE] = SERVER_INFO[playerid][SAMP_TICK] + 3000;
	SERVER_INFO[playerid][SAMP_GTC_SPAWN] = SERVER_INFO[playerid][SAMP_TICK];
	SERVER_INFO[playerid][SAMP_USE_SPAWN] = 1;
	
    ResetPlayerWeapons(playerid);
	return 1;
}
forward SAMP_AC_PLAYER_DEATH(playerid, killerid, reason);
public SAMP_AC_PLAYER_DEATH(playerid, killerid, reason)
{
	DAMAGE_INFO[playerid][DAMAGE_KILLER] = DAMAGE_INFO[playerid][DAMAGE_REASON] = 0xFFFF;
	DAMAGE_INFO[playerid][DAMAGE_IMPACT] = DAMAGE_INFO[playerid][DAMAGE_REPORT] = 0xFFFF;
	DAMAGE_INFO[playerid][DAMAGE_HEALTH] = DAMAGE_INFO[playerid][DAMAGE_ARMOUR] = 0;
	DAMAGE_INFO[playerid][DAMAGE_DEATH]  = DAMAGE_INFO[playerid][DAMAGE_TIMER] = 0;
	
	SERVER_INFO[playerid][SAMP_FIX_BRAKE] = SERVER_INFO[playerid][SAMP_TICK] + 3000;
	SERVER_INFO[playerid][SAMP_GTC_SPAWN] = SERVER_INFO[playerid][SAMP_TICK] + 3000;
	SERVER_INFO[playerid][SAMP_FIX_SPAWN] = 1;
	

    SetPlayerHealth(playerid, 100.0);
	ResetPlayerWeapons(playerid);
	SpawnPlayer(playerid);
	return true;
}

forward SAMP_AC_SECOND_TIMER(playerid);
public SAMP_AC_SECOND_TIMER(playerid)
{
	SERVER_INFO[playerid][SAMP_PING] = GetPlayerPing(playerid);
	return true;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    new
		SAMP_AC_IGN,
		SAMP_AC_USE;
    
    GetVehicleParamsEx(vehicleid, SAMP_AC_IGN, SAMP_AC_IGN, SAMP_AC_IGN,
								  SAMP_AC_USE,
								  SAMP_AC_IGN, SAMP_AC_IGN, SAMP_AC_IGN);
								  
	if(ispassenger || SAMP_AC_USE != VEHICLE_PARAMS_ON)
    {
        SERVER_INFO[playerid][SAMP_USE_VEHICLE] = vehicleid;
        SERVER_INFO[playerid][SAMP_GTC_VEHICLE] = SERVER_INFO[playerid][SAMP_TICK];
    }
	return true;
}
public OnPlayerRequestSpawn(playerid)
{
	SERVER_INFO[playerid][SAMP_USE_SPAWN] = 1;
	SERVER_INFO[playerid][SAMP_GTC_SPAWN] = 0;
	return 1;
}
forward SAMP_AC_SEND_WARNING_FOR_SCRIPT(USERID, const SAC_NAME[], SAC_CODE, SAC_WARNING);
public SAMP_AC_SEND_WARNING_FOR_SCRIPT(USERID, const SAC_NAME[], SAC_CODE, SAC_WARNING)
{

    if(++ SAC_WARNING_PROGRESSIVE[USERID][SAC_CODE] > SAC_WARNING)
    {
        if(SAC_CODE == 1 || SAC_CODE == 50) return true;
        
		AdminBotKickPlayer( USERID, SAC_NAME, false);
		
  		CallRemoteFunction("SAMP_AC_SEND_WARNING_FOR_MODE","isdd", USERID, SAC_NAME, SAC_CODE, CENTER_CONTROLE[SAC_CODE][CONTROL_DOOM]);
	}
	SetTimerEx("SAMP_AC_UPDATE_WARNING", 800, false, "ii", USERID, SAC_CODE);
	return true;
}
forward SAMP_AC_UPDATE_WARNING(USERID, SAC_CODE);
public SAMP_AC_UPDATE_WARNING(USERID, SAC_CODE)
{
	if(SAC_WARNING_PROGRESSIVE[USERID][SAC_CODE] > 0)
	{
	    SAC_WARNING_PROGRESSIVE[USERID][SAC_CODE] -= 1;
	}
	return true;
}
//============================== [ HOOK PACKET ] ===============================
#include                                                                        SAMP_AC/HOOK_RAKNET/PARCEL/HOOK_ONFOOT
#include                                                                        SAMP_AC/HOOK_RAKNET/PARCEL/HOOK_BULLET
#include                                                                        SAMP_AC/HOOK_RAKNET/PARCEL/HOOK_VEHICLE
#include                                                                        SAMP_AC/HOOK_RAKNET/PARCEL/HOOK_PASSENGER
//=============================== [ HOOK RPC ] =================================
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_SPAWN
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_POSITION
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_SPECTATE
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_SET_HEALTH
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_SET_ARMOUR
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_POSITION_Z
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_REMOVE_VEHICLE
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_PUT_VEHICLE
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_ARMED_WEAPON
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_VEHICLE_POSITION
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_VEHICLE_SPEED
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_ANIMATION
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_ACTION
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_WORLD

#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_GIVE_WEAPON
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_SET_AMMO
#include                                                                        SAMP_AC/HOOK_RAKNET/RPC/HOOK_RESET_WEAPON
//============================== [ ANTICHEATS ] ================================
#include                                                                        SAMP_AC/MODULE/ANTICHEAT/FAST_SPAWN
#include                                                                        SAMP_AC/MODULE/ANTICHEAT/DAMAGE_HELPER
#include                                                                        SAMP_AC/MODULE/ANTICHEAT/TELEPORT_CAR_TO_PLAYER
//============================= [ ANTICRASHER ] ================================
#include                                                                        SAMP_AC/MODULE/ANTICRASHER/PAINTJOB
#include                                                                        SAMP_AC/MODULE/ANTICRASHER/LOADING
//============================= [ COSTUM FUNC ] ================================
#include                                                                        SAMP_AC/CUSTOM_FUNC/SAMP_AC_CHECK_BOAT
#include                                                                        SAMP_AC/CUSTOM_FUNC/SAMP_AC_CHECK_MOTO
#include                                                                        SAMP_AC/CUSTOM_FUNC/SAMP_AC_CHECK_SPEED
#include                                                                        SAMP_AC/CUSTOM_FUNC/SAMP_AC_CHECK_PLANE
#include                                                                        SAMP_AC/CUSTOM_FUNC/SAMP_AC_CHECK_VEHICLE
#include                                                                        SAMP_AC/CUSTOM_FUNC/SAMP_AC_DAMAGE_SYSTEM
public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
  	{
  	    SERVER_INFO[playerid][SAMP_ID_VEHICLE] = 0;
		SERVER_INFO[playerid][SAMP_FUNC][1] =
		SERVER_INFO[playerid][SAMP_WARN][1] = 1;
	}
	if(newstate == PLAYER_STATE_ONFOOT)
	{
	    SERVER_INFO[playerid][SAMP_FUNC][1] =
		SERVER_INFO[playerid][SAMP_WARN][1] = 1;
	    SERVER_INFO[playerid][SAMP_ID_VEHICLE] =
		SERVER_INFO[playerid][SAMP_USE_VEHICLE] = 0;
	}
	return true;
}
public OnPlayerUpdate(playerid)
{
	SERVER_INFO[playerid][SAMP_TICK] = GetTickCount();
    if(DAMAGE_INFO[playerid][DAMAGE_FIX_HP] > 0) DAMAGE_INFO[playerid][DAMAGE_FIX_HP]--;
	return true;
}
public OnPlayerSpawn(playerid)
{
	SERVER_INFO[playerid][SAMP_USE_WEAPON] = 1;
    DAMAGE_INFO[playerid][DAMAGE_HEALTH] = 100.0;
    if(SERVER_INFO[playerid][SAMP_FIX_POSITION] == 1)
    {
        SERVER_INFO[playerid][SAMP_FUNC][0] = 1;
		SERVER_INFO[playerid][SAMP_WARN][0] = 1;
		SERVER_INFO[playerid][SAMP_FIX_POSITION] = 0;
    }
	return true;
}
public OnGameModeInit()//ukoliko zelite test za bacanje vozila
{
	CreateVehicle(411, 0, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 5, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 10, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 15, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 20, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 25, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 30, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 35, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 40, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 45, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 50, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 55, 0, 10, 0, -1, -1, 60);
	CreateVehicle(411, 60, 0, 10, 0, -1, -1, 60);
	return 1;
}
GetName(playerid)
{
	new Ime_Igraca[MAX_PLAYER_NAME];
	GetPlayerName(playerid, Ime_Igraca, MAX_PLAYER_NAME);
	return Ime_Igraca;
}
