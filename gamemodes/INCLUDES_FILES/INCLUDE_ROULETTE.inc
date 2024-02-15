/*
    RULETA
*/

#include <YSI\y_hooks>

#define ROULETTE_COLOR_RED              ( 0xFF0000FF )
#define ROULETTE_COLOR_GREEN            ( 0x00FF00FF )
#define ROULETTE_COLOR_BLACK            ( 0x000000FF )

#define ROULETTE_BET_RED                RouletteTD[ 14 ]
#define ROULETTE_BET_GREEN              RouletteTD[ 12 ]
#define ROULETTE_BET_BLACK              RouletteTD[ 13 ]

#define ROULETTE_WIN_RED                ( 1 )
#define ROULETTE_WIN_GREEN              ( 2 )
#define ROULETTE_WIN_BLACK              ( 3 )

#define ROULETTE_STATUS                 RouletteTD[18]

#define ROULETTE_STATE_IDLE             ( 0 )
#define ROULETTE_STATE_STARTING         ( 1 )
#define ROULETTE_STATE_ROLLING          ( 2) 

#define ROULETTE_TYPE_ROLLING           ( 1 )
#define ROULETTE_TYPE_IDLE              ( 2 )

enum E_ROULETTE
{
    roulette_state,

    roulette_bets[3], // 0 - red ? 1 green ? 2 black
    roulette_bets_amount[3], // 0 - red ? 1 green ? 2 black
    roulette_time,

    roulette_result, // 0 - red ? 1 green ? 2 black
    roulette_green_show,
    roulette_step,
    roulette_pattern[7],

    roulette_object,
    Text3D:roulette_label
}

new rouletteVariables[E_ROULETTE];

new 
    Text:RouletteTD[19], 
    PlayerText:RouletteMoney;


new
    Iterator:in_roulette<MAX_PLAYERS>, 
    Iterator:roulette_bets<MAX_PLAYERS>;

new RouletteColor[MAX_PLAYERS], 
    RouletteBet[MAX_PLAYERS];

