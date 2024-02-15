#define SERVER_VERSION 			"LURK-RPG"
#define SERVER_NAME     		"LURK RPG"
#define SERVER_PANEL			"https://panel.lurk.ro"
#define BID_CHECK_DAYS			"14"

#if defined VERSION_HOST
	#define 	SERVER_LOGO         	"RPG.LURK.RO"
	#define 	MAX_PLAYERS  			( 100 )
	#define     MAX_FIREWORKS			( 100 )
#else
	#define SERVER_LOGO         		"BETA.LURK.RO"
	#define 	MAX_PLAYERS  			( 50 )
	#define     MAX_FIREWORKS			( 15 )
#endif

#define FLOAT_INFINITY   		( Float:0x7F800000 )

#define SERVER_HOST 			"localhost"
#define SERVER_USER 			"root"
#define SERVER_PASS 			""
#define SERVER_DB 				"matamare"

#define SMTP_HOST				"mail.lurk.ro"
#define SMTP_ADMIN				"lurkr"
#define SMTP_USER				"plati@lurk.ro"
#define SMTP_MAIL				"plati@lurk.ro"	
#define SMTP_PASS				"6Q*a~7TM3_8E"
#define SMTP_NAME				"Lurk Romania - Server"

//#define 	MAILER_URL 	 			"panel.rofixed.com/includes/mailer.php"