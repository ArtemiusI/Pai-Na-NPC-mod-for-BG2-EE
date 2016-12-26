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
