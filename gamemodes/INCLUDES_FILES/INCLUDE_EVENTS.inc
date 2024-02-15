// [ Include's FUNCTIONS ]
SQL_Function LoadServerEvents( eventsHour )
{
    new Field[ 128 ], X;

    new Rows, Fields;
    cache_get_data( Rows, Fields, g_Handle );

	for( new i = 0; i < Rows; i++ )
	{
	    X = cache_get_field_content_int( i, "eventKey", 128 );

        Iter_Add(ServerEvents, X);
	    cache_get_field_content( i, "eventPrize", Field, 128 );
		SetGVarString( "event_Prize", Field, X );

        SetGVarInt( "event_Type", 					cache_get_field_content_int( i, "eventType", g_Handle ), X );
        SetGVarInt( "event_Item", 					cache_get_field_content_int( i, "eventItem", g_Handle ), X );
        SetGVarInt( "event_Value", 					cache_get_field_content_int( i, "eventValue", g_Handle ), X );

        // ( Switch the code to find the right one )
        switch( GetGVarInt( "event_Type", X ) ) // All, Single
        {
        	case 0: // Random
        	{
        		new randomID = Iter_Random(Player);
				switch( GetGVarInt( "event_Item", X ) )
		        {
		        	case 2: // License
		        	{
						playerVariables[ randomID ][ pCarLicense ] = 100;
						playerVariables[ randomID ][ pGunLicense ] = 100;
						playerVariables[ randomID ][ pFlyLicense ] = 100;
						playerVariables[ randomID ][ pBoatLicense ] = 100;

		        		SendClientMessagef( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat 100 de ore pentru toate licentele tale!",
		        			username( randomID ) );

		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Jucatorul %s a castigat 100 de ore pentru toate licentele!",
		        			username( randomID ) );
		        	}
		        	case 3: // Vehicle
		        	{
		        		if( playerVariables[ randomID ][ pVSlots ] < MAX_SLOTS )
		        			playerVariables[ randomID ][ pVSlots ]++;

		        		GivePlayerPersonalVehicle( randomID, GetGVarInt( "event_Value", X ) );
		        		SendClientMessagef( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat vehiculul %s +1 slot din cadoul de la ora %d:00!",
		        			username( randomID ), VehicleName( GetGVarInt( "event_Value", X ) ), eventsHour );

		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Jucatorul %s a castigat vehiculul %s +1 slot din cadoul de la ora %d:00!",
		        			username( randomID ), VehicleName( GetGVarInt( "event_Value", X ) ), eventsHour );
		        	}
		        	case 4: // Vehicle Slot
		        	{
		        		if( playerVariables[ randomID ][ pVSlots ] < MAX_SLOTS )
		        			playerVariables[ randomID ][ pVSlots ]++;

		        		SendClientMessagef( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat un vehicle slot din cadoul de la ora %d:00!",
		        			username( randomID ), eventsHour );

		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Jucatorul %s a castigat un vehicle slot din cadoul de la ora %d:00!",
		        			username( randomID ), eventsHour );
		        	}
		        	case 5: // Premium Points
		        	{
		        		playerVariables[ randomID ][ pPremiumPoints ] += GetGVarInt( "event_Value", X );
		        		SendClientMessagef( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat %d Premium Points din cadoul de la ora %d:00!",
		        			username( randomID ), eventsHour );

	        			SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Jucatorul %s a castigat %d Premium Points din cadoul de la ora %d:00!",
	        				username( randomID ), eventsHour );
		        	}
		        	case 7: // Hidden Color
		        	{
		        		playerVariables[ randomID ][ pHiddenColors ] += GetGVarInt( "event_Value", X );
		        		SendClientMessagef( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat %d culori Hidden din cadoul de la ora %d:00!",
		        			username( randomID ), GetGVarInt( "event_Value", X ), eventsHour );

		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Jucatorul %s a castigat %d culori Hidden din cadoul de la ora %d:00!",
		        			username( randomID ), GetGVarInt( "event_Value", X ), eventsHour );
		        	}
		        	case 8: // Cont Premium
		        	{
		        		if( playerVariables[ randomID ][ pPremium ] )
		        		{
		        			playerVariables[ randomID ][ pPremiumPoints ] += 60;
			        		SendClientMessagef( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat un cont Premium pe viata din cadoul de la ora %d:00!",
			        			username( randomID ), eventsHour );

			        		SendClientMessage( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Pentru ca ai deja cont Premium ai primit 60 de Premium Points!" );
			        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Jucatorul %s a castigat un cont Premium pe viata din cadoul de la ora %d:00!",
			        			username( randomID ), eventsHour );
		        		}
		        		else
		        		{
		        			playerVariables[ randomID ][ pPremium ] = 1;
			        		SendClientMessagef( randomID, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat un cont Premium pe viata din cadoul de la ora %d:00!",
			        			username( randomID ), eventsHour );

			        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Jucatorul %s a castigat un cont Premium pe viata din cadoul de la ora %d:00!",
			        			username( randomID ), eventsHour );
		        		}
		        	}
		        }
        	}
        	case 1: // All
        	{
        		switch( GetGVarInt( "event_Item", X ) )
		        {
		        	case 0: // Bani
		        	{
		        		foreach(new ib : Player)
		        		{
		        			playerVariables[ ib ][ pMoney ] += GetGVarInt( "event_Value", X );
			        		SendClientMessagef( ib, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat $%s din cadoul de la ora %d:00!",
			        			username( ib ), FormatNumber( GetGVarInt( "event_Value", X ) ), eventsHour );
		        		}
		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Toti jucatorii au primit $%s din cadoul de la ora %d:00!",
		        			FormatNumber( GetGVarInt( "event_Value", X ) ), eventsHour );
		        	}
		        	case 1: // RP
		        	{
		        		foreach(new irp : Player)
		        		{
		        			playerVariables[ irp ][ pRP ] += GetGVarInt( "event_Value", X );
			        		SendClientMessagef( irp, COLOR_LIGHTGREEN, ">Calendar Event< "COL_W"Felicitari %s, ai castigat %d Respect Points din cadoul de la ora %d:00!",
			        			username( irp ), GetGVarInt( "event_Value", X ), eventsHour );
		        		}
		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Toti jucatorii au primit %d Respect Points din cadoul de la ora %d:00!",
		        			GetGVarInt( "event_Value", X ), eventsHour );
		        	}
		        	case 6: // RobPoints
		        	{
		        		foreach(new irb : Player)
		        		{
		        			playerVariables[ irb ][ pRobPoints ] += GetGVarInt( "event_Value", X );
			        		SendClientMessagef( irb, COLOR_YELLOW, ">Calendar Event< "COL_W"Felicitari %s, ai castigat %d Rob Points din cadoul de la ora %d:00!",
			        			username( irb ), GetGVarInt( "event_Value", X ), eventsHour );
		        		}
		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Toti jucatorii au primit %d Rob Points din cadoul de la ora %d:00!",
		        			GetGVarInt( "event_Value", X ), eventsHour );
		        	}
		        	case 9: // Job Boost
		        	{
		        		foreach(new irb : Player)
		        		{
		        			playerVariables[ irb ][ pJobHype ] += GetGVarInt( "event_Value", X );
			        		SendClientMessagef( irb, COLOR_YELLOW, ">Calendar Event< "COL_W"Felicitari %s, ai castigat %d ore de Job Boost din cadoul de la ora %d:00!",
			        			username( irb ), GetGVarInt( "event_Value", X ), eventsHour );
		        		}
		        		SendClientMessageToAllf( COLOR_YELLOW, ">Calendar Event< "COL_W"Toti jucatorii au primit %d ore de Job Boost din cadoul de la ora %d:00!",
		        			GetGVarInt( "event_Value", X ), eventsHour );
		        	}
		        }
        	}
        }
	}
	printf( "Successfully Loaded the Prizes [Hour: %d:00]!", eventsHour );
	return true;
}
CMD:loadevent( playerid, params[] )
{
	AHCheck( playerid, 8, 5 );

	if( sscanf( params, "dd", params[ 0 ], params[ 1 ] ) )
		return SendClientMessage( playerid, COLOR_GREY, SYNTAX_MESSAGE"/loadevent [ date ] [ hour ]" );

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "SELECT * FROM `server_events` WHERE `eventDate` = %d AND `eventHour` = %d", params[ 0 ], params[ 1 ] );
    mysql_tquery( g_Handle, gsQuery, "LoadServerEvents", "d", params[ 1 ] );
    return InfoTD_MSG( playerid, 5000, "Ai ales urmatoarele date: %d / %d", params[ 0 ], params[ 1 ] );
}
CMD:insertevent(playerid, params[])
{
	AHCheck( playerid, 6, 5 );
	SetPVarInt(playerid, "InsertSwitcher", 0);
	String_InsertEvent(playerid);
	return true;
}