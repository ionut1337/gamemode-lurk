/*
 
    emotes 1-1 b-hood

*/


#include <YSI\y_hooks>

#define MAX_EMOTES_OBJECTS  10
#define INDEX_EMOTES        2
#define EMOTES_BONE         1
#define sys_Emote           690
#define sys_Manage_Emote    691

enum _emotes_player
{
    emotes_Status[MAX_EMOTES_OBJECTS],
	emotes_Player[MAX_EMOTES_OBJECTS]
}
new playerEmotes[MAX_PLAYERS][_emotes_player];

enum _emotesS
{
	emoteName[15],
	emoteModel
}

static const emotesVariables[MAX_EMOTES_OBJECTS][_emotesS] =
{
	{"money", 1212},
	{"heart", 1240},
	{"dollar", 1274},
	{"killfrenzy", 1254},
	{"what?", 18631},
	{"star", 1247},
	{"dynamite", 1654},
	{"bullets", 2061},
	{"tiki", 1276},
	{"minigun", 362}
};

enum emotesObjects 
{
	Float: fOffSetx,
	Float: fOffSety,
	Float: fOffSetz,

	Float: fRotX,
	Float: fRotY,
	Float: fRotZ,

    Float: fScaleX,
    Float: fScaleY,
    Float: fScaleZ	
}

new info_objects_emotes[][emotesObjects] =
{
	{0.7719, 0.0159, 0.0000, -0.8000, 90.7999, 0.0000, 1.0000, 1.0000, 1.0000},
	{0.770232, 0.053177, -0.013616, 360.000000, 84.124847, 171.125076, 1.000000, 1.000000, 1.000000},
	{0.814138, 0.000000, 0.000000, 2.073283, 87.525367, 0.000000, 1.000000, 1.000000, 1.000000},
	{0.784310, 0.000000, 0.000000, 2.411740, 89.630622, 0.000000, 1.000000, 1.000000, 1.000000},
	{0.815797, 0.049358, 0.052176, 0.000000, 86.414825, 187.522155, 1.000000, 1.000000, 1.000000},
	{0.809557, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000},
	{0.802607, 0.084538, 0.006412, 0.000000, 86.476608, 160.516464, 1.000000, 1.000000, 1.000000},
	{0.889467, 0.047053, 0.009251, 0.000000, 88.206405, 0.000000, 1.000000, 1.000000, 1.000000},
	{0.961451, 0.000000, 0.000000, 274.463226, 82.852432, 0.000000, 1.000000, 1.000000, 1.000000},
	{0.491324, -0.440090, 0.006242, 78.801452, 230.228591, 171.175369, 1.000000, 1.000000, 1.000000}
};

