echo off
rd/s/q Edit_XML
mkdir Edit_XML

xcopy D:\GitHub\EO-CN\EOU1\MBM .\Edit_XML /s /e /h /y /z
python tools\checkperiod.py Edit_XML\BATTLE\BATTLEMESSAGE.xml
python tools\checkperiod.py Edit_XML\DEBUG\DEBUG_PARTY_HELP.xml
python tools\checkperiod.py Edit_XML\DICTIONARY\DICTIONARYENEMYEXP.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR_INFO_NAME.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION_COMPLETE.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION_EXPLAIN.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION_NAME.xml
python tools\checkperiod.py Edit_XML\EVENT\QR_QUEST_COMPLETE.xml
python tools\checkperiod.py Edit_XML\EVENT\QR_QUEST_EXPLAIN.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST_COMPLETE.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST_EXPLAIN.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST_NAME.xml
python tools\checkperiod.py Edit_XML\EVENT\WIRELESS_EXPLAIN.xml
python tools\checkperiod.py Edit_XML\EVENT\WIRELESS_NAME.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_05.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_06.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_07.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_08.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_09.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_10.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_15.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_16.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_17.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_18.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_19.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_20.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_21.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_22.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_23.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_24.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_25.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_26.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_27.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_39.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_40.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_51.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_53.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_54.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_55.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_56.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_58.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_59.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_60.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_61.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_62.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_64.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_65.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_66.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_67.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_68.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_69.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_70.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_72.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_73.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_74.xml
python tools\checkperiod.py Edit_XML\EVENT\BAR\BAR_75.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_01F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_02F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_03F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_04F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_05F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_06F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_07F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_08F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_09F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_10F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_11F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_12F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_13F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_14F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_15F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_16F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_17F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_18F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_19F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_20F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_21F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_22F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_23F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_24F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_25F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_26F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_27F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_28F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_29F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_30F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_31F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_32F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_33F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_34F.xml
python tools\checkperiod.py Edit_XML\EVENT\DUNGEON\DUN_35F.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\GUILD.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\HIROBA.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\HOUSE.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\JUKAI.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\SAKABA.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\SHOP.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\TOUTI.xml
python tools\checkperiod.py Edit_XML\EVENT\FACILITY\YADOYA.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_FOOD_CAMP.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_FOOD_EFFECT.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_FOOD_EXPLAIN.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_FOOD_NAME.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_FOOD_TALK.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_REQUEST_COMPLETE.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_REQUEST_EXPLAIN.xml
python tools\checkperiod.py Edit_XML\EVENT\KEEPER\KEEPER_REQUEST_NAME.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_000.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_001.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_002.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_003.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_004.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_005.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_006.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_010.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_011.xml
python tools\checkperiod.py Edit_XML\EVENT\MISSION\MIS_012.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_001.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_002.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_003.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_004.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_005.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_006.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_007.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_008.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_009.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_010.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_011.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_037.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_053.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_054.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_055.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_056.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_059.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_060.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_061.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_062.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_064.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_066.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_068.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_074.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_076.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_077.xml
python tools\checkperiod.py Edit_XML\EVENT\QR\QR_078.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_000.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_001.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_002.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_003.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_004.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_005.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_006.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_007.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_008.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_009.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_010.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_011.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_012.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_013.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_014.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_015.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_016.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_017.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_018.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_019.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_020.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_021.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_022.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_023.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_024.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_025.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_026.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_027.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_028.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_029.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_030.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_031.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_032.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_033.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_034.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_035.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_036.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_037.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_038.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_039.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_040.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_041.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_042.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_043.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_044.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_045.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_046.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_047.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_048.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_049.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_050.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_051.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_052.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_053.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_054.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_055.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_056.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_057.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_058.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_059.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_060.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_061.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_062.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_063.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_064.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_065.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_066.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_067.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_068.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_069.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_070.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_071.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_072.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_073.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_074.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_075.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_076.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_077.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_078.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_079.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_080.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_081.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_082.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_083.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_084.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_085.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_086.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_087.xml
python tools\checkperiod.py Edit_XML\EVENT\QUEST\QUE_091.xml
python tools\checkperiod.py Edit_XML\EVENT\REQUEST\REQ_000.xml
python tools\checkperiod.py Edit_XML\EVENT\REQUEST\REQ_001.xml
python tools\checkperiod.py Edit_XML\EVENT\REQUEST\REQ_002.xml
python tools\checkperiod.py Edit_XML\GUILDCARD\GUILDCARDTITLENAME.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\AIRPORTWIRELESSTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\ALBUM.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\CAMPBLACKSMITHTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\CAMPTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\CLASSEXPLAINTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\DUNGEON.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\DUNGEONEXPLAIN.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\DUNGEONLONGEXPLAIN.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\DUNGEONNAME.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\ENDINGTALK.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYAIRPORTTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYBARTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYCHARMAKE.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYENTRANCETEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYGOVERNMENTTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYGUILDTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYHOTELTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYSHOPTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\FACILITYTOWNGATETEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\GUILDCARDTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\INTERFACECOMMONTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\KEYBOARDTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\LIMITSKILLSET.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\NEWGAMETEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\OPENING.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\OPTIONTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\QRTEXT.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\SAVELOAD.xml
python tools\checkperiod.py Edit_XML\INTERFACEFILE\STAFFROLL.xml
python tools\checkperiod.py Edit_XML\ITEM\EQUIPITEMEXPBATTLE.xml
python tools\checkperiod.py Edit_XML\ITEM\LIMITITEMEXPTABLE.xml
python tools\checkperiod.py Edit_XML\ITEM\SEAITEMEQUIPEXPLAIN.xml
python tools\checkperiod.py Edit_XML\ITEM\SEAITEMEXPLAIN.xml
python tools\checkperiod.py Edit_XML\ITEM\SEAITEMTEXT.xml
python tools\checkperiod.py Edit_XML\ITEM\SKYITEMEQUIPEXPLAIN.xml
python tools\checkperiod.py Edit_XML\ITEM\SKYITEMEXPLAIN.xml
python tools\checkperiod.py Edit_XML\ITEM\SKYITEMFOODEFFECT.xml
python tools\checkperiod.py Edit_XML\ITEM\USEITEMEXPBATTLE.xml
python tools\checkperiod.py Edit_XML\SKILL\SKILLBURSTEXP.xml
python tools\checkperiod.py Edit_XML\SKILL\SKILLCUSTOM.xml
python tools\checkperiod.py Edit_XML\SKILL\SKILLEXPBATTLE.xml
python tools\checkperiod.py Edit_XML\SKILL\SKILLEXPBATTLE_ENEMY.xml
python tools\checkperiod.py Edit_XML\SKILL\SKILLEXPBATTLE_PLAYER.xml
rd/s/q Edit_XML
pause