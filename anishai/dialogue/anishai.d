// creator  : D:\BLACKI~1\BGII-S~1\WEIDU.EXE (version 144)
// argument : ANISHAI.DLG
// game     : .
// source   : ./override/ANISHAI.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~ANISHAI~ 2 // non-zero flags may indicate non-pausing dialogue
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
SAY @0
IF ~~ THEN REPLY @1 GOTO 1
IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
SAY @3 
IF ~~ THEN REPLY @4 GOTO 3
IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6 
  IF ~~ THEN DO ~SetGlobal("AnishaiEnemy","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3 
SAY @7
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
SAY @8
IF ~~ THEN REPLY @9 GOTO 5
IF ~~ THEN REPLY @10 GOTO 6
END

IF ~~ THEN BEGIN 5
SAY @11 IF ~~ THEN DO ~SetGlobal("AnishaiJoined","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 6
SAY @12 
IF ~~ THEN DO ~SetGlobal("AnishaiLeaves","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 7
SAY @13
IF ~~ THEN REPLY @14 GOTO 8
IF ~~ THEN REPLY @15 GOTO 9
IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 8
SAY @17  IF ~~ THEN DO ~SetGlobal("AnishaiJoined","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 9
SAY @18
IF ~~ THEN REPLY @19 GOTO 8
IF ~~ THEN REPLY @20 GOTO 11
IF ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN REPLY @21 GOTO 12
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN REPLY @21 GOTO 13
IF ~~ THEN REPLY @22 GOTO 14
IF ~~ THEN REPLY @23 GOTO 10
END

IF ~~ THEN BEGIN 10
SAY @24 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11
SAY @25
IF ~Global("LassalVampires","GLOBAL",3)~ THEN GOTO 15
IF ~GlobalLT("LassalVampires","GLOBAL",3)~ THEN  GOTO 17
END

IF ~~ THEN BEGIN 12
SAY @26
IF ~~ THEN REPLY @27 GOTO 16
IF ~~ THEN REPLY @28 GOTO 9
IF ~~ THEN REPLY @29 GOTO 10
END

IF ~~ THEN BEGIN 13
SAY @30
IF ~~ THEN REPLY @31 GOTO 9
IF ~~ THEN REPLY @32 GOTO 10
END

IF ~~ THEN BEGIN 14
SAY @33
IF ~~ THEN REPLY @34 GOTO 9
IF ~~ THEN REPLY @35 GOTO 10
END

IF ~~ THEN BEGIN 15
SAY @36
IF ~~ THEN REPLY @37 GOTO 9
IF ~~ THEN REPLY @38 GOTO 10
END

IF ~~ THEN BEGIN 16
SAY @39
IF ~~ THEN REPLY @40 GOTO 9
IF ~~ THEN REPLY @41 GOTO 10
END

IF ~~ THEN BEGIN 17
SAY @42
IF ~~ THEN REPLY @40 GOTO 9
IF ~~ THEN REPLY @41 GOTO 10
END

