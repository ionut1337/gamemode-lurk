// [ Include's HOOKS ]
#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
	// ( Create player's timer for checking the objects )
	SetPVarInt( playerid, "quest_Timer", 0 );
	playerVariables[ playerid ][ pQuestTimer ] = SetTimerEx( "CheckNearbyObjects", 1000, true, "d", playerid );
	return true;
}
hook OnPlayerDisconnect( playerid, reason )
{
	foreach( new objid : QuestObjects )
		if( !playerVariables[ playerid ][ pUnderwaterQuestObject ][ objid ] )
			DestroyDynamicObject( playerVariables[ playerid ][ pUnderwaterQuestObjectPickup ][ objid ] ), playerVariables[ playerid ][ pUnderwaterQuestObjectPickup ][ objid ] = INVALID_OBJECT_ID;

	return true;
}
// [ Include's FUNCTIONS ]
SQL_Function LoadServerUnderwaterQuest()
{
	new X, Rows, Fields;
    //cache_get_row_count( Rows );
    //cache_get_field_count( Fields );
    cache_get_data( Rows, Fields, g_Handle );

	for( new i = 0; i < Rows; i++ )
	{
	    X = cache_get_field_content_int( i, "objKey", g_Handle );

        Iter_Add(QuestObjects, X);

        SetGVarInt( "obj_Model", 			cache_get_field_content_int( i, "objModel", g_Handle ), X );
	    SetGVarFloat( "obj_PosX", 			cache_get_field_content_float( i, "objPosX", g_Handle ), X );
		SetGVarFloat( "obj_PosY", 			cache_get_field_content_float( i, "objPosY", g_Handle ), X );
		SetGVarFloat( "obj_PosZ", 			cache_get_field_content_float( i, "objPosZ", g_Handle ), X );

		//SetGVarInt( "object_Zone", CreateDynamicCircle( GetGVarFloat( "obj_PosX", X ), GetGVarFloat( "obj_PosY", X ), 1.5, -1, -1, -1 ), X );
		SetGVarInt( "object_Zone", CreateDynamicSphere( GetGVarFloat( "obj_PosX", X ), GetGVarFloat( "obj_PosY", X ), GetGVarFloat( "obj_PosZ", X ), 1.5 ), X );
	}
	printf( "Successfully Loaded [ %d ] Underwater Quest Objects", Rows );
}
stock GetPlayerTotalObjectQuest( playerid )
{
	new countObjects = 0;
	for( new obj = 1; obj <= MAX_QUESTOBJ - 1; obj++ )
		if( playerVariables[ playerid ][ pUnderwaterQuestObject ][ obj ] )
			countObjects++;
	return countObjects;
}
stock UpdatePlayerQuestObject( playerid )
{
	new saveQuest[ 128 ];
	format( saveQuest, sizeof saveQuest, "%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d",
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 1 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 2 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 3 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 4 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 5 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 6 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 7 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 8 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 9 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 10 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 11 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 12 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 13 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 14 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 15 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 16 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 17 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 18 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 19 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 20 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 21 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 22 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 23 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 24 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 25 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 26 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 27 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 28 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 29 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 30 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 31 ],
		playerVariables[ playerid ][ pUnderwaterQuestObject ][ 32 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 33 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 34 ], playerVariables[ playerid ][ pUnderwaterQuestObject ][ 35 ] );

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_accounts` SET `playerUnderwaterQuestObjects` = '%s' WHERE `id` = %d", saveQuest, GetPlayerMysqlID(playerid) );
	mysql_tquery( g_Handle, gsQuery );
}
function CheckNearbyObjects( playerid )
{
	// TODO: Foloseste GetPlayerDistanceFromPoint
	if( !IsPlayerConnected( playerid ) )
	{
		foreach( new i : QuestObjects )
			if( !playerVariables[ playerid ][ pUnderwaterQuestObject ][ i ] )
				DestroyDynamicPickup( GetPVarIntEx( playerid, "obj_Pickup", i ) ), SetPVarIntEx( playerid, "quest_Object", 1, i );

		return KillTimer( playerVariables[ playerid ][ pQuestTimer ] );
	}
	else if( playerVariables[ playerid ][ pLogged ] && !GetPlayerVirtualWorld( playerid ) && !GetPlayerInterior( playerid ) && playerVariables[ playerid ][ pSpectating ] == INVALID_PLAYER_ID )
	{
		new object_Count;
		foreach( new i : QuestObjects )
			if( IsPlayerInRangeOfPoint( playerid, 200, GetGVarFloat( "obj_PosX", i ), GetGVarFloat( "obj_PosY", i ), GetGVarFloat( "obj_PosZ", i ) ) && !playerVariables[ playerid ][ pUnderwaterQuestObject ][ i ] )
				object_Count++;

		if( object_Count )
		{
			new closest_Object = GetClosestQuestObject( playerid, 200.0 );
			if( closest_Object != INVALID_OBJECT_ID )
			{
				if( IsPlayerInRangeOfPoint( playerid, 200, GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) ) )
					UpdateObjectsNearby( playerid, closest_Object, object_Count, "~r~~h~" );

				if( IsPlayerInRangeOfPoint( playerid, 100, GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) ) )
					UpdateObjectsNearby( playerid, closest_Object, object_Count, "~y~~h~" );

				if( IsPlayerInRangeOfPoint( playerid, 50, GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) ) )
					UpdateObjectsNearby( playerid, closest_Object, object_Count, "~g~~h~" );
			}
			else PlayerTextDrawHide( playerid, PlayerText:PLAYER_TD[ 9 ] );
		}
		else PlayerTextDrawHide( playerid, PlayerText:PLAYER_TD[ 9 ] );
	}
	else PlayerTextDrawHide( playerid, PlayerText:PLAYER_TD[ 9 ] );
	return true;
}
// [ Include's STOCKS ]
stock GetClosestQuestObject(playerid, Float:range = FLOAT_INFINITY)
{
    new Float:closestDist = FLOAT_INFINITY,
    	closestObject = INVALID_OBJECT_ID,
    	Float:thisDist, Float:objRot[ 3 ];

    foreach( new i : QuestObjects ) 
    {
    	if( !playerVariables[ playerid ][ pUnderwaterQuestObject ][ i ] )
    	{
			GetDynamicObjectPos( playerVariables[ playerid ][ pUnderwaterQuestObjectPickup ][ i ], objRot[ 0 ], objRot[ 1 ], objRot[ 2 ] );
	        thisDist = GetPlayerDistanceFromPoint( playerid, objRot[ 0 ], objRot[ 1 ], objRot[ 2 ] );
	        if( thisDist < closestDist && thisDist < range )
	            closestObject = i, closestDist = thisDist;
	    }
    }
    return closestObject;
}
stock UpdateObjectsNearby( playerid, closest_Object, countOBJ, stage[] )
{
	new objString[ 64 ];
	format( objString, 64, "%sCLOSEST OBJECT: %d~n~%d OBJECTS NEARBY", stage, closest_Object, countOBJ );
	PlayerTextDrawSetString( playerid, PlayerText:PLAYER_TD[ 9 ], objString );
	PlayerTextDrawShow( playerid, PlayerText:PLAYER_TD[ 9 ] );
}