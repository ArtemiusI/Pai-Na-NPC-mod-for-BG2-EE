INTERJECT SPPAIN 20 C0UBPAINA1
== SPPAIN IF ~Global("C0UBPainaQuest","GLOBAL",0)~ THEN ~I suppose you city-dwellers will no doubt want a reward for your service. I have little to give, but you may find this useful. Take it and go.~
DO ~TakePartyItem("U!SPBANE")
SetGlobal("ReturnedSpiderBane","GLOBAL",1)
EraseJournalEntry(190454)
EraseJournalEntry(190456)
AddexperienceParty(15000)
SetGlobal("C0UBPainaQuest","GLOBAL",1)
SetGlobal("C0PainaMet","GLOBAL",1)
SetDialog("C0Paina")
GiveItemCreate("wand14",LastTalkedToBy,10,0,0)~ EXIT

// Cromwell

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("u!spbane")~ THEN GOTO CROMWELL1
END
  
CHAIN WSMITH01 CROMWELL1
~Now, what's this then, eh?~
  = ~Tsk. This blade's been through rough times, it has. Shame on the fool that'd treat a sword this way. Fer 2000 gold, I'll reforge Spider's Bane anew, finer than ever.~
  END
	+ ~PartyGoldLT(2000)~ + ~I don't have enough gold.~ EXTERN WSMITH01 CROMWELLNO
	+ ~PartyGoldGT(1999) InParty("C0Paina")~ + ~That sounds good. Do it.~ EXTERN C0PAINAJ SPBANE1
	+ ~PartyGoldGT(1999) !InParty("C0Paina")~ + ~That sounds good. Do it.~ DO ~SetGlobal("C0PainaSpiderBaneReforge","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(2000)
                                                 TakePartyItemNum("u!spbane",1)
                                                 DestroyItem("u!spbane")
                                                 DestroyGold(2000)~ EXTERN WSMITH01 56
	+ ~PartyGoldGT(1999)~ + ~Not at this time. What else?~ EXTERN WSMITH01 CROMWELLNO


APPEND WSMITH01

  IF WEIGHT #-1 ~GlobalGT("C0PaiNaCromwell","ar0334",0)~ THEN BEGIN CROMWELL2 SAY ~Well, there ye go, me friend. Use it well. And if ye comes across anything else of interest, ye knows where to bring it, aye?~
    IF ~~ THEN DO ~SetGlobal("C0PaiNaCromwell","ar0334",0)~ EXIT
  END

  IF ~~ THEN BEGIN CROMWELLNO SAY ~Hmm, as ye wish...~
   COPY_TRANS WSMITH01 13
  END
END

CHAIN C0PAINAJ SPBANE1
~What?! You'd have the accursed tool of murder reforged, <CHARNAME>? Don't be a fool.~
END
+ ~CheckStatGT(Player1,15,CHR)~ + ~Don't you trust me to use it wisely, Pai'Na?~ EXTERN C0PAINAJ SPBANE2
+ ~CheckStatLT(Player1,16,CHR)~ + ~Don't you trust me to use it wisely, Pai'Na?~ EXTERN C0PAINAJ SPBANE3
++ ~It's my say that counts, Pai'Na. Hand the pieces over.~ EXTERN C0PAINAJ SPBANE3
++ ~You're right. I don't need the blade anyways.~ EXTERN C0PAINAJ SPBANE4

CHAIN C0PAINAJ SPBANE2
~...~
= ~Pah. Do as you wish. Just ensure that it never falls into the wrong hands.~
DO ~SetGlobal("C0PainaSpiderBaneReforge","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(2000)
                                                 TakePartyItemNum("u!spbane",1)
                                                 DestroyItem("u!spbane")
                                                 DestroyGold(2000)~ EXTERN WSMITH01 56
												 
CHAIN C0PAINAJ SPBANE3
~No. Don't even think about it.~
EXTERN WSMITH01 CROMWELLNO

CHAIN C0PAINAJ SPBANE4
~Good. You are less of a fool than I thought.~
EXTERN WSMITH01 CROMWELLNO