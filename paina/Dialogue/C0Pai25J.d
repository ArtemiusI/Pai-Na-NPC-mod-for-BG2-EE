BEGIN C0Pai25J

EXTEND_TOP FATESP 6 #2
+ ~!Dead("C0Paina") !InMyArea("C0Paina") Global("C0PainaSummoned","GLOBAL",0)~ + ~Bring me Pai'Na, the half-drow hivemaster.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("C0Pai25",[1999.1228],0) 
SetGlobal("C0PainaSummoned","GLOBAL",1)~ GOTO 8
END

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID) !Global("C0PainaRomanceActive","GLOBAL",2)~ + ~Tell me about Pai'Na.~ + C0PainaVoloBio1
END

CHAIN SARVOLO C0PainaVoloBio1
~Mistress of spiders, Pai'Na the hivemistress is among the most deadly of druids in the realms, with countless eight-legged brethren at her command. Those who dare invoke her wrath soon learn to fear and respect the lethality of the arachnids.~
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~Pretty words, though they mean little to me.~
EXTERN SARVOLO 9

I_C_T FINSOL01 27 C0PainaSolarFriend1
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~So, your destiny is about to come to an end. Choose what you desire the most, and damn those who try and convince you otherwise. It is a rare chance for destiny to be in your own hands.~
END

I_C_T AMMERC02 0 C0PainaAMMERC020
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~Oh, what a pleasant surprise. My spiders remember this one very, very well. They would like to get acquainted with his flesh.~
END 

I_C_T2 BAZDRA01 5 C0PainaBAZDRA015
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~You are but a lizard to the might of my brethren, fool!~
END

I_C_T SARMEL01 7 C0PainaSARMEL017
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~Then you are the first. How do we know that you can be trusted?~
END

I_C_T YAGA01 2 C0PainaYAGA012
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~Laugh while you will, brute. You will make a fine feast once you are dead!~
END

I_C_T HGNYA01 1 C0PainaHGNYA011
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~This crone reminds me of the witch that raised me, though there is a strange emptiness in her eyes.~
END

I_C_T HGNYA01 29 C0PainaHGNYA0129
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~Hmph, so her sentiment returns with her heart. I knew we should have let my spiders devour it.~
END

INTERJECT SENGUA01 4 C0PainaSENGUA014
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~There are drow in the area, then? Good. I will enjoy killing them.~
== SENGUA01 ~Wait. A half-drow?! A mongrel that must be cut down on sight!~
== C0Pai25J ~What?~
== SENGUA01 ~This deception be damned, you have made a mistake coming here! By Sendai's will, you shall die!~
DO ~Enemy()
SetGlobal("DrowRevealed","AR6100",1)
EraseJournalEntry(67464)~
EXIT

I_C_T SENDAI 13 C0PainaSENDAI13
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~How pathetic. My spiders still crave for drow flesh.~
END

I_C_T BALTH 6 C0PainaBalth6
== C0Pai25J IF ~InParty("C0Paina") InMyArea("C0Paina") !StateCheck("C0Paina",CD_STATE_NOTVALID)~ THEN ~He sends us away with the tone of one sending a man to his death. What are his intentions?~
END