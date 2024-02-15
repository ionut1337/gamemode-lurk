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
		if( !playerVariables[ playerid ][ pQuestObject ][ objid ] )
			DestroyDynamicObject( playerVariables[ playerid ][ pQuestObjectPickup ][ objid ] ), playerVariables[ playerid ][ pQuestObjectPickup ][ objid ] = INVALID_OBJECT_ID;

	return true;
}
// [ Include's FUNCTIONS ]
SQL_Function LoadServerObjectQuest()
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
	printf( "Successfully Loaded [ %d ] Quest Objects", Rows );
}
stock GetPlayerTotalObjectQuest( playerid )
{
	new countObjects = 0;
	for( new obj = 1; obj <= MAX_QUESTOBJ - 1; obj++ )
		if( playerVariables[ playerid ][ pQuestObject ][ obj ] )
			countObjects++;
	return countObjects;
}
stock UpdatePlayerQuestObject( playerid )
{
	new saveQuest[ 128 ];
	format( saveQuest, sizeof saveQuest, "%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d",
		playerVariables[ playerid ][ pQuestObject ][ 1 ], playerVariables[ playerid ][ pQuestObject ][ 2 ], playerVariables[ playerid ][ pQuestObject ][ 3 ],
		playerVariables[ playerid ][ pQuestObject ][ 4 ], playerVariables[ playerid ][ pQuestObject ][ 5 ], playerVariables[ playerid ][ pQuestObject ][ 6 ], playerVariables[ playerid ][ pQuestObject ][ 7 ],
		playerVariables[ playerid ][ pQuestObject ][ 8 ], playerVariables[ playerid ][ pQuestObject ][ 9 ], playerVariables[ playerid ][ pQuestObject ][ 10 ], playerVariables[ playerid ][ pQuestObject ][ 11 ],
		playerVariables[ playerid ][ pQuestObject ][ 12 ], playerVariables[ playerid ][ pQuestObject ][ 13 ], playerVariables[ playerid ][ pQuestObject ][ 14 ], playerVariables[ playerid ][ pQuestObject ][ 15 ],
		playerVariables[ playerid ][ pQuestObject ][ 16 ], playerVariables[ playerid ][ pQuestObject ][ 17 ], playerVariables[ playerid ][ pQuestObject ][ 18 ], playerVariables[ playerid ][ pQuestObject ][ 19 ],
		playerVariables[ playerid ][ pQuestObject ][ 20 ], playerVariables[ playerid ][ pQuestObject ][ 21 ], playerVariables[ playerid ][ pQuestObject ][ 22 ], playerVariables[ playerid ][ pQuestObject ][ 23 ],
		playerVariables[ playerid ][ pQuestObject ][ 24 ], playerVariables[ playerid ][ pQuestObject ][ 25 ], playerVariables[ playerid ][ pQuestObject ][ 26 ], playerVariables[ playerid ][ pQuestObject ][ 27 ],
		playerVariables[ playerid ][ pQuestObject ][ 28 ], playerVariables[ playerid ][ pQuestObject ][ 29 ], playerVariables[ playerid ][ pQuestObject ][ 30 ], playerVariables[ playerid ][ pQuestObject ][ 31 ],
		playerVariables[ playerid ][ pQuestObject ][ 32 ], playerVariables[ playerid ][ pQuestObject ][ 33 ], playerVariables[ playerid ][ pQuestObject ][ 34 ], playerVariables[ playerid ][ pQuestObject ][ 35 ] );

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_accounts` SET `playerQuestObjects` = '%s' WHERE `id` = %d", saveQuest, GetPlayerMysqlID(playerid) );
	mysql_tquery( g_Handle, gsQuery );
}
function CheckNearbyObjects( playerid )
{
	// TODO: Foloseste GetPlayerDistanceFromPoint
	if( !IsPlayerConnected( playerid ) )
	{
		foreach( new i : QuestObjects )
			if( !playerVariables[ playerid ][ pQuestObject ][ i ] )
				DestroyDynamicPickup( GetPVarIntEx( playerid, "obj_Pickup", i ) ), SetPVarIntEx( playerid, "quest_Object", 1, i );

		return KillTimer( playerVariables[ playerid ][ pQuestTimer ] );
	}
	else if( playerVariables[ playerid ][ pLogged ] && !GetPlayerVirtualWorld( playerid ) && !GetPlayerInterior( playerid ) && playerVariables[ playerid ][ pSpectating ] == INVALID_PLAYER_ID )
	{
		new object_Count;
		foreach( new i : QuestObjects )
			if( IsPlayerInRangeOfPoint( playerid, 200, GetGVarFloat( "obj_PosX", i ), GetGVarFloat( "obj_PosY", i ), GetGVarFloat( "obj_PosZ", i ) ) && !playerVariables[ playerid ][ pQuestObject ][ i ] )
				object_Count++;

		if( object_Count )
		{
			new closest_Object = GetClosestQuestObject( playerid, 200.0 );
			if( closest_Object != INVALID_OBJECT_ID )
			{
				if( IsPlayerInRangeOfPoint( playerid, 200, GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) ) )
					UpdateObjectsNearby( playerid, closest_Object, object_Count, "~r~~h~", GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) );

				if( IsPlayerInRangeOfPoint( playerid, 100, GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) ) )
					UpdateObjectsNearby( playerid, closest_Object, object_Count, "~y~~h~", GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) );

				if( IsPlayerInRangeOfPoint( playerid, 50, GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) ) )
					UpdateObjectsNearby( playerid, closest_Object, object_Count, "~g~~h~", GetGVarFloat( "obj_PosX", closest_Object ), GetGVarFloat( "obj_PosY", closest_Object ), GetGVarFloat( "obj_PosZ", closest_Object ) );
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
    	if( !playerVariables[ playerid ][ pQuestObject ][ i ] )
    	{
			GetDynamicObjectPos( playerVariables[ playerid ][ pQuestObjectPickup ][ i ], objRot[ 0 ], objRot[ 1 ], objRot[ 2 ] );
	        thisDist = GetPlayerDistanceFromPoint( playerid, objRot[ 0 ], objRot[ 1 ], objRot[ 2 ] );
	        if( thisDist < closestDist && thisDist < range )
	            closestObject = i, closestDist = thisDist;
	    }
    }
    return closestObject;
}
stock UpdateObjectsNearby( playerid, closest_Object, countOBJ, stage[] , Float: x, Float: y, Float: z)
{
	new objString[ 128 ];
	format( objString, 128, "%sCLOSEST OBJECT: %d~n~%d OBJECTS NEARBY (%0.2fm)", stage, closest_Object, countOBJ, GetPlayerDistanceFromPoint(playerid, x, y, z));
	PlayerTextDrawSetString( playerid, PlayerText:PLAYER_TD[ 9 ], objString );
	PlayerTextDrawShow( playerid, PlayerText:PLAYER_TD[ 9 ] );
}