SQL_Function LoadServerApartments()
{
	new Field[ 256 ], X, Rows, Fields;
	cache_get_data( Rows, Fields, g_Handle );

	for( new i = 0; i < Rows; i++ )
	{
		X = cache_get_field_content_int( i, "apartmentKEY", g_Handle );

		cache_get_field_content( i, "apartmentNAME", Field, g_Handle, 128 );
		SetGVarString( "apartment_NAME", Field, X );

		cache_get_field_content( i, "apartmentOWNER", Field, g_Handle, 128 );
		SetGVarString( "apartment_OWNER", Field, X );

		SetGVarInt( "apartment_OWNERKEY", 				cache_get_field_content_int( i, "apartmentOWNERKEY", g_Handle ), X );
		SetGVarInt( "apartment_PRICE", 					cache_get_field_content_int( i, "apartmentPRICE", g_Handle ), X );
		SetGVarInt( "apartment_RENT", 					cache_get_field_content_int( i, "apartmentRENT", g_Handle ), X );

		SetGVarInt( "apartment_LEVEL", 					cache_get_field_content_int( i, "apartmentLEVEL", g_Handle ), X );
		SetGVarInt( "apartment_LOCK", 					cache_get_field_content_int( i, "apartmentLOCK", g_Handle ), X );
		SetGVarInt( "apartment_RENTERS", 				cache_get_field_content_int( i, "apartmentRENTERS", g_Handle ), X );

		SetGVarFloat( "apartment_ENTERX", 				cache_get_field_content_float( i, "apartmentENTERX", g_Handle ), X );
		SetGVarFloat( "apartment_ENTERY", 				cache_get_field_content_float( i, "apartmentENTERY", g_Handle ), X );
		SetGVarFloat( "apartment_ENTERZ", 				cache_get_field_content_float( i, "apartmentENTERZ", g_Handle ), X );

		SetGVarFloat( "apartment_EXITX", 				cache_get_field_content_float( i, "apartmentEXITX", g_Handle ), X );
		SetGVarFloat( "apartment_EXITY", 				cache_get_field_content_float( i, "apartmentEXITY", g_Handle ), X );
		SetGVarFloat( "apartment_EXITZ", 				cache_get_field_content_float( i, "apartmentEXITZ", g_Handle ), X );


    	SetGVarFloat( "apartment_ANGLE", 				cache_get_field_content_float( i, "apartmentANGLE", g_Handle ), X );

		gsString[ 0 ] = EOS;
		format( gsString, sizeof gsString, ""COL_W"Apartment: "COL_R"%d\n"COL_W"Rent: "COL_R"$%s\n"COL_W"Doors: "COL_R"%s\n"COL_W"Renters: "COL_R"%d\n"COL_R"Type /rent apartment for rent.", X, FormatNumber(GetGVarInt( "apartment_RENT", X )), GetGVarInt("apartment_LOCK", X) == 1 ? "Locked" : "Unlocked", GetGVarInt("apartment_RENTERS", X));
		SetGVarInt( "apartment_PICKUP", CreateDynamicPickup( 1273, 23, GetGVarFloat( "apartment_ENTERX", X ), GetGVarFloat( "apartment_ENTERY", X ), GetGVarFloat( "apartment_ENTERZ", X ) ), X );
		SetGVarInt( "apartment_3DTEXT", _:CreateDynamic3DTextLabel( gsString, ~1, GetGVarFloat( "apartment_ENTERX", X ), GetGVarFloat( "apartment_ENTERY", X ), GetGVarFloat( "apartment_ENTERZ", X ), 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1 ), X );
	    pickupInfo[ GetGVarInt( "apartment_PICKUP", X ) ][apartments_pickups] = X;
	}
	printf( "Successfully Loaded [ %d ] Apartments", Rows );
	return true;	
}

CMD:buyhotel(playerid, params[])
{
	CheckPlayerAction( playerid );

	new bizID = GetBuildingEnterID( playerid, 0, 3 );
	if( bizID != HOTEL_DB_ID )								return SendClientMessage( playerid, COLOR_GREY, "You have to be in the hotel pickup!" );

	if( playerVariables[ playerid ][ pBusiness ] != 0 )		return SendClientMessage( playerid, COLOR_GREY, "Your already have a business, please sell it first!" );
	if( GetGVarInt( "bus_OwnerKey", bizID ) != 0 )			return SendClientMessage( playerid, COLOR_GREY, "This hotel it's not for sale!" );
	if( playerVariables[ playerid ][ pLevel ] < GetGVarInt( "bus_Level", bizID ) )
		return SendClientMessagef( playerid, COLOR_GREY, "You need level %d to be able to buy this hotel!", GetGVarInt( "bus_Level", bizID ) );

	if( GetGVarInt( "bus_Price", bizID ) > playerVariables[ playerid ][ pMoney ] )
		return SendClientMessage( playerid, COLOR_GREY, "You don't have the money to buy this hotel!" );

	SetGVarInt( "bus_Status", 0, bizID );
	SetGVarInt( "bus_OwnerKey", GetPlayerMysqlID( playerid ), bizID );
	SetGVarString( "bus_Owner", playerVariables[ playerid ][ pNormalName ], bizID );
	playerVariables[ playerid ][ pBusiness ] = bizID;
	playerVariables[ playerid ][ pMoney ] -= GetGVarInt( "bus_Price", bizID );
	UpdateBusinessText( bizID );

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_business` SET `busOwner` = '%s', `busOwnerKey` = %d WHERE `busKey` = %d", playerVariables[ playerid ][ pNormalName ], GetPlayerMysqlID( playerid ), bizID );
	mysql_tquery( g_Handle, gsQuery, "", "" );

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_accounts` SET `playerBusiness` = %d WHERE `id` = %d", bizID, GetPlayerMysqlID( playerid ) );
	mysql_tquery( g_Handle, gsQuery, "", "" );

	gsString[ 0 ] = EOS;
	format( gsString, sizeof gsString, "%s[user:%d] has bought [hotel:1] for $%s.", playerVariables[ playerid ][ pNormalName ], GetPlayerMysqlID( playerid ), FormatNumber( GetGVarInt( "bus_Price", bizID ) ) );
	InsertPlayerLog( GetPlayerMysqlID( playerid ), 0, gsString );
	submitToAdmins(gsString, COLOR_YELLOW);

	return true;
}

CMD:sellhotel( playerid, params[] )
{
	new bizzID = GetBuildingEnterID( playerid, 0, 3 );
	if( bizzID != HOTEL_DB_ID )								    return SendClientMessage( playerid, COLOR_GREY, "You have to be in the hotel pickup!" );
	if( playerVariables[ playerid ][ pBusiness ] == 0 )			return SendClientMessage( playerid, COLOR_GREY, "You don't own any Hotel!" );
	if( bizzID != playerVariables[ playerid ][ pBusiness ] )	return SendClientMessage( playerid, COLOR_GREY, "You are not the owner of this Hotel!" );

	SetGVarInt( "bus_OwnerKey", 0, bizzID );
	SetGVarString( "bus_Owner", "Nobody", bizzID );
	SetGVarInt( "bus_Status", 0, bizzID );

	UpdateBusinessText( bizzID );
	playerVariables[ playerid ][ pBusiness ] = 0;
	playerVariables[ playerid ][ pMoney ] += GetGVarInt("bus_Price", bizzID) / 2;
	InfoTD_MSG( playerid, 5000, "Ai vandut hotelul si ai primit $%s.", FormatNumber(GetGVarInt("bus_Price", bizzID) / 2));

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_business` SET `busOwner` = 'Nobody', `busOwnerKey` = 0 WHERE `busKey` = %d", bizzID );
	mysql_tquery( g_Handle, gsQuery, "", "" );

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_accounts` SET `playerBusiness` = 0 WHERE `id` = %d", GetPlayerMysqlID( playerid ) );
	mysql_tquery( g_Handle, gsQuery, "", "" );

	gsString[ 0 ] = EOS;
	format( gsString, sizeof gsString, "%s[user:%d] has sold his [hotel:1] for $%s.", playerVariables[ playerid ][ pNormalName ], GetPlayerMysqlID( playerid ), FormatNumber(GetGVarInt("bus_Price", bizzID) / 2));
	InsertPlayerLog( GetPlayerMysqlID( playerid ), 0, gsString );
	submitToAdmins(gsString, COLOR_YELLOW);
	return true;
}

CMD:edithotel(playerid, params[])
{
    if(GetGVarInt("bus_OwnerKey", HOTEL_DB_ID) != GetPlayerMysqlID( playerid ))
    	return SendClientMessage(playerid, COLOR_WHITE, "Nu esti proprietarul hotelului.");

    gsString[0] = EOS;
	for(new i = 0; i < MAX_APARTMENTS; i++)
	{
		format(gsString, sizeof gsString, "%sApartment id: %d\n", gsString, i+1);
	}
	ShowPlayerDialog(playerid, DIALOG_EDITAPP, DIALOG_STYLE_LIST, "Edit apartments", gsString, "Select", "Cancel");

	return 1;
}

SQL_Function load_rents(playerid)
{
	new Field[ 128 ], Rows, Fields;
	cache_get_data( Rows, Fields, g_Handle );

	if(!Rows)
		return SendClientMessage(playerid, -1, "This apartment don't have renters.");

    gsString[0] = EOS;
    gsString = "Nume\n";
	for( new i = 0; i < Rows; i++ )
	{
		cache_get_field_content( i, "username", Field, g_Handle, 128 );
		SetGVarString( "apartment_NAME_p", Field, i );

		SetGVarInt( "apartment_KEY_p", 	cache_get_field_content_int( i, "id", g_Handle ), i );
		SetGVarInt( "apartment_ID_p", 	cache_get_field_content_int( i, "playerApartment", g_Handle ), i );

		format(gsString, sizeof gsString, "%s%s\n", gsString, GetGVarStringEx("apartment_NAME_p", i));	
	}
	ShowPlayerDialog(playerid, DIALOG_EDITAPP3, DIALOG_STYLE_TABLIST_HEADERS, "Manage Renters", gsString, "Select", "Cancel");

	return true;
}

CMD:awithdraw( playerid, params[] )
{
	if(GetGVarInt("bus_OwnerKey", HOTEL_DB_ID) != GetPlayerMysqlID( playerid ))
		return SendClientMessage( playerid, COLOR_GREY, "You're not the owner of Hotel!" );

	new bMoney;
	if( sscanf( params, "d", bMoney ) ) 						return SendClientMessage( playerid, COLOR_WHITE, SYNTAX_MESSAGE"/awithdraw <money>" );
	if( bMoney <= 0 || GetGVarInt( "bus_Money", HOTEL_DB_ID ) < bMoney )	return SendClientMessage( playerid, COLOR_GREY, "You don't have this ammount of money in your Hotel safe!" );

	SetGVarInt( "bus_Money", GetGVarInt( "bus_Money", HOTEL_DB_ID ) - bMoney, HOTEL_DB_ID );
	SendClientMessagef( playerid, COLOR_WHITE, "You have withdrawn $%d from your hotel.", bMoney );
	playerVariables[ playerid ][ pMoney ] += bMoney;
	nearByMessage( playerid, COLOR_PURPLE, NBM_DIST, "* %s withdraws $%d from hotel", username( playerid ), bMoney );

	gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_business` SET `busMoney` = %d WHERE `busKey` = %d", GetGVarInt( "bus_Money", HOTEL_DB_ID ), HOTEL_DB_ID );
	mysql_tquery( g_Handle, gsQuery, "", "" );

	return true;
}

CMD:priceapp(playerid, params[])
{
	if(playerVariables[playerid][pAdminLevel] < 7)
		return SendClientMessage(playerid, -1, "Nu ai admin level 7.");

	new ammount;
	if(sscanf(params, "d", ammount))
		return SendClientMessage(playerid, -1, SYNTAX_MESSAGE"/priceapp [ammount]");

	SetGVarInt("bus_Price", ammount, HOTEL_DB_ID);

    SendClientMessagef(playerid, -1, "Ai setat pretul apartamentului la: $%s", FormatNumber(ammount));

    gsQuery[ 0 ] = EOS;
	mysql_format( g_Handle, gsQuery, sizeof gsQuery, "UPDATE `server_business` SET `busPrice` = '%d'  WHERE `busKey` = '%d'", ammount, HOTEL_DB_ID);
	mysql_tquery( g_Handle, gsQuery, "", "" );

    gsString[0] = EOS;
	switch(GetGVarInt("bus_OwnerKey", HOTEL_DB_ID))
	{
		case 0:
		{
			format( gsString, sizeof gsString, "{FFFFFF}Hotel "COL_B"BigZone\n{FFFFFF}Hotel price: "COL_B"$%s\n{FFFFFF}Hotel Level: "COL_B"%d\n{FFFFFF}Type "COL_B"/buyhotel {FFFFFF}for buy the hotel",
				FormatNumber(GetGVarInt("bus_Price", HOTEL_DB_ID)), GetGVarInt("bus_Level", HOTEL_DB_ID));
		}
		default:
		{
			format( gsString, sizeof gsString, "{FFFFFF}Hotel "COL_B"BigZone\n{FFFFFF}Hotel Level: "COL_B"%d\n{FFFFFF}Hotel Owner "COL_B"%s",
				GetGVarInt("bus_Level", HOTEL_DB_ID), GetGVarStringEx("bus_Owner", HOTEL_DB_ID));
		}
	}
	UpdateDynamic3DTextLabelText( Text3D:GetGVarInt( "Business3DText", HOTEL_DB_ID ), 0xFFFF66FF, gsString );

	return true;
}