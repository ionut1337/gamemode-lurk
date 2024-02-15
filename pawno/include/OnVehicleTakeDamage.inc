///////////////  ********************************
///////////////  ________________________________
///////////////  
///////////////  OnVehicleTakeDamage callback'as.
///////////////  By Nattive
///////////////  www.Pawno.lt
///////////////  ________________________________
///////////////  ********************************
///////////////  ================================
///////////////  ================================
///////////////  Norint, kad include pilnai veiktø
///////////////  Turite á callback'à OnGameModeInit
///////////////  Áraðyti 'dmg_check();'
///////////////  ================================




forward dmg_check();
forward OnVehicleTakeDamage(vehicleid, Float:taked_damage, Float:old_health, Float:new_health);
dmg_ontimer();
new Float:dmg_oldvehhp[MAX_VEHICLES];
public dmg_check()
{
	for(new i; i < MAX_VEHICLES; i++){
	    new Float:dmg_vehhp[MAX_VEHICLES];
	    GetVehicleHealth(i,dmg_vehhp[i]);
	    new Float:dmg_skirtumas[MAX_VEHICLES];
	    if(dmg_oldvehhp[i] > dmg_vehhp[i]){
	        dmg_skirtumas[i] = dmg_oldvehhp[i] - dmg_vehhp[i];
	        CallRemoteFunction("OnVehicleTakeDamage","dfff",i,dmg_skirtumas[i],dmg_oldvehhp[i],dmg_vehhp[i]);
	    }
	    dmg_oldvehhp[i] = dmg_vehhp[i];
	}
	return 1;
}
forward dmg_ontimer();
public dmg_ontimer(){return SetTimer("dmg_check",100,true);}