CMD:emotes(playerid, params[])
{
	if(playerVariables[ playerid ][ pPremium ] < 1) return SendClientMessage(playerid, COLOR_WHITE, "You are not a premium or vip user.");
	
    new szString[400], status_emote[40];

    szString = "#.\tModel\tName\tStatus\n";

    for(new e; e < sizeof(emotesVariables); e++)
    {
    	format(status_emote, sizeof status_emote, "{30de12}active (key: %s)", (playerEmotes[playerid][emotes_Player][e] == 0) ? ("NUM4") : ("NUM6"));
    	format(szString, sizeof szString, "%s%d.\t%d\t%s\t%s\n", szString, e+1, emotesVariables[e][emoteModel], emotesVariables[e][emoteName], (playerEmotes[playerid][emotes_Status][e] == 1) ? (status_emote) : ("{b30000}Inactive"));
    }
    ShowPlayerDialog(playerid, sys_Emote, DIALOG_STYLE_TABLIST_HEADERS, "{f57e0f}Emotes {ede8e4}Menu", szString, "Select", "Cancel");

	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem)
{
	if(dialogid == sys_Emote)
	{
		if(!response) return 1;

		new info[128];

		format(info, sizeof info, "{f57e0f}Emotes {ede8e4}Menu: %s{ede8e4}", emotesVariables[listitem][emoteName]);
		ShowPlayerDialog(playerid, sys_Manage_Emote, DIALOG_STYLE_LIST, info, "Set to NUM4 key\nSet to NUM6 key", "Select", "Cancel");

	    SetPVarInt(playerid, "select_emote", listitem); 
	}
	if(dialogid == sys_Manage_Emote)
	{
		if(!response) return 1;

		new id_emote = GetPVarInt(playerid, "select_emote");

		switch(listitem)
		{
			case 0:
			{
				if(GetPVarInt(playerid, "emote_num4") != -1)
				{
					new x = GetPVarInt(playerid, "emote_num4");
					playerEmotes[playerid][emotes_Player][x] = -1;
					playerEmotes[playerid][emotes_Status][x] = 0;


					playerEmotes[playerid][emotes_Player][id_emote] = 0;
				    playerEmotes[playerid][emotes_Status][id_emote] = 1;
				}
				else
				{
					playerEmotes[playerid][emotes_Player][id_emote] = 0;
				    playerEmotes[playerid][emotes_Status][id_emote] = 1;
				}

				SetPVarInt(playerid, "emote_num4", id_emote);
			}
			case 1:
			{
				if(GetPVarInt(playerid, "emote_num6") != -1)
				{
                    new x = GetPVarInt(playerid, "emote_num6");

					playerEmotes[playerid][emotes_Player][x] = -1;
					playerEmotes[playerid][emotes_Status][x] = 0;

					playerEmotes[playerid][emotes_Player][id_emote] = 1;
				    playerEmotes[playerid][emotes_Status][id_emote] = 1;
				}
				else
				{	
					playerEmotes[playerid][emotes_Player][id_emote] = 1;
					playerEmotes[playerid][emotes_Status][id_emote] = 1;
                }
				SetPVarInt(playerid, "emote_num6", id_emote);
			}
		}
		SendClientMessagef(playerid, -1, "{e8904a}Emoticonul '%s' (id: %d) a fost setata cu succes pe tasta %s.", emotesVariables[id_emote][emoteName], emotesVariables[id_emote][emoteModel], (listitem) == 0 ? ("NUM4") : ("NUM6"));
	}
	return 1;
}

hook OnPlayerConnect(playerid)
{
	SetPVarInt(playerid, "emote_num4", -1);
	SetPVarInt(playerid, "emote_num6", -1);
	SetPVarInt(playerid, "emoteActive", 0);

	return 1;
}

hook OnPlayerDisconnect(playerid)
{
	SetPVarInt(playerid, "emote_num4", -1);
	SetPVarInt(playerid, "emote_num6", -1);
	SetPVarInt(playerid, "emoteActive", 0);
	if(GetPVarInt(playerid, "emoteActive") == 1) RemovePlayerAttachedObject(playerid, INDEX_EMOTES), SetPVarInt(playerid, "emoteActive", 0);

	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    switch(newkeys)
    {
		case KEY_ANALOG_LEFT:
		{
			if(GetPVarInt(playerid, "emoteActive") == 0 && GetPVarInt(playerid, "emote_num4") != -1) SET_OBJECT(playerid, GetPVarInt(playerid, "emote_num4"));
	    }
		case KEY_ANALOG_RIGHT:
		{
			if(GetPVarInt(playerid, "emoteActive") == 0 && GetPVarInt(playerid, "emote_num6") != -1) SET_OBJECT(playerid, GetPVarInt(playerid, "emote_num6"));
		}
    }
	return 1;
}

function remove_emotes_obj(playerid)
{
	RemovePlayerAttachedObject(playerid, INDEX_EMOTES);	
	SetPVarInt(playerid, "emoteActive", 0);
}

function SET_OBJECT(playerid, id_emote)
{
	SetPlayerAttachedObject(playerid, INDEX_EMOTES, emotesVariables[id_emote][emoteModel], EMOTES_BONE, info_objects_emotes[id_emote][fOffSetx], info_objects_emotes[id_emote][fOffSety], 
        info_objects_emotes[id_emote][fOffSetz], info_objects_emotes[id_emote][fRotX], info_objects_emotes[id_emote][fRotY], info_objects_emotes[id_emote][fRotZ], info_objects_emotes[id_emote][fScaleX], info_objects_emotes[id_emote][fScaleY], info_objects_emotes[id_emote][fScaleZ]);        
	SetPVarInt(playerid, "emoteActive", 1);
	SetTimerEx( "remove_emotes_obj", 5000, false, "d", playerid );
}