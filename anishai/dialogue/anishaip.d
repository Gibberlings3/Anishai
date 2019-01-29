// creator  : D:\BLACKI~1\BGII-S~1\WEIDU.EXE (version 144)
// argument : ANISHAIP.DLG
// game     : .
// source   : ./override/ANISHAIP.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~ANISHAIP~ 2 // non-zero flags may indicate non-pausing dialogue
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~Global("AnishaiJoined","GLOBAL",1)~ THEN BEGIN 0
SAY @0
IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @2  DO ~SetGlobal("AnishaiJoined","GLOBAL",0)~ GOTO 1
END

IF ~~ THEN BEGIN 1
SAY @3 IF ~~ THEN  EXIT 
END

IF ~Global("AnishaiJoined","GLOBAL",0)~ THEN BEGIN 7
SAY @4
IF ~~ THEN REPLY @5 GOTO 8
IF ~~ THEN REPLY @6 GOTO 9
IF ~~ THEN REPLY @7 GOTO 10
END

IF ~~ THEN BEGIN 8
SAY @8 IF ~~ THEN  DO ~SetGlobal("AnishaiJoined","GLOBAL",1)
JoinParty()~ EXIT
END
IF ~~ THEN BEGIN 9
SAY @9
IF ~~ THEN REPLY @10 GOTO 8
IF ~~ THEN REPLY @11 GOTO 11
IF ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN REPLY @12 GOTO 12
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN REPLY @12 GOTO 13
IF ~~ THEN REPLY @13 GOTO 14
IF ~~ THEN REPLY @14 GOTO 10
END

IF ~~ THEN BEGIN 10
SAY @15 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
SAY @16
IF ~Global("LassalVampires","GLOBAL",3)~ THEN GOTO 15
IF ~GlobalLT("LassalVampires","GLOBAL",3)~ THEN  GOTO 17
END
IF ~~ THEN BEGIN 12
SAY @17
IF ~~ THEN REPLY @18 GOTO 16
IF ~~ THEN REPLY @19 GOTO 9
IF ~~ THEN REPLY @20 GOTO 10
END
IF ~~ THEN BEGIN 13
SAY @21
IF ~~ THEN REPLY @22 GOTO 9
IF ~~ THEN REPLY @23 GOTO 10
END
IF ~~ THEN BEGIN 14
SAY @24
IF ~~ THEN REPLY @25 GOTO 9
IF ~~ THEN REPLY @26 GOTO 10
END
IF ~~ THEN BEGIN 15
SAY @27
IF ~~ THEN REPLY @28 GOTO 9
IF ~~ THEN REPLY @29 GOTO 10
END
IF ~~ THEN BEGIN 16
SAY @30
IF ~~ THEN REPLY @31 GOTO 9
IF ~~ THEN REPLY @32 GOTO 10
END

IF ~~ THEN BEGIN 17
SAY @33
IF ~~ THEN REPLY @31 GOTO 9
IF ~~ THEN REPLY @32 GOTO 10
END