hook OnGameModeInit()
{
    rouletteVariables[roulette_object] =  CreateDynamicObject(1978, 1959.57849, 1016.12897, 992.52313, 0.0, 0.0, 0.0);
    rouletteVariables[roulette_label]  =  CreateDynamic3DTextLabel("Roulette\n{FFFFFF}Press 'F' to play.", COLOR_YELLOW, 1959.57849, 1016.12897, 992.52313, 7.0);

    serverVariables[ ServerTimers ][ 8 ] = SetTimer( "RouletteTimer", 1000, true );
    serverVariables[ ServerTimers ][ 9 ] = SetTimer( "RouletteRoll", 125, true );

    Iter_Clear( in_roulette );
    Iter_Clear( roulette_bets );

    ResetRoulette();

    // box
    RouletteTD[0] = TextDrawCreate(320.000000, 124.000000, "_");
    TextDrawFont(RouletteTD[0], 1);
    TextDrawLetterSize(RouletteTD[0], 0.600000, 30.300003);
    TextDrawTextSize(RouletteTD[0], 298.500000, 366.000000);
    TextDrawSetOutline(RouletteTD[0], 1);
    TextDrawAlignment(RouletteTD[0], 2);
    TextDrawBackgroundColor(RouletteTD[0], 255);
    TextDrawBoxColor(RouletteTD[0], 135);
    TextDrawUseBox(RouletteTD[0], 1);
    TextDrawSetProportional(RouletteTD[0], 1);

    // colors
    new Float:x_coords = 162.000000;

    for(new x = 1; x <= 7; x++)
    {
        RouletteTD[x] = TextDrawCreate(x_coords, 124.000000, "_");
        TextDrawFont(RouletteTD[x], 1);
        TextDrawLetterSize(RouletteTD[x], 0.600000, 9.300003);
        TextDrawTextSize(RouletteTD[x], 298.500000, 50.000000);
        TextDrawSetOutline(RouletteTD[x], 1);
        TextDrawAlignment(RouletteTD[x], 2);
        TextDrawBackgroundColor(RouletteTD[x], 255);
        TextDrawBoxColor(RouletteTD[x], -16776961);
        TextDrawUseBox(RouletteTD[x], 1);
        TextDrawSetProportional(RouletteTD[x], 1);

        x_coords += 52.666666;
    }

    // middle line
    RouletteTD[8] = TextDrawCreate(320.000000, 124.000000, "_");
    TextDrawFont(RouletteTD[8], 1);
    TextDrawLetterSize(RouletteTD[8], 0.600000, 9.300003);
    TextDrawTextSize(RouletteTD[8], 298.500000, 3.000000);
    TextDrawSetOutline(RouletteTD[8], 1);
    TextDrawAlignment(RouletteTD[8], 2);
    TextDrawBackgroundColor(RouletteTD[8], 255);
    TextDrawBoxColor(RouletteTD[8], 0xFFFFFFFF);
    TextDrawUseBox(RouletteTD[8], 1);
    TextDrawSetProportional(RouletteTD[8], 1);

    // red, green, black
    RouletteTD[9] = TextDrawCreate(200.000000, 259.000000, "_");
    TextDrawFont(RouletteTD[9], 1);
    TextDrawLetterSize(RouletteTD[9], 0.600000, 3.750003);
    TextDrawTextSize(RouletteTD[9], 298.500000, 85.000000);
    TextDrawSetOutline(RouletteTD[9], 1);
    TextDrawAlignment(RouletteTD[9], 2);
    TextDrawBoxColor(RouletteTD[9], ROULETTE_COLOR_RED);
    TextDrawUseBox(RouletteTD[9], 1);
    TextDrawSetProportional(RouletteTD[9], 1);

    RouletteTD[10] = TextDrawCreate(320.000000, 259.000000, "_");
    TextDrawFont(RouletteTD[10], 1);
    TextDrawLetterSize(RouletteTD[10], 0.600000, 3.750003);
    TextDrawTextSize(RouletteTD[10], 298.500000, 85.000000);
    TextDrawSetOutline(RouletteTD[10], 1);
    TextDrawAlignment(RouletteTD[10], 2);
    TextDrawBackgroundColor(RouletteTD[10], 255);
    TextDrawBoxColor(RouletteTD[10], ROULETTE_COLOR_GREEN);
    TextDrawUseBox(RouletteTD[10], 1);
    TextDrawSetProportional(RouletteTD[10], 1);

    RouletteTD[11] = TextDrawCreate(440.000000, 259.000000, "_");
    TextDrawFont(RouletteTD[11], 1);
    TextDrawLetterSize(RouletteTD[11], 0.600000, 3.750003);
    TextDrawTextSize(RouletteTD[11], 298.500000, 85.000000);
    TextDrawSetOutline(RouletteTD[11], 1);
    TextDrawAlignment(RouletteTD[11], 2);
    TextDrawBackgroundColor(RouletteTD[11], 255);
    TextDrawBoxColor(RouletteTD[11], ROULETTE_COLOR_BLACK);
    TextDrawUseBox(RouletteTD[11], 1);
    TextDrawSetProportional(RouletteTD[11], 1);

    // green, black, red
    RouletteTD[12] = TextDrawCreate(320.000000, 268.000000, "WIN 14X");
    TextDrawFont(RouletteTD[12], 3);
    TextDrawLetterSize(RouletteTD[12], 0.383332, 1.649999);
    TextDrawTextSize(RouletteTD[12], 20.000000, 84.500000);
    TextDrawSetOutline(RouletteTD[12], 1);
    TextDrawAlignment(RouletteTD[12], 2);
    TextDrawBackgroundColor(RouletteTD[12], 255);
    TextDrawSetProportional(RouletteTD[12], 1);
    TextDrawSetSelectable(RouletteTD[12], 1);

    RouletteTD[13] = TextDrawCreate(440.000000, 268.000000, "win 2x");
    TextDrawFont(RouletteTD[13], 3);
    TextDrawLetterSize(RouletteTD[13], 0.383332, 1.649999);
    TextDrawTextSize(RouletteTD[13], 20.000000, 84.500000);
    TextDrawSetOutline(RouletteTD[13], 1);
    TextDrawAlignment(RouletteTD[13], 2);
    TextDrawBackgroundColor(RouletteTD[13], 255);
    TextDrawSetProportional(RouletteTD[13], 1);
    TextDrawSetSelectable(RouletteTD[13], 1);

    RouletteTD[14] = TextDrawCreate(200.000000, 268.000000, "win 2x");
    TextDrawFont(RouletteTD[14], 3);
    TextDrawLetterSize(RouletteTD[14], 0.383332, 1.649999);
    TextDrawTextSize(RouletteTD[14], 20.000000, 84.500000);
    TextDrawSetOutline(RouletteTD[14], 1);
    TextDrawAlignment(RouletteTD[14], 2);
    TextDrawBackgroundColor(RouletteTD[14], 255);
    TextDrawSetProportional(RouletteTD[14], 1);
    TextDrawSetSelectable(RouletteTD[14], 1);

    // bets
    x_coords = 200.0;
    for(new x = 15; x <= 17; x++)
    {
        RouletteTD[x] = TextDrawCreate(x_coords, 296.000000, "0 bets~n~$0");
        TextDrawFont(RouletteTD[x], 2);
        TextDrawLetterSize(RouletteTD[x], 0.166666, 0.850000);
        TextDrawTextSize(RouletteTD[x], 400.000000, 84.500000);
        TextDrawSetOutline(RouletteTD[x], 1);
        TextDrawSetShadow(RouletteTD[x], 0);
        TextDrawAlignment(RouletteTD[x], 2);
        TextDrawColor(RouletteTD[x], -1);
        TextDrawBackgroundColor(RouletteTD[x], 255);
        TextDrawBoxColor(RouletteTD[x], 50);
        TextDrawUseBox(RouletteTD[x], 0);
        TextDrawSetProportional(RouletteTD[x], 1);
        TextDrawSetSelectable(RouletteTD[x], 0);

        x_coords += 120;
    }

    // roulette status
    RouletteTD[18] = TextDrawCreate(320.000000, 378.000000, "WAITING FOR BETS...");
    TextDrawFont(RouletteTD[18], 1);
    TextDrawLetterSize(RouletteTD[18], 0.370833, 1.549998);
    TextDrawTextSize(RouletteTD[18], 400.000000, 242.000000);
    TextDrawSetOutline(RouletteTD[18], 1);
    TextDrawAlignment(RouletteTD[18], 2);
    TextDrawBackgroundColor(RouletteTD[18], 255);
    TextDrawBoxColor(RouletteTD[18], 0xFFFFFFFF);
    TextDrawSetProportional(RouletteTD[18], 1);

    UpdateRouletteColors();
}

hook OnPlayerConnect(playerid)
{

    RouletteMoney = CreatePlayerTextDraw(playerid, 539.000000, 96.000000, "$999,999,999");
    PlayerTextDrawFont(playerid, RouletteMoney, 3);
    PlayerTextDrawLetterSize(playerid, RouletteMoney, 0.437499, 1.949998);
    PlayerTextDrawTextSize(playerid, RouletteMoney, 400.000000, 242.000000);
    PlayerTextDrawSetOutline(playerid, RouletteMoney, 1);
    PlayerTextDrawAlignment(playerid, RouletteMoney, 2);
    PlayerTextDrawColor(playerid, RouletteMoney, 9109759);
    PlayerTextDrawBackgroundColor(playerid, RouletteMoney, 255);
    PlayerTextDrawSetProportional(playerid, RouletteMoney, 1);

    RemoveBuildingForPlayer(playerid, 1978, 1959.3984, 1010.1172, 992.5078, 0.25);
    RemoveBuildingForPlayer(playerid, 2188, 1960.3672, 1015.6641, 992.4688, 0.25);
    RemoveBuildingForPlayer(playerid, 2773, 1960.3047, 1017.9219, 992.0234, 0.25);
    RemoveBuildingForPlayer(playerid, 2188, 1960.3672, 1020.1719, 992.4688, 0.25);
    RemoveBuildingForPlayer(playerid, 2773, 1961.3516, 1021.4297, 992.0234, 0.25);
    RemoveBuildingForPlayer(playerid, 2773, 1961.3750, 1014.3672, 992.0234, 0.25);
    RemoveBuildingForPlayer(playerid, 2188, 1962.3438, 1015.6641, 992.4688, 0.25);
    RemoveBuildingForPlayer(playerid, 2773, 1962.3750, 1017.9219, 992.0234, 0.25);
    RemoveBuildingForPlayer(playerid, 2188, 1962.3438, 1020.1797, 992.4688, 0.25);
    RemoveBuildingForPlayer(playerid, 1978, 1963.7109, 1010.1172, 992.5078, 0.25);
    RemoveBuildingForPlayer(playerid, 1978, 1959.3984, 1025.6953, 992.5078, 0.25);
    RemoveBuildingForPlayer(playerid, 1978, 1963.7109, 1025.6953, 992.5078, 0.25);

    RouletteBet[playerid] = 0;
}

hook OnPlayerDisconnect(playerid, reason)
{
    Iter_Remove(in_roulette, playerid);

    if(RouletteBet[playerid] != 0)
    {
        switch(RouletteColor[playerid])
        {
            case ROULETTE_COLOR_RED:
            {
                rouletteVariables[roulette_bets][0]--;
                rouletteVariables[roulette_bets_amount][0] -= RouletteBet[playerid];
            }

            case ROULETTE_COLOR_GREEN:
            {
                rouletteVariables[roulette_bets][1]--;
                rouletteVariables[roulette_bets_amount][1] -= RouletteBet[playerid];
            }

            case ROULETTE_COLOR_BLACK:
            {
                rouletteVariables[roulette_bets][2]--;
                rouletteVariables[roulette_bets_amount][2] -= RouletteBet[playerid];
            }
        }

        UpdateRoulette();
    }

    Iter_Remove(roulette_bets, playerid);
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys == KEY_SECONDARY_ATTACK)
    {
        if(IsPlayerInRangeOfPoint(playerid, 5.0,1959.57849, 1016.12897, 992.52313) && !IsPlayerInRoulette(playerid))
        {
            ShowRoulette(playerid);

            RouletteColor[playerid] = 0;

            Iter_Add(in_roulette, playerid);
        }
    }
}

hook OnPlayerClickTextDraw(playerid, Text:clickedid)    
{
    if(clickedid == Text:INVALID_TEXT_DRAW)
    {
        if(IsPlayerInRoulette(playerid))
        {
            if(Iter_Contains(roulette_bets, playerid))
            {
                ShowRoulette(playerid);

                SendClientMessage(playerid, COLOR_ERROR, "Nu poti iesi acum de la ruleta!");
                return 1;
            }

            HideRoulette(playerid);
            Iter_Remove(in_roulette, playerid);
        }
    }

    if(IsPlayerInRoulette(playerid))
    {
        if(clickedid == ROULETTE_BET_RED || clickedid == ROULETTE_BET_GREEN || clickedid == ROULETTE_BET_BLACK)
        {
            if(Iter_Contains(roulette_bets, playerid))
                return SendClientMessage(playerid, COLOR_ERROR, "Ai pariat deja!");

            if(rouletteVariables[roulette_state] == ROULETTE_STATE_ROLLING)
                return SendClientMessage(playerid, COLOR_ERROR, "Nu poti paria in timp ce ruleta se invarte!");

            if(clickedid == ROULETTE_BET_RED) RouletteColor[playerid] = ROULETTE_COLOR_RED;
            else if(clickedid == ROULETTE_BET_GREEN) RouletteColor[playerid] = ROULETTE_COLOR_GREEN;
            else if(clickedid == ROULETTE_BET_BLACK) RouletteColor[playerid] = ROULETTE_COLOR_BLACK;

            gsString[ 0 ] = EOS;
            format( gsString, sizeof gsString, "Introdu aici suma pe care vrei sa o pariezi.\nPoti paria intre $1 si $%s.", FormatNumber( GetGamblingMaxim( playerid ) ) );
        
            ShowPlayerDialog(playerid, DIALOG_ROULETTE_BET, DIALOG_STYLE_INPUT, "SERVER: Roulette", gsString, "Bet", "Exit");
        }
        
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[ ] )
{
    if( !IsPlayerConnected( playerid ) )
        return 1;

    if( dialogid == DIALOG_ROULETTE_BET )
    {
        if(!response) return 1;

        if(RouletteBet[playerid] != 0) return 1;

        new amount = strval(inputtext);

        if( playerVariables[ playerid ][ pMoney ] < amount ) return SendClientMessagef(playerid, COLOR_GREY, "Error: "COL_LYE"You don't have $%s.", FormatNumber( amount ) );

        if( amount > GetGamblingMaxim( playerid ) || amount < 1 )
            return SendClientMessagef( playerid, -1, "Poti paria maxim intre $1 si $%s.", FormatNumber( GetGamblingMaxim( playerid ) ) );

        switch( RouletteColor[ playerid ] )
        {
            case ROULETTE_COLOR_RED:
            {
                rouletteVariables[roulette_bets_amount][0] += amount;
                rouletteVariables[roulette_bets][0]++;

                SendClientMessagef( playerid, COLOR_YELLOW, "(-) Ai pariat $%s pe {FF0000}RED (2X WIN).", FormatNumber( amount ) );

                gsString[ 0 ] = EOS;
                format( gsString, sizeof gsString, "* %s a pariat $%s pe RED (2X WIN).", username( playerid ), FormatNumber( amount ) );
                submitToRoulette( COLOR_RED, gsString );
            }
        
            case ROULETTE_COLOR_GREEN:
            {
                rouletteVariables[roulette_bets_amount][1] += amount;
                rouletteVariables[roulette_bets][1]++;

                SendClientMessagef(playerid, COLOR_YELLOW, "(-) Ai pariat $%s pe {4eb83d}GREEN (14X WIN).", FormatNumber(amount));

                gsString[ 0 ] = EOS;
                format( gsString, sizeof gsString, "* %s a pariat $%s pe GREEN (14X WIN).", username( playerid ), FormatNumber( amount ) );
                submitToRoulette( COLOR_GREEN, gsString );
            }

            case ROULETTE_COLOR_BLACK:
            {
                rouletteVariables[roulette_bets_amount][2] += amount;
                rouletteVariables[roulette_bets][2]++;

                SendClientMessagef(playerid, COLOR_YELLOW, "(-) Ai pariat $%s pe {CECECE}BLACK (2X WIN).", FormatNumber(amount));

                gsString[ 0 ] = EOS;
                format( gsString, sizeof gsString, "* %s a pariat $%s pe BLACK (2X WIN).", username( playerid ), FormatNumber( amount )) ;
                submitToRoulette( COLOR_GREY, gsString );
            }
        }

        playerVariables[ playerid ][ pMoney ] -= amount;
        RouletteBet[playerid] = amount;
        Iter_Add(roulette_bets, playerid);
        UpdateRouletteBalance(playerid);

        new sum;

        if( amount > GetGamblingForNextSkill( playerid ) && GetGamblingLevel( playerid ) < 5 )
            sum = amount - GetGamblingForNextSkill( playerid );

        else if( GetGamblingForNextSkill( playerid ) > amount && GetGamblingLevel( playerid ) < 5 )
            sum = GetGamblingForNextSkill( playerid ) - amount;

        if( GetGamblingLevel( playerid ) < 5 )
            SetGamblingStake( playerid, amount );

        UpdateRoulette();

        if( GetGamblingForNextSkill( playerid ) <= 0 && GetGamblingLevel( playerid ) < 5 )
        {
            SetGamblingLevel( playerid, GetGamblingLevel( playerid ) + 1 );
            SetGamblingForNextLevel( playerid );

            if( sum ) SetGamblingStake( playerid, sum );

            SendClientMessagef( playerid, COLOR_YELLOW, "* Felicitari, acum ai level %d la gambling skill si poti paria maxim: $%s.", GetGamblingLevel( playerid ), FormatNumber( GetGamblingMaxim( playerid ) ) ) ;

            gsQuery[ 0 ] = EOS;
            mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_accounts` SET `GamblingSkill` = '%d', `GamblingNextLevel` = '%d' WHERE `id` = '%d'", GetGamblingLevel( playerid ), GetGamblingForNextSkill( playerid ), GetPlayerMysqlID( playerid ) );
            mysql_tquery( g_Handle, gsQuery, "", "" );

            return 1;
        }

        gsQuery[ 0 ] = EOS;
        mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_accounts` SET `GamblingNextLevel` = '%d' WHERE `id` = '%d' ", GetGamblingForNextSkill( playerid ), GetPlayerMysqlID( playerid ) );
        mysql_tquery( g_Handle, gsQuery, "", "" ); 
    }
    return 1;
}

function OnRouletteUpdate( )
{
    for(new x; x < 6; x++)
    {
        rouletteVariables[roulette_pattern][x] = rouletteVariables[roulette_pattern][x+1];
    }

    if(rouletteVariables[roulette_green_show] == 20)
    {
        rouletteVariables[roulette_pattern][6] = ROULETTE_COLOR_GREEN;

        rouletteVariables[roulette_green_show] = 0;
    }

    else
    {
        switch(rouletteVariables[roulette_pattern][6])
        {
            case ROULETTE_COLOR_RED:
            {
                rouletteVariables[roulette_pattern][6] = ROULETTE_COLOR_BLACK;
            }

            case ROULETTE_COLOR_BLACK, ROULETTE_COLOR_GREEN:
            {
                rouletteVariables[roulette_pattern][6] = ROULETTE_COLOR_RED;
            }
        }

        rouletteVariables[roulette_green_show]++;
    }

    UpdateRouletteColors( );
    return 1;
}

function OnRouletteLanded( )
{
    switch(rouletteVariables[roulette_result])
    {
        case ROULETTE_COLOR_RED: submitToRoulette(COLOR_NEWBIE, "The roulette landed on RED.");
        case ROULETTE_COLOR_GREEN: submitToRoulette(COLOR_NEWBIE, "The roulette landed on GREEN.");
        case ROULETTE_COLOR_BLACK: submitToRoulette(COLOR_NEWBIE, "The roulette landed on BLACK.");
    }

    foreach(new playerid : roulette_bets)
    {
        if( rouletteVariables[ roulette_result ] == RouletteColor[ playerid ] )
        {
            new money = RouletteBet[ playerid ] * 2;
            if( rouletteVariables[ roulette_result ] == ROULETTE_COLOR_GREEN ) money *= 7;

            playerVariables[ playerid ][ pMoney ] += money;

            SendClientMessagef( playerid, COLOR_GREEN, "(+) Ai castigat $%s.", FormatNumber( money ) );
        }

        else
        {  
            SendClientMessagef( playerid, COLOR_GREEN, "(-) Ai pierdut $%s.", FormatNumber( RouletteBet[ playerid ] ) );
        }

        RouletteBet[ playerid ] = 0;
        RouletteColor[ playerid ] = 0;

        UpdateRouletteBalance( playerid );
    }

    ResetRoulette();
    UpdateRoulette();
    return 1;
}

stock submitToRoulette( color, text[ ] )
{
    foreach( new playerid : in_roulette )
    {
        SendClientMessage( playerid, color, text );
    }
}

stock SendAudioForPlayers( type )
{
    foreach( new playerid : in_roulette )
    {
        switch( type )
        {
            case ROULETTE_TYPE_ROLLING: PlayAudioStreamForPlayer( playerid, "https://play.bugged.ro/spinning.mp3" );
            case ROULETTE_TYPE_IDLE: PlayAudioStreamForPlayer( playerid, "https://play.bugged.ro/tone.mp3" );
        }
    }
}

stock ShowRoulette(playerid)
{
    for(new x; x < 19; x++) TextDrawShowForPlayer(playerid, RouletteTD[x]);

    UpdateRouletteBalance(playerid);
    PlayerTextDrawShow(playerid, RouletteMoney );

    SelectTextDraw(playerid, COLOR_WHITE);
    return 1;
}

stock HideRoulette( playerid )
{
    for( new x; x < 19; x++) TextDrawHideForPlayer( playerid, RouletteTD[ x ] );

    PlayerTextDrawHide( playerid, RouletteMoney);
    CancelSelectTextDraw( playerid );
    return 1;
}

stock UpdateRoulette( )
{
    new string[ 32 ];
    for( new x; x <= 2; x++ )
    {
        format(string, sizeof(string), "%d bets~n~$%s", rouletteVariables[ roulette_bets ][ x ], FormatNumber( rouletteVariables[ roulette_bets_amount ][ x ] ) );

        TextDrawSetString(RouletteTD[ 15 + x ], string);
    }

    if( GetRouletteBets( ) == 0 && rouletteVariables[ roulette_state ] != ROULETTE_STATE_IDLE)
    {
        ResetRoulette( );
    }

    if( GetRouletteBets( ) > 0 && rouletteVariables[ roulette_state ] == ROULETTE_STATE_IDLE )
    {
        rouletteVariables[roulette_state] = ROULETTE_STATE_STARTING;
        rouletteVariables[roulette_time] = 30;
    }

    if(rouletteVariables[ roulette_time ] == 0 && rouletteVariables[ roulette_state ] == ROULETTE_STATE_STARTING )
    {
        rouletteVariables[ roulette_state ] = ROULETTE_STATE_ROLLING;
        SendAudioForPlayers( ROULETTE_TYPE_ROLLING );
    }

    return UpdateRouletteStatus( );
}

stock GetRouletteBets()
{
    new bets;
    for(new x; x < 3; x++) bets += rouletteVariables[roulette_bets][x];
    return bets;
}

stock UpdateRouletteColors()
{
    for(new x; x < 7; x++)
    {
        TextDrawBoxColor(RouletteTD[x + 1], rouletteVariables[roulette_pattern][x]);
    }

    foreach(new playerid : in_roulette)
    {
        for(new x; x < 7; x++) TextDrawShowForPlayer(playerid, RouletteTD[x + 1]);
    }

    return 1;
}

stock ResetRoulette()
{
    Iter_Clear(roulette_bets);

    for(new x; x < 3; x++)
    {
        rouletteVariables[roulette_bets][x] = 0;
        rouletteVariables[roulette_bets_amount][x] = 0;
    }

    rouletteVariables[roulette_step] = 0;
    rouletteVariables[roulette_state] = ROULETTE_STATE_IDLE;
    rouletteVariables[roulette_time] = 0;

    PickRouletteColor();

    if(rouletteVariables[roulette_pattern][0] == 0)
    {
        new default_pattern[7] = {
            ROULETTE_COLOR_RED, ROULETTE_COLOR_BLACK, ROULETTE_COLOR_RED, ROULETTE_COLOR_GREEN, ROULETTE_COLOR_BLACK, ROULETTE_COLOR_RED, ROULETTE_COLOR_BLACK
        };

        for(new x; x < 7; x++)
        {
            rouletteVariables[roulette_pattern][x] = default_pattern[x];
        }
    }

    return 1;
}

stock PickRouletteColor()
{
    // update the colors only when roulette is spinning

    switch(random(100))
    {
        case 0..48:
        {
            rouletteVariables[roulette_result] = ROULETTE_COLOR_RED; // red
        }

        case 50..99:
        {
            rouletteVariables[roulette_result] = ROULETTE_COLOR_BLACK; // black
        }

        default: 
        {
            rouletteVariables[roulette_result] = ROULETTE_COLOR_GREEN;
        }
    }

    return 1;
}

stock UpdateRouletteStatus()
{
    new status[32];
    switch( rouletteVariables[ roulette_state ] )
    {
        case ROULETTE_STATE_IDLE:
        {
            status = "WAITING FOR BETS...";
        }

        case ROULETTE_STATE_STARTING:
        {
            format(status, 32, "SPINNING IN %02d SECONDS...", rouletteVariables[ roulette_time ] );
        }

        case ROULETTE_STATE_ROLLING:
        {
            status = "THE ROULETTE IS SPINNING...";
        }
    }

    TextDrawSetString(RouletteTD[ 18 ], status);
    return 1;
}

stock IsPlayerInRoulette(playerid)
{
    return Iter_Contains(in_roulette, playerid);
}

stock UpdateRouletteBalance(playerid)
{
    new string[64];
    format(string, sizeof(string), "$%s", FormatNumber( playerVariables[ playerid][ pMoney ] ) );
    PlayerTextDrawSetString(playerid, RouletteMoney, string);

    return 1;
}

function RouletteTimer( )
{
    if( rouletteVariables[ roulette_time ] )
    {
        rouletteVariables[ roulette_time ]--;
        UpdateRoulette( );
    }
}

function RouletteRoll( )
{
    if(rouletteVariables[roulette_state] == ROULETTE_STATE_ROLLING)
    {
        rouletteVariables[roulette_step]++;

        switch(rouletteVariables[roulette_step])
        {
            // fast spin
            case 0..70:
            {
                OnRouletteUpdate();
            }

            // slower
            case 71..110:
            {
                if(rouletteVariables[roulette_step] % 3 == 0)
                {
                    OnRouletteUpdate();
                }
            }

            // much slower...
            case 111..160:
            {
                if(rouletteVariables[roulette_step] % 7 == 0)
                {
                    OnRouletteUpdate();
                }
            }

            case 1346:
            {
                rouletteVariables[roulette_state] = ROULETTE_STATE_IDLE;
                OnRouletteLanded();
                SendAudioForPlayers( ROULETTE_TYPE_IDLE );
            }

            // final
            default:
            {
                if(rouletteVariables[roulette_step] % 10 == 0 && rouletteVariables[roulette_step] < 1337)
                {
                    OnRouletteUpdate();

                    if(rouletteVariables[roulette_pattern][3] == rouletteVariables[roulette_result])
                    {
                        rouletteVariables[roulette_step] = 1337;
                    }
                }
            }
        }
    }
}

/* DE ADAUGAT IN GM PENTRU GAMBLING SKILL

- variabila pGamblingSkill, iar in baza coloana " GamblingSkill ", variabila pGamblingNextLevel si coloana " GamblingNextLevel ( o puneti default pe 10000000 )"
- incarcati variaabilele pGamblingSkill si pGamblingNextLevel cand player-ul se logheaza pe server.
- working

stock GetGamblingMaxim( playerid )
{
    new maxim_gambling;
    switch( playerVariables[ playerid ][ pGamblingSkill ] )
    {
        case 1: maxim_gambling = 5000000;
        case 2: maxim_gambling = 15000000;
        case 3: maxim_gambling = 40000000;
        case 4: maxim_gambling = 60000000;
        case 5: maxim_gambling = 100000000;
    }
    return maxim_gambling;
}

stock GetMaximRouletteForPlayer( playerid )
{
    new maxim_gambling;
    switch( playerVariables[ playerid ][ pGamblingSkill ] )
    {
        case 1: maxim_gambling = 10000000;
        case 2: maxim_gambling = 25000000;
        case 3: maxim_gambling = 50000000;
        case 4: maxim_gambling = 75000000;
    }
    return maxim_gambling;
}

stock SetGamblingStake( playerid, money )
{
    playerVariables[ playerid ][ pGamblingNextLevel ] -= money;
}    

stock SetGamblingLevel( playerid, level )
{
    playerVariables[ playerid ][ pGamblingSkill ] = level;
}

stock SetGamblingForNextLevel( playerid )
{
    playerVariables[ playerid ][ pGamblingNextLevel ] = GetMaximRouletteForPlayer( playerid );
}

stock GetGamblingForNextSkill( playerid )
    return playerVariables[ playerid ][ pGamblingNextLevel ];

stock GetGamblingLevel( playerid )
    return playerVariables[ playerid ][ pGamblingSkill ];