#include <YSI\y_hooks>


CMD:santa( playerid, params[] )
{
	GiveChristmasHat( playerid, 2 );
	return true;
}
CMD:santaoff( playerid, params[] )
{
	if( IsPlayerAttachedObjectSlotUsed( playerid, 1 ) ) 
		RemovePlayerAttachedObject( playerid, 1 );
	return true;
}
// [ Include's FUNCTIONS ]
hook OnGameModeInit()
{
	// ( Brazii de la factiuni )
	CreateDynamicObject(19076,1545.3155500,-1669.2277800,12.4466200,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,2016.5273400,-1432.1312300,12.5322000,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,1756.0449200,-1888.7866200,12.3699300,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,1449.2868700,760.0678100,10.0076800,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,735.4068600,-1337.8192100,12.5155900,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,1091.2609900,-301.0811800,72.8815300,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,2499.4231000,-1686.3188500,12.4709500,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,686.3936200,-1263.0981400,12.5448000,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,1132.7443800,-2045.0043900,68.0185700,0.0000000,0.0000000,0.0000000);
	CreateDynamicObject(19076,2218.4785200,-1148.0723900,24.7465300,0.0000000,0.0000000,0.0000000);
}