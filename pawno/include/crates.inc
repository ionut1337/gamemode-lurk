#if defined _textdrawloadingseise
#endinput
#endif
#define _textdrawloadingseise

new Text:SkinsTD[5];
new PlayerText:SkinsPlayer[MAX_PLAYERS][10];

new Text:CrateTD[6];
new PlayerText:CratePlayer[MAX_PLAYERS][2];

new Text:CrateTextdrawOwned[10];
CratesObjectLoad()
{
	CrateTD[5] = TextDrawCreate(234.333313, 183.362961, "box");
	TextDrawLetterSize(CrateTD[5], 0.000000, 13.533330);
	TextDrawTextSize(CrateTD[5], 371.000000, 0.000000);
	TextDrawAlignment(CrateTD[5], 1);
	TextDrawColor(CrateTD[5], 0xFFFFFFFF);
	TextDrawUseBox(CrateTD[5], 1);
	TextDrawBoxColor(CrateTD[5], 0x0000005D);
	TextDrawSetShadow(CrateTD[5], 0);
	TextDrawSetOutline(CrateTD[5], 0);
	TextDrawBackgroundColor(CrateTD[5], 0x000000FF);
	TextDrawFont(CrateTD[5], 1);
	TextDrawSetProportional(CrateTD[5], 1);
	TextDrawSetSelectable(CrateTD[5], 0);

	CrateTD[4] = TextDrawCreate(234.333328, 164.266617, "box");
	TextDrawLetterSize(CrateTD[4], 0.000000, 1.666666);
	TextDrawTextSize(CrateTD[4], 371.000000, 0.000000);
	TextDrawAlignment(CrateTD[4], 1);
	TextDrawColor(CrateTD[4], 0xFFFFFFFF);
	TextDrawUseBox(CrateTD[4], 1);
	TextDrawBoxColor(CrateTD[4], 0x000000FE);
	TextDrawSetShadow(CrateTD[4], 0);
	TextDrawSetOutline(CrateTD[4], 0);
	TextDrawBackgroundColor(CrateTD[4], 0x000000FF);
	TextDrawFont(CrateTD[4], 1);
	TextDrawSetProportional(CrateTD[4], 1);
	TextDrawSetSelectable(CrateTD[4], 0);

	CrateTD[3] = TextDrawCreate(303.000000, 163.466629, "Crate System");
	TextDrawLetterSize(CrateTD[3], 0.400000, 1.600000);
	TextDrawTextSize(CrateTD[3], 1280.000000, 1280.000000);
	TextDrawAlignment(CrateTD[3], 2);
	TextDrawColor(CrateTD[3], 0xFFFFFFFF);
	TextDrawUseBox(CrateTD[3], 0);
	TextDrawBoxColor(CrateTD[3], 0x80808080);
	TextDrawSetShadow(CrateTD[3], 0);
	TextDrawSetOutline(CrateTD[3], 1);
	TextDrawBackgroundColor(CrateTD[3], 0x000000FF);
	TextDrawFont(CrateTD[3], 3);
	TextDrawSetProportional(CrateTD[3], 1);
	TextDrawSetSelectable(CrateTD[3], 0);

	CrateTD[2] = TextDrawCreate(302.400146, 309.348358, "Open Crate");
	TextDrawLetterSize(CrateTD[2], 0.280000, 1.475556);
	TextDrawTextSize(CrateTD[2], 10.000000, 136.730698);
	TextDrawAlignment(CrateTD[2], 2);
	TextDrawColor(CrateTD[2], 0xFFFFFFFF);
	TextDrawUseBox(CrateTD[2], 1);
	TextDrawBoxColor(CrateTD[2], 0x00FF001C);
	TextDrawSetShadow(CrateTD[2], 0);
	TextDrawSetOutline(CrateTD[2], 1);
	TextDrawBackgroundColor(CrateTD[2], 0x0000007A);
	TextDrawFont(CrateTD[2], 2);
	TextDrawSetProportional(CrateTD[2], 1);
	TextDrawSetSelectable(CrateTD[2], 1);

	CrateTD[1] = TextDrawCreate(302.466766, 343.450439, "Cancel");
	TextDrawLetterSize(CrateTD[1], 0.280000, 1.475556);
	TextDrawTextSize(CrateTD[1], 10.000000, 136.730698);
	TextDrawAlignment(CrateTD[1], 2);
	TextDrawColor(CrateTD[1], 0xFFFFFFFF);
	TextDrawUseBox(CrateTD[1], 1);
	TextDrawBoxColor(CrateTD[1], 0xFF000024);
	TextDrawSetShadow(CrateTD[1], 0);
	TextDrawSetOutline(CrateTD[1], 1);
	TextDrawBackgroundColor(CrateTD[1], 0x0000007A);
	TextDrawFont(CrateTD[1], 2);
	TextDrawSetProportional(CrateTD[1], 1);
	TextDrawSetSelectable(CrateTD[1], 1);

	CrateTD[0] = TextDrawCreate(302.466766, 326.449402, "Try for free");
	TextDrawLetterSize(CrateTD[0], 0.280000, 1.475556);
	TextDrawTextSize(CrateTD[0], 10.000000, 136.730698);
	TextDrawAlignment(CrateTD[0], 2);
	TextDrawColor(CrateTD[0], 0xFFFFFFFF);
	TextDrawUseBox(CrateTD[0], 1);
	TextDrawBoxColor(CrateTD[0], 0xADD8E619);
	TextDrawSetShadow(CrateTD[0], 0);
	TextDrawSetOutline(CrateTD[0], 1);
	TextDrawBackgroundColor(CrateTD[0], 0x0000007A);
	TextDrawFont(CrateTD[0], 2);
	TextDrawSetProportional(CrateTD[0], 1);
	TextDrawSetSelectable(CrateTD[0], 1);

	////////////////////////////////////////////////////////////////////

	CrateTextdrawOwned[0] = TextDrawCreate(160.470611, 227.500000, "Owned: 10");
	TextDrawLetterSize(CrateTextdrawOwned[0], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[0], 1);
	TextDrawColor(CrateTextdrawOwned[0], -1);
	TextDrawSetShadow(CrateTextdrawOwned[0], 0);
	TextDrawSetOutline(CrateTextdrawOwned[0], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[0], 51);
	TextDrawFont(CrateTextdrawOwned[0], 1);
	TextDrawSetProportional(CrateTextdrawOwned[0], 1);

	CrateTextdrawOwned[1] = TextDrawCreate(245.176483, 228.083328, "Owned: 11");
	TextDrawLetterSize(CrateTextdrawOwned[1], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[1], 1);
	TextDrawColor(CrateTextdrawOwned[1], -1);
	TextDrawSetShadow(CrateTextdrawOwned[1], 0);
	TextDrawSetOutline(CrateTextdrawOwned[1], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[1], 51);
	TextDrawFont(CrateTextdrawOwned[1], 1);
	TextDrawSetProportional(CrateTextdrawOwned[1], 1);

	CrateTextdrawOwned[2] = TextDrawCreate(329.411682, 228.083343, "Owned: 12");
	TextDrawLetterSize(CrateTextdrawOwned[2], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[2], 1);
	TextDrawColor(CrateTextdrawOwned[2], -1);
	TextDrawSetShadow(CrateTextdrawOwned[2], 0);
	TextDrawSetOutline(CrateTextdrawOwned[2], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[2], 51);
	TextDrawFont(CrateTextdrawOwned[2], 1);
	TextDrawSetProportional(CrateTextdrawOwned[2], 1);

	CrateTextdrawOwned[3] = TextDrawCreate(413.647003, 228.083328, "Owned: 13");
	TextDrawLetterSize(CrateTextdrawOwned[3], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[3], 1);
	TextDrawColor(CrateTextdrawOwned[3], -1);
	TextDrawSetShadow(CrateTextdrawOwned[3], 0);
	TextDrawSetOutline(CrateTextdrawOwned[3], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[3], 51);
	TextDrawFont(CrateTextdrawOwned[3], 1);
	TextDrawSetProportional(CrateTextdrawOwned[3], 1);

	CrateTextdrawOwned[4] = TextDrawCreate(498.823364, 228.083328, "Owned: 14");
	TextDrawLetterSize(CrateTextdrawOwned[4], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[4], 1);
	TextDrawColor(CrateTextdrawOwned[4], -1);
	TextDrawSetShadow(CrateTextdrawOwned[4], 0);
	TextDrawSetOutline(CrateTextdrawOwned[4], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[4], 51);
	TextDrawFont(CrateTextdrawOwned[4], 1);
	TextDrawSetProportional(CrateTextdrawOwned[4], 1);

	CrateTextdrawOwned[5] = TextDrawCreate(160.941207, 304.499969, "Owned: 15");
	TextDrawLetterSize(CrateTextdrawOwned[5], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[5], 1);
	TextDrawColor(CrateTextdrawOwned[5], -1);
	TextDrawSetShadow(CrateTextdrawOwned[5], 0);
	TextDrawSetOutline(CrateTextdrawOwned[5], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[5], 51);
	TextDrawFont(CrateTextdrawOwned[5], 1);
	TextDrawSetProportional(CrateTextdrawOwned[5], 1);

	CrateTextdrawOwned[6] = TextDrawCreate(243.764724, 305.083221, "Owned: 16");
	TextDrawLetterSize(CrateTextdrawOwned[6], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[6], 1);
	TextDrawColor(CrateTextdrawOwned[6], -1);
	TextDrawSetShadow(CrateTextdrawOwned[6], 0);
	TextDrawSetOutline(CrateTextdrawOwned[6], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[6], 51);
	TextDrawFont(CrateTextdrawOwned[6], 1);
	TextDrawSetProportional(CrateTextdrawOwned[6], 1);

	CrateTextdrawOwned[7] = TextDrawCreate(329.411651, 305.083374, "Owned: 17");
	TextDrawLetterSize(CrateTextdrawOwned[7], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[7], 1);
	TextDrawColor(CrateTextdrawOwned[7], -1);
	TextDrawSetShadow(CrateTextdrawOwned[7], 0);
	TextDrawSetOutline(CrateTextdrawOwned[7], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[7], 51);
	TextDrawFont(CrateTextdrawOwned[7], 1);
	TextDrawSetProportional(CrateTextdrawOwned[7], 1);

	CrateTextdrawOwned[8] = TextDrawCreate(414.117675, 305.083312, "Owned: 18");
	TextDrawLetterSize(CrateTextdrawOwned[8], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[8], 1);
	TextDrawColor(CrateTextdrawOwned[8], -1);
	TextDrawSetShadow(CrateTextdrawOwned[8], 0);
	TextDrawSetOutline(CrateTextdrawOwned[8], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[8], 51);
	TextDrawFont(CrateTextdrawOwned[8], 1);
	TextDrawSetProportional(CrateTextdrawOwned[8], 1);

	CrateTextdrawOwned[9] = TextDrawCreate(497.882202, 305.083312, "Owned: 19");
	TextDrawLetterSize(CrateTextdrawOwned[9], 0.137529, 0.561667);
	TextDrawAlignment(CrateTextdrawOwned[9], 1);
	TextDrawColor(CrateTextdrawOwned[9], -1);
	TextDrawSetShadow(CrateTextdrawOwned[9], 0);
	TextDrawSetOutline(CrateTextdrawOwned[9], 1);
	TextDrawBackgroundColor(CrateTextdrawOwned[9], 51);
	TextDrawFont(CrateTextdrawOwned[9], 1);
	TextDrawSetProportional(CrateTextdrawOwned[9], 1);


	////////////////////////////////////////////////////////////////////


	SkinsTD[0] = TextDrawCreate(105.900276, 158.474091, "box");
	TextDrawLetterSize(SkinsTD[0], 0.000000, 22.299999);
	TextDrawTextSize(SkinsTD[0], 526.903931, 0.000000);
	TextDrawAlignment(SkinsTD[0], 1);
	TextDrawColor(SkinsTD[0], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[0], 1);
	TextDrawBoxColor(SkinsTD[0], 0x00000072);
	TextDrawSetShadow(SkinsTD[0], 0);
	TextDrawSetOutline(SkinsTD[0], 0);
	TextDrawBackgroundColor(SkinsTD[0], 0x000000FF);
	TextDrawFont(SkinsTD[0], 1);
	TextDrawSetProportional(SkinsTD[0], 1);
	TextDrawSetSelectable(SkinsTD[0], 0);

	SkinsTD[3] = TextDrawCreate(316.333282, 136.962814, "My Skins");
	TextDrawLetterSize(SkinsTD[3], 0.344999, 1.633185);
	TextDrawTextSize(SkinsTD[3], 0.000000, 421.000000);
	TextDrawAlignment(SkinsTD[3], 2);
	TextDrawColor(SkinsTD[3], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[3], 1);
	TextDrawBoxColor(SkinsTD[3], 0x000000FF);
	TextDrawSetShadow(SkinsTD[3], 0);
	TextDrawSetOutline(SkinsTD[3], 0);
	TextDrawBackgroundColor(SkinsTD[3], 0x000000FF);
	TextDrawFont(SkinsTD[3], 2);
	TextDrawSetProportional(SkinsTD[3], 1);
	TextDrawSetSelectable(SkinsTD[3], 0);

	SkinsTD[2] = TextDrawCreate(105.733322, 156.400024, "box");
	TextDrawLetterSize(SkinsTD[2], 0.000000, -0.518000);
	TextDrawTextSize(SkinsTD[2], 527.000000, 0.000000);
	TextDrawAlignment(SkinsTD[2], 1);
	TextDrawColor(SkinsTD[2], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[2], 1);
	TextDrawBoxColor(SkinsTD[2], 0xFFE15CFF);
	TextDrawSetShadow(SkinsTD[2], 0);
	TextDrawSetOutline(SkinsTD[2], 0);
	TextDrawBackgroundColor(SkinsTD[2], 0x000000FF);
	TextDrawFont(SkinsTD[2], 1);
	TextDrawSetProportional(SkinsTD[2], 1);
	TextDrawSetSelectable(SkinsTD[2], 0);

	SkinsTD[1] = TextDrawCreate(105.866631, 363.607635, "box");
	TextDrawLetterSize(SkinsTD[1], 0.000000, -0.566666);
	TextDrawTextSize(SkinsTD[1], 527.000000, 0.000000);
	TextDrawAlignment(SkinsTD[1], 1);
	TextDrawColor(SkinsTD[1], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[1], 1);
	TextDrawBoxColor(SkinsTD[1], 0xFFE15CFF);
	TextDrawSetShadow(SkinsTD[1], 0);
	TextDrawSetOutline(SkinsTD[1], 0);
	TextDrawBackgroundColor(SkinsTD[1], 0x000000FF);
	TextDrawFont(SkinsTD[1], 1);
	TextDrawSetProportional(SkinsTD[1], 1);
	TextDrawSetSelectable(SkinsTD[1], 0);

	SkinsTD[0] = TextDrawCreate(511.700012, 137.148224, "LD_BEAT:cross");
	TextDrawLetterSize(SkinsTD[0], 0.000000, 0.000000);
	TextDrawTextSize(SkinsTD[0], 15.000000, 15.000000);
	TextDrawAlignment(SkinsTD[0], 1);
	TextDrawColor(SkinsTD[0], 0xFFE15CFF);
	TextDrawUseBox(SkinsTD[0], 0);
	TextDrawBoxColor(SkinsTD[0], 0x80808080);
	TextDrawSetShadow(SkinsTD[0], 0);
	TextDrawSetOutline(SkinsTD[0], 0);
	TextDrawBackgroundColor(SkinsTD[0], 0x000000FF);
	TextDrawFont(SkinsTD[0], 4);
	TextDrawSetProportional(SkinsTD[0], 0);
	TextDrawSetSelectable(SkinsTD[0], 1);

	/*SkinsTD[3] = TextDrawCreate(257.999939, 337.188934, "select skin");
	TextDrawLetterSize(SkinsTD[3], 0.292999, 1.500444);
	TextDrawTextSize(SkinsTD[3], 15.000000, 87.000000);
	TextDrawAlignment(SkinsTD[3], 2);
	TextDrawColor(SkinsTD[3], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[3], 1);
	TextDrawBoxColor(SkinsTD[3], 0x000000FF);
	TextDrawSetShadow(SkinsTD[3], 0);
	TextDrawSetOutline(SkinsTD[3], 0);
	TextDrawBackgroundColor(SkinsTD[3], 0x000000FF);
	TextDrawFont(SkinsTD[3], 2);
	TextDrawSetProportional(SkinsTD[3], 1);
	TextDrawSetSelectable(SkinsTD[3], 1);

	SkinsTD[2] = TextDrawCreate(374.807068, 337.188934, "Sell skin");
	TextDrawLetterSize(SkinsTD[2], 0.292999, 1.500444);
	TextDrawTextSize(SkinsTD[2], 15.000000, 87.000000);
	TextDrawAlignment(SkinsTD[2], 2);
	TextDrawColor(SkinsTD[2], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[2], 1);
	TextDrawBoxColor(SkinsTD[2], 0x000000FF);
	TextDrawSetShadow(SkinsTD[2], 0);
	TextDrawSetOutline(SkinsTD[2], 0);
	TextDrawBackgroundColor(SkinsTD[2], 0x000000FF);
	TextDrawFont(SkinsTD[2], 2);
	TextDrawSetProportional(SkinsTD[2], 1);
	TextDrawSetSelectable(SkinsTD[2], 1);

	SkinsTD[1] = TextDrawCreate(214.533249, 354.481689, "box");
	TextDrawLetterSize(SkinsTD[1], 0.000000, -0.466666);
	TextDrawTextSize(SkinsTD[1], 301.459473, 0.000000);
	TextDrawAlignment(SkinsTD[1], 1);
	TextDrawColor(SkinsTD[1], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[1], 1);
	TextDrawBoxColor(SkinsTD[1], 0xFFE15CFF);
	TextDrawSetShadow(SkinsTD[1], 0);
	TextDrawSetOutline(SkinsTD[1], 0);
	TextDrawBackgroundColor(SkinsTD[1], 0x000000FF);
	TextDrawFont(SkinsTD[1], 1);
	TextDrawSetProportional(SkinsTD[1], 1);
	TextDrawSetSelectable(SkinsTD[1], 0);

	SkinsTD[0] = TextDrawCreate(331.533295, 354.511322, "box");
	TextDrawLetterSize(SkinsTD[0], 0.000000, -0.465666);
	TextDrawTextSize(SkinsTD[0], 418.131104, 0.000000);
	TextDrawAlignment(SkinsTD[0], 1);
	TextDrawColor(SkinsTD[0], 0xFFFFFFFF);
	TextDrawUseBox(SkinsTD[0], 1);
	TextDrawBoxColor(SkinsTD[0], 0xFFE15CFF);
	TextDrawSetShadow(SkinsTD[0], 0);
	TextDrawSetOutline(SkinsTD[0], 0);
	TextDrawBackgroundColor(SkinsTD[0], 0x000000FF);
	TextDrawFont(SkinsTD[0], 1);
	TextDrawSetProportional(SkinsTD[0], 1);
	TextDrawSetSelectable(SkinsTD[0], 0);*/
}
CratesObjectLoad2(playerid)
{
	CratePlayer[playerid][1] = CreatePlayerTextDraw(playerid, 254.666626, 186.111084, "");
	PlayerTextDrawLetterSize(playerid, CratePlayer[playerid][1], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, CratePlayer[playerid][1], 90.000000, 90.000000);
	PlayerTextDrawAlignment(playerid, CratePlayer[playerid][1], 1);
	PlayerTextDrawColor(playerid, CratePlayer[playerid][1], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, CratePlayer[playerid][1], 0);
	PlayerTextDrawBoxColor(playerid, CratePlayer[playerid][1], 0x80808080);
	PlayerTextDrawSetShadow(playerid, CratePlayer[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, CratePlayer[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, CratePlayer[playerid][1], 0xFFFFFF00);
	PlayerTextDrawFont(playerid, CratePlayer[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, CratePlayer[playerid][1], 0);
	PlayerTextDrawSetSelectable(playerid, CratePlayer[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, CratePlayer[playerid][1], 18631);
	PlayerTextDrawSetPreviewRot(playerid, CratePlayer[playerid][1], 0.000000, 0.000000, 21.000000, 1.000000);

	CratePlayer[playerid][0] = CreatePlayerTextDraw(playerid, 301.466675, 285.289215, "Select action~n~You have 0 crates.");
	PlayerTextDrawLetterSize(playerid, CratePlayer[playerid][0], 0.191331, 0.994368);
	PlayerTextDrawTextSize(playerid, CratePlayer[playerid][0], 1280.000000, 1280.000000);
	PlayerTextDrawAlignment(playerid, CratePlayer[playerid][0], 2);
	PlayerTextDrawColor(playerid, CratePlayer[playerid][0], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, CratePlayer[playerid][0], 0);
	PlayerTextDrawBoxColor(playerid, CratePlayer[playerid][0], 0x80808080);
	PlayerTextDrawSetShadow(playerid, CratePlayer[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, CratePlayer[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, CratePlayer[playerid][0], 0x00000091);
	PlayerTextDrawFont(playerid, CratePlayer[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, CratePlayer[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, CratePlayer[playerid][0], 0);


	//////////////////////////////////////////


	SkinsPlayer[playerid][0] = CreatePlayerTextDraw(playerid, 107.567009, 161.496185, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][0], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][0], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][0], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][0], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][0], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][0], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][0], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][0], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][0], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][0], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][0], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][1] = CreatePlayerTextDraw(playerid, 190.866989, 161.396210, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][1], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][1], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][1], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][1], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][1], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][1], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][1], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][1], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][1], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][1], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][1], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][2] = CreatePlayerTextDraw(playerid, 275.434265, 161.710999, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][2], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][2], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][2], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][2], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][2], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][2], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][2], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][2], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][2], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][2], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][2], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][3] = CreatePlayerTextDraw(playerid, 359.799805, 161.396225, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][3], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][3], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][3], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][3], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][3], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][3], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][3], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][3], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][3], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][3], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][3], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][4] = CreatePlayerTextDraw(playerid, 444.798798, 161.266647, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][4], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][4], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][4], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][4], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][4], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][4], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][4], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][4], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][4], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][4], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][4], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][5] = CreatePlayerTextDraw(playerid, 107.567009, 238.500885, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][5], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][5], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][5], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][5], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][5], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][5], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][5], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][5], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][5], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][5], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][5], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][6] = CreatePlayerTextDraw(playerid, 190.866989, 238.500916, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][6], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][6], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][6], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][6], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][6], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][6], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][6], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][6], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][6], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][6], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][6], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][7] = CreatePlayerTextDraw(playerid, 275.434265, 238.315674, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][7], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][7], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][7], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][7], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][7], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][7], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][7], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][7], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][7], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][7], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][7], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][8] = CreatePlayerTextDraw(playerid, 359.799805, 238.200912, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][8], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][8], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][8], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][8], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][8], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][8], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][8], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][8], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][8], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][8], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][8], 0.000000, 0.000000, 0.000000, 1.000000);

	SkinsPlayer[playerid][9] = CreatePlayerTextDraw(playerid, 444.798798, 238.000916, "");
	PlayerTextDrawLetterSize(playerid, SkinsPlayer[playerid][9], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, SkinsPlayer[playerid][9], 80.000000, 73.000000);
	PlayerTextDrawAlignment(playerid, SkinsPlayer[playerid][9], 1);
	PlayerTextDrawColor(playerid, SkinsPlayer[playerid][9], 0xFFFFFFFF);
	PlayerTextDrawUseBox(playerid, SkinsPlayer[playerid][9], 0);
	PlayerTextDrawBoxColor(playerid, SkinsPlayer[playerid][9], 0x80808080);
	PlayerTextDrawSetShadow(playerid, SkinsPlayer[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, SkinsPlayer[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, SkinsPlayer[playerid][9], 0xFFFFFF20);
	PlayerTextDrawFont(playerid, SkinsPlayer[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, SkinsPlayer[playerid][9], 0);
	PlayerTextDrawSetSelectable(playerid, SkinsPlayer[playerid][9], 1);
	PlayerTextDrawSetPreviewModel(playerid, SkinsPlayer[playerid][9], 18631);
	PlayerTextDrawSetPreviewRot(playerid, SkinsPlayer[playerid][9], 0.000000, 0.000000, 0.000000, 1.000000);
}