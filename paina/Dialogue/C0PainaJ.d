BEGIN C0PainaJ

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("C0PaiNa",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
~A conflicted spirit rests within you, gray one. You seek a place that will accept you, and find none. Keep searching, and you will eventually find where your true place is.~
== C0PainaJ ~I *know* where my place is. You are naught but a fraud... but have your coins anyway. It means little to me.~
EXIT

I_C_T YOSHJ 113 C0PaiNaYOSHJ113
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~You will get no mercy from me, thief. My spiders will rip you apart!~
END

INTERJECT Player1 3 C0PaiNaSpellholdDizzy0
== C0PainaJ IF ~InParty("C0PaiNa") Range("C0PaiNa",15) !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN
~Your body looks close to failing, <CHARNAME>.~
END
++ ~I'm glad you noticed.~ EXTERN C0PainaJ pl1.1
++ ~Do you think you can do something about it?~ EXTERN C0PainaJ pl1.2
++ ~I'm fine.~ EXTERN C0PainaJ pl1.3

CHAIN C0PainaJ pl1.1
~I take pride in noting the little things, <CHARNAME>.~
EXIT

CHAIN C0PainaJ pl1.2
~No, unfortunately. I can heal wounds of the body, to an extent, but you suffer no ill that I can see. Perhaps it is nothing, but I cannot say.~
EXIT

CHAIN C0PainaJ pl1.3
~Perhaps, though I will not forgive you if you die while leading us from this forsaken place.~
EXIT

// Salvanas

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0PaiNa",LastTalkedToBy)~ THEN SALVANAS C0PaiNaSalvanas
~Oh, my! What a fine specimen of a dusk-skinned beauty!~
== C0PainaJ ~For your own sake, I hope you are not speaking of me.~
== SALVANAS ~Who else, lovely one?~
== C0PainaJ ~Do you not speak Common, animal? Begone!~
== SALVANAS ~Yes, an animal... I am but a beast in your presence, and perhaps you would like me to prove it to you...~
== C0PainaJ ~Perhaps you'll reconsider if I loose my spiders on you.~
== SALVANAS ~Wait. (gulp) Spiders?~
== C0PainaJ ~Oh, yes. Take this beauty for instance. Isn't she lovely? But what is best is her bite. Incurable, lethal, and afflicts burning agony on the victim before they die.~
== C0PainaJ ~Would you like to have a closer look?~
== SALVANAS ~Aiiee!~
DO ~ApplySpellRES("runrun",Myself)
EscapeArea()~
EXIT

// Belmin

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0PaiNa",LastTalkedToBy)~ THEN BELMIN C0PaiNaBelmin
~Foul abomination! Your existence is an affront to nature!~
== C0PainaJ ~This is the sort of attention I get from city trash.~
== BELMIN ~Arrogant witch! Spawn of unholy union! I would cleanse the earth of all of you!~
== C0PainaJ ~Babble your nonsense somewhere else, oaf. I have no time for them.~
== BELMIN ~Your words are as though venom to my ears! I will hear none of it! None, understand?!~
== C0PainaJ ~I could show you real venom, if you keep pushing me!~
== BELMIN ~Your murderous intent surrounds you like a cloak! I will end your blighted existence!~
== BELMIN ~EVERYONE! SEE THE FACE OF TRUE EVIL HERE BEFORE US! A DROW-SPAWN!~
== C0PainaJ ~Quiet, you fool!~
== BELMIN ~I SHALL CLEANSE THIS DEVIL FROM OUR MIDST! AAAAHHHHH-~
== C0PainaJ ~I said QUIET!~
DO ~ReallyForceSpell("BELMIN",FIGURINE_SPIDER_WEB)
ReallyForceSpell("BELMIN",FIGURINE_SPIDER_WEB)
ReallyForceSpell("BELMIN",FIGURINE_SPIDER_WEB)
ActionOverride("BELMIN",EscapeArea()~
EXIT

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 C0PaiNaFirstSlayerChange1 
== C0PainaJ IF ~InParty("C0PaiNa") See("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~A monster! What manner of creature did you become?!~
END

// This is the dialogue for the Tree of Life.
// Non-romanced Branwen:

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PaiNaTreeOfLife","GLOBAL",0)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
~Pai'Na, the half-drow druid whom agreed to accompany you from her lonely sanctuary in Athkatla, has followed you with her spiders in tow with surprising loyalty.~
DO ~SetGlobal("C0PaiNaTreeOfLife","GLOBAL",1)~
END
++ ~Pai'Na, you've done enough. Go back to your home.~ EXTERN C0PainaJ pl2.1
++ ~You still have a duty to fulfill, Pai'Na. Leave and keep your life.~ EXTERN C0PainaJ pl2.1
++ ~Are you ready, Pai'Na? This is the end.~ EXTERN C0PainaJ pl2.1

CHAIN C0PainaJ pl2.1
~I do not like owing favors to anyone, <CHARNAME>, and I feel I owe you one for your acceptance. You have treated me better than anyone else... and I think it is my time to repay you, as strange as the compulsion is.~
END
COPY_TRANS PLAYER1 33 

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 C0PaiNaIrenicusIsDead1
== C0PainaJ IF ~InParty("C0PaiNa") Range("C0PaiNa",15) !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. He falls, just as any other man. Perhaps his blood will taste more satisfying than victory.~
END

// Entering Hell

I_C_T PLAYER1 25 C0PaiNaEnteringHell1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmm... such a strange place. It is not the Demonweb Pits, but appears hardly better. You brought me here, didn't you, <CHARNAME>? Then it seems I've no choice but to help you to the end.~
END

// Battling Irenicus

I_C_T HELLJON 7 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~It is time to die, mage! My children will enjoy tearing you apart!~
END

I_C_T HELLJON 8 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~It is time to die, mage! My children will enjoy tearing you apart!~
END

I_C_T HELLJON 9 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~It is time to die, mage! My children will enjoy tearing you apart!~
END

I_C_T HELLJON 10 C0PaiNaThirdBattleWithIrenicus1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~It is time to die, mage! My children will enjoy tearing you apart!~
END

// Viconia

I_C_T VICG1 2 C0PaiNaVICG12
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. Leave her, <CHARNAME>. I would shed no tears over her death.~
END

// Faldorn

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player2)~
~!Name("Cernd",Player2)
!Name("C0Paina",Player2)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player3)~
~!Name("Cernd",Player3)
!Name("C0Paina",Player3)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player4)~
~!Name("Cernd",Player4)
!Name("C0Paina",Player4)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player5)~
~!Name("Cernd",Player5)
!Name("C0Paina",Player5)~

REPLACE_TRIGGER_TEXT CEFALDOR
~!Name("Cernd",Player6)~
~!Name("Cernd",Player6)
!Name("C0Paina",Player6)~

EXTEND_TOP CEFALDOR 2
+ ~OR(2)
!Class(Player1,DRUID_ALL)
Class(Player1,SHAMAN)
InParty("C0Paina")
!Dead("C0Paina")
!StateCheck("C0Paina",CD_STATE_NOTVALID)~ + ~The rituals of ascension still govern this place! As a druid, Pai'Na will challenge you for leadership!~ EXTERN C0PAINAJ PAINA-FALDORN-FIGHT
END

CHAIN C0PAINAJ PAINA-FALDORN-FIGHT
~I care little for any formal rites, but if you have chosen to leech off the energies of the land, then you shall pay the price! I spit upon your supposed invincibility, and I will see that your corpse becomes carrion for my children!~
== CEFALDOR ~You are mistaken, of course. I revel in the combat of the rituals, and I welcome the chance to end your miserable existence. Come to your death!~ [CEFALD12]
END
IF ~Name("C0Paina",Player2)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35d",FALSE)~ EXIT
IF ~Name("C0Paina",Player3)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35e",FALSE)~ EXIT
IF ~Name("C0Paina",Player4)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35f",FALSE)~ EXIT
IF ~Name("C0Paina",Player5)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35g",FALSE)~ EXIT
IF ~Name("C0Paina",Player6)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Cut35h",FALSE)~ EXIT

I_C_T CEFALD04 3 C0PaiNaCEFALD043
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~You FOOL! You would poison all that resides in this grove? You shall pay for such insolence!~
DO ~LeaveParty()
Enemy()~
END

// Spider Hosts

I_C_T SPBENE 0 C0PAINABENE
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~Hmph. I would advise you not to touch him, <CHARNAME>. He is nothing more than a husk for my spiderlings now, as he deserves to be.~
== C0PainaJ ~Each of these fools committed atrocities upon the sacred creatures that reside within my sanctuary, and they are paying their dues. They deserve no sympathy.~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

I_C_T SPPHIL 0 C0PAINAPHIL
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~Hmph. I would advise you not to touch him, <CHARNAME>. He is nothing more than a husk for my spiderlings now, as he deserves to be.~
== C0PainaJ ~Each of these fools committed atrocities upon the sacred creatures that reside within my sanctuary, and they are paying their dues. They deserve no sympathy.~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

I_C_T SPSAMAR 0 C0PAINASAMAR
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~Hmph. I would advise you not to touch him, <CHARNAME>. He is nothing more than a husk for my spiderlings now, as he deserves to be.~
== C0PainaJ ~Each of these fools committed atrocities upon the sacred creatures that reside within my sanctuary, and they are paying their dues. They deserve no sympathy.~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

I_C_T SPTREDD 0 C0PAINATREDD
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) Global("C0PainaHosts","GLOBAL",0)~ THEN ~Hmph. I would advise you not to touch him, <CHARNAME>. He is nothing more than a husk for my spiderlings now, as he deserves to be.~
== C0PainaJ ~Each of these fools committed atrocities upon the sacred creatures that reside within my sanctuary, and they are paying their dues. They deserve no sympathy.~
DO ~SetGlobal("C0PainaHosts","GLOBAL",1)~
END

// Bodhi

I_C_T BODHI 1 C0PaiNaBODHI1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Bodhi.~
== BODHI ~Pai'Na? How unexpected... I had thought you never left your little hole beneath the tombs.~
== C0PainaJ ~Things change. I accompany <CHARNAME> now.~
END

I_C_T BODHI 6 C0PaiNaBODHI6
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. Bodhi is not to be trusted, <CHARNAME>. I hope you are wise enough to listen to me.~
END

I_C_T C6BODHI 0 C0PaiNaC6BODHI0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Even if you had, my children will seek you out. I hope you're ready to pay for your treachery, Bodhi.~
END

// Temple District

I_C_T CSGAAL 1 C0PaiNaGAAL1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. Another fool and hypocrite preaching of their faith being truer than the rest. It would amuse me to listen to him babble.~
END

I_C_T GAAL 22 C0PaiNaGAAL22
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~A blind man who has lost his only crutch. How pathetic.~
END
// Maevar, Renal, Aran Linvail 

I_C_T MAEVAR 25 C0PaiNaMAEVAR25
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Mages. How I despise them for their reckless magic, destroying many of my children. I would rather introduce him to my spiders, but if we must associate instead...~
END

I_C_T EDWIN 16 C0PaiNaEDWIN16
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~How tedious. Will we be at this fetch-and-carry nonsense all day?~
END

I_C_T RENAL 22 C0PaiNaRENAL22
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~(snort) Is this an attempt at a joke? Even in my sanctuary I knew of the war between yours and the rival guild. Why else would you need us?~
END

I_C_T RENAL 45 C0PaiNaRENAL45
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Excellent. I will be glad to see the arrogant scum dead.~
END

I_C_T ARAN 0 C0PaiNaARAN0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. He appears meek and pathetic, which likely means he is anything but. Do not underestimate him, <CHARNAME>, all our lives depend on it.~
END

// Slums District

I_C_T LEHTIN 17 C0PaiNaLEHTIN17
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~I cannot imagine anything these louts consider entertainment to be tempting. This is a waste of time.~
END

I_C_T HENDAK 2 C0PaiNaHendakInt2
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Bah. I do not envy those locked in a tiny cell. I care little for these men, but perhaps it would be interesting to see them turn on their owners.~
END

// Bridge District

I_C_T TANNER 8 C0PaiNaTanner8
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~What a pitiful creature you are. Any last words before my children feed on your flesh next?~
END

I_C_T INSPECT 13 C0PaiNaINSPECT13
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. I deny anything to do with such a thing. My children prefer the flesh.~
END

I_C_T RAELIS 17 C0PaiNaRAELIS17
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~And you will never try, I assume. Taking our charity for granted, as always.~
END

I_C_T2 PBHUNT01 6 C0PaiNaPBHUNT016
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~You'll all make a fine meal for my children, fools!~
END

// Imnesvale-related

I_C_T UHMAY01 18 C0PaiNaUHMAY18
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Ogres, witches or wolves... why not just find and remove them all for good measure?~
END

// Windspear-related

I_C_T VAELASA 7 C0PaiNaVAELASA7
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. They are attractive, I suppose, though they are nothing compared to the beauty of arachnids.~
END

I_C_T FIRKRA02 0 C0PaiNaFIRKRA020
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~A mighty creature... one we may not stand a chance against.~
END

// de'Arnise-related

I_C_T DELCIA 0 C0PaiNaDELCIA0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Ungrateful bitch. No one would miss her if she were gone.~
END

I_C_T DELCIA 17 C0PaiNaDELCIA17
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Ungrateful bitch. No one would miss her if she were gone.~
END

I_C_T KPGLAI01 1 C0PaiNaKPGLAI011
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~(snort) Weak-willed fool. It seems his mind was not hard to sway.~
END

I_C_T TORGAL 0 C0PaiNaTORGAL0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~The largest and most idiotic of these brutes. He must be the leader.~
END

I_C_T TORGAL 15 C0PaiNaTORGAL15
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~The largest and most idiotic of these brutes. He must be the leader.~
END

// Trademeet has been here for generations...

I_C_T NEEBER 7 C0PaiNaNEEBER7
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Enough! ENOUGH! One more word and I'll have my spiders silence him with webs!~
END

// Spellhold

I_C_T PPCOWLED 1 C0PaiNaPPCOWLED1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~A madman. I thought these men imprisoned the insane, not become them.~
END

I_C_T PPSIME 6 C0PaiNaPPSIME6
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~(snarl) Bodhi.~
END

I_C_T PPSAEM2 19 C0PaiNaPPSAEM219
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~(snarl) I will not go to the Underdark, <CHARNAME>! Bah, but I see few alternatives... do as you wish, though I hope that you will choose the ship.~
END

I_C_T PPSAILOR 1 C0PaiNaPPSAILOR1
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~...why did I ever agree to any of this?~
END

// Sahuagin City

I_C_T SAHKNG01 1 C0PaiNaSAHKNG011
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~(sniff) Do these fish-beasts choose their leaders based off their stupidity and foulness of breath?~
== SAHKNG01 ~Eh? What's that?~
== C0PainaJ ~I said nothing, 'oh mighty king'.~
END

I_C_T SAHPR1 1 C0PaiNaSAHPR11
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Hmph. I know a little of these shark-beasts. 'Sahuagin', I believe they're called. As for their language, I know nothing.~
END

I_C_T SAHPR2 12 C0PaiNaSAHPR112
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~I care not which side of this conflict we assist, <CHARNAME>, though this one seems competent in battle. It would be easier to go along with this plan.~
END

INTERJECT SAHBEH01 27 C0PaiNaSAHBEH0127
== C0PainaJ IF ~IfValidForPartyDialog("C0PaiNa")~ THEN ~(snort) A simple play on words is all it would take to find a loophole. Surely you have already found it, fat eyeball?~
== SAHBEH01 ~*Eyeball*?! You cheeky wench!~
== C0PainaJ ~Just shut up and listen. He asked you to guard the chest. How about the contents? Did he mention it at all?~
== SAHBEH01 ~Hmmm. Well, he screamed "my chest," as I recall. A spear was being thrust through his own chest at the time, though, so he could have been referring to that.~
== SAHBEH01 ~I assume he was talking about *this* chest, though. And that means I can't let you open it... or do anything to it... even if I'm not guarding what's inside.~
== C0PainaJ ~Then simply open it yourself and let us take what's inside. Has that ever crossed your mind?~
== SAHBEH01 ~Hm. Hrrrm...~
EXTERN SAHBEH01 35

// The Underdark 

I_C_T UDSVIR03 9 C0PaiNaUDSVIR039
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~An cryptic choice of words. You'd best elaborate to not waste our time.~
END

I_C_T UDSILVER 0 C0PaiNaUDSILVER0
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~The last thing I had expected to see in these depths was a silver dragon.~
== UDSILVER ~A half-drow? I pity you, little one.~
== C0PainaJ ~You do not know me. What do you mean by that?~
== UDSILVER ~I mean what I say. Your kind are to be pitied, and if you do not know it, then all the more.~
END

I_C_T UDOGRE 3 C0PaiNaUDOGRE3
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~*hiss* Flayers? We were captured by mind flayers?! Why did I ever agree to join you in this?~
END

I_C_T2 UDDROW04 8 C0PaiNaUDDROW048
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~*snort* Run, coward.~
END

I_C_T2 UDDROW15 2 C0PaiNaUDDROW152
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Tch, how wasteful. Must we stand by and watch this nonsense?~
END

I_C_T2 UDDROW36 2 C0PaiNaUDDROW362
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Really now, <CHARNAME>, if you wanted to blow our cover so foolishly, at least give some warning!~
END

I_C_T MINSCJ 171 C0PaiNaMINSCJ171
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Oh, of all the... the damned moron!~
END

I_C_T UDDROW24 0 C0PaiNaUDDROW240
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~This is interesting... you have quite a selection of poisons, merchant.~
== UDDROW24 ~You have a good eye, esteemed female. I have concoctions not found within any other drow settlement, even Ched Nasad. Perhaps you are interested in making a purchase?~
== C0PainaJ ~That depends. Are these pitiful duds all you possess? If you have nothing of interest, I think we could easily find better from elsewhere.~
== UDDROW24 ~You'll find no alchemical stock better than mine in this city, I assure you. Perhaps you might see for yourself?~
END

I_C_T UDSILVER 34 C0PaiNaUDSILVER34
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~I feel like... gagging. This is a nightmare, it has to be.~
END

I_C_T UDSOLA01 0 C0PaiNaUDSOLA010
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Weak, you say? Who are you who dares to speak of us so, male filth?~
== UDSOLA01 ~This is not Ched Nasad, female, and you may not take liberties here as you may in your own city. Watch your tongue.~
END

I_C_T UDSOLA01 117 C0PaiNaUDSOLA01117
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~The idiot does not even see through our intentions. Kill him and be done with it.~
== UDSOLA01 ~What are you mumbling, female? What is the meaning of this?!~
END

I_C_T2 UDPHAE01 161 C0PaiNaUDPHAE01161
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~Burn and writhe in agony, bitch. May you suffer in the Demonweb Pits for the rest of eternity.~
END

// Chapter 6 and 7, Elhan and Demin

INTERJECT C6ELHAN2 8 C0PaiNaC6ELHAN28
== C6ELHAN2 IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) OR(4)
Dead("Viconia")
!InParty("Viconia")
!See("Viconia")
StateCheck("Viconia",STATE_SLEEPING)~ THEN ~They will pay close attention to your next statement, especially since you are already damned for having a drow traveling with you.~
== C0PainaJ ~*Half*-drow, though I doubt it changes much to you, nor will you believe me if I swear I despise the drow as much as you do.~
== C6WARSA1 ~(nod) She speaks the truth.~
== C6ELHAN2 ~Very well. I will not press the issue.~
EXTERN C6ELHAN2 10

INTERJECT C6ELHAN2 8 C0PaiNaC6ELHAN28
== C6ELHAN2 IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID) !Dead("VICONIA")
InParty("Viconia")
See("Viconia")~ THEN ~They will pay close attention to your next statement, especially since you are already damned for having two drow traveling with you.~
== C0PainaJ ~*Half*-drow, though I doubt it changes much to you, nor will you believe me if I swear I despise the drow as much as you do.~
== C6WARSA1 ~(nod) She speaks the truth.~
== C6ELHAN2 ~Very well. I will not press the issue. For you, at least.~
EXTERN C6ELHAN2 10

// Kitthix

CHAIN IF WEIGHT #-1 ~Global("C0PaiNaKitthix","GLOBAL",1)~ THEN C0PAINAJ kitthix
~Hello, Kitthix. Sleep well? Sorry to bother you.~
DO ~SetGlobal("C0PaiNaKitthix","GLOBAL",2)~
== SPIDFGSU ~*chitter* *clack*~
== C0PAINAJ ~Yes, yes, I'm happy to see you too. It's been a while since I've summoned you, hasn't it?~
END
++ ~Get that thing away from me!~ EXTERN C0PAINAJ kitthix1
++ ~Are you... talking to the spider?~ EXTERN C0PAINAJ kitthix2
++ ~(Ignore her)~ EXTERN C0PAINAJ kitthix3

CHAIN C0PAINAJ kitthix3
~Now, you must be hungry after waking up after so long. How about we find you some prey to gorge yourself on, then?~
== SPIDFGSU ~*clacks excitedly*~
== C0PAINAJ ~Yes, of course, my dear friend. Hear that, <CHARNAME>? She's positively famished. Best you find ourselves some fools to feed her before she creeps too close to you.~
EXIT

APPEND C0PainaJ

IF ~~ kitthix1
SAY ~Oh, shut it. I don't think she's any more pleased to be around you than vice versa. You should be happy she was even bothered to answer the summoning.~
IF ~~ + kitthix3
END

IF ~~ kitthix2
SAY ~I do this all the time, <CHARNAME>. You're just not sharp enough to hear anything.~
IF ~~ + kitthix3
END

IF ~Global("C0PaiNaKitthix","GLOBAL",4)~ kitthix4
SAY ~Hmm... I wonder... but if it goes wrong and I destroy it, then- no, I need to think on it carefully... hmm.~
++ ~You've been looking at that figurine for the past hour now.~ + kitthix5
++ ~What are you doing?~ + kitthix5
END

IF ~~ kitthix5
SAY ~I've been thinking. My master once said that Kitthix has a great amount of untapped power. I haven't had a clue on how to unlock it yet, but...~
= ~...well, I can't deny my trekking with you hasn't taught me a few things. I think I might have enough power to draw from nature to make my friend more powerful.~
++ ~How is it you have such an item, anyway?~ + kitthix6
++ ~But you said you were worried it may be destroyed.~ + kitthix7
END

IF ~~ kitthix6
SAY ~I stole it, of course. From my master, that is, when I left. Which is to say it's practically mine, since she always allowed me to play with it. Kitthix liked me better anyway.~
= ~Though it was quite a surprise to summon a live, intelligent spider while playing with what I thought was a simple spider doll.~
IF ~~ + kitthix7
END

IF ~~ kitthix7
SAY ~There is a small chance the figurine may crumble to dust if it cannot hold the druidic magic I intend to imbue it with... it is quite old, after all. But it's only a small chance.~
= ~Still, it would be rather sad to lose my only way of summoning my friend, so... even if it's just a small chance, I wasn't willing to risk it before.~
++ ~But now you're confident it will work?~ + kitthix8
END

IF ~~ kitthix8
SAY ~Well, I'd be quite disappointed in myself if it didn't, hmm? I've prepared a few precautions, just in case.~
= ~Now shut up and hold it for me for a moment. Don't you dare drop it! I'm going to begin now... first, with a drop of my blood...~
IF ~~ DO ~SetGlobal("C0PaiNaKitthix","GLOBAL",5)~ EXIT
END

IF ~Global("C0PaiNaKitthix","GLOBAL",6)~ kitthix9
SAY ~Ah-HA! Success, just as I knew it would be. Why would I ever doubt myself? Isn't it a thing of beauty?~
++ ~It... looks like... it's covered in blood.~ + kitthix10
++ ~So what's different about it?~ + kitthix11
END

IF ~~ kitthix10
SAY ~Details, details. It's not like it's for you anyway.~
IF ~~ + kitthix11
END

IF ~~ kitthix11
SAY ~My friend's power has increased dramatically, I know it... but in what ways, I wonder? Oh, I can't wait to find out, e-hehehehehee...~
= ~Well?! What are you doing standing around slack-jawed? Go find us an enemy or two! I must test the summoning immediately!~
IF ~~ DO ~SetGlobal("C0PaiNaKitthix","GLOBAL",7)~ EXIT
END

// Underdark

IF ~Global("C0PaiNaUnderdark","GLOBAL",1)~ ch5
SAY ~Bah! I had hoped that we would not need to come to the Underdark, but here we are.~
++ ~I'm sorry. We'll try and find our way out, as soon as possible.~ + ch5.1
++ ~We still need to find Irenicus and Bodhi.~ + ch5.2
++ ~I thought you preferred being underground.~ + ch5.3
++ ~Let's get going.~ EXIT
END

IF ~~ ch5.1
SAY ~You had best hold that promise, <CHARNAME>.~
IF ~~ + ch5.2
END

IF ~~ ch5.2
SAY ~I suppose we must still find your enemies, or else you will waste away. (sigh) But just the thought of being here...~
++ ~Are you afraid of this place, Pai'Na?~ + ch5.4
++ ~I thought you preferred the underground.~ + ch5.3
++ ~Let's try and make our way out of here.~ EXIT
END

IF ~~ ch5.3
SAY ~There is a difference, <CHARNAME>. Underground is home. The Under*dark* is no home for anyone.~
IF ~~ + ch5.5
END

IF ~~ ch5.4
SAY ~You would be a fool not to be, <CHARNAME>. Our deaths may come sooner than you expect, as long as we are here.~
IF ~~ + ch5.5
END

IF ~~ ch5.5
SAY ~If there is anything to look forward to, it's the prospect of setting my spiders on the drow scum we come across. Perhaps they will appreciate the irony before they die.~
IF ~~ DO ~SetGlobal("C0PaiNaUnderdark","GLOBAL",1)~ EXIT
END

IF ~Global("C0PaiNaUstNatha","GLOBAL",1)~ ustnatha
SAY ~*snort* I had thought the foul air of the outside was bad enough. Now I fear the irony of my situation will choke me instead.~
= ~Must we indulge that overgrown shiny lizard with this farce? I would sooner lay waste to this city than walk within it.~
++ ~Keep your voice down! You don't want us to get caught, do you?~ + ustnatha1
++ ~I share your sentiment. However, we must do it if we are to escape.~ + ustnatha2
++ ~You really think we could take on a whole city of drow?~ + ustnatha3
++ ~(Ignore her)~ + ustnatha4
END

IF ~~ ustnatha1
SAY ~Are you daft, <CHARNAME>? That is precisely what I want. It would give me an excuse to unleash some vengeance on this scum.~
IF ~~ + ustnatha5
END

IF ~~ ustnatha2
SAY ~Grr... I cannot argue with that logic, much as I would like to. Damn it all, why did I have to leave my peaceful home to accompany you in this fool mission?~
IF ~~ + ustnatha5
END

IF ~~ ustnatha3
SAY ~I have no doubt we would be discovered regardless, sooner or later. At least we would strike first.~
IF ~~ + ustnatha5
END

IF ~~ ustnatha4
SAY ~...at least the spiders walk free. That is something.~
IF ~~ + ustnatha5
END

IF ~~ ustnatha5
SAY ~Just... hurry up and do... whatever it is you intend to do here. If you get us killed in this wretched hive, I will be sure to come after you in the next life.~
IF ~~ DO ~SetGlobal("C0PaiNaUstNatha","GLOBAL",2)~ EXIT
END

// Search for witch

IF ~Global("C0PaiNaWitch","GLOBAL",1)~ witch
SAY ~Hmm. This place where we emerged from the underground... it is somewhat familiar to me. We must be in the Forest of Tethir, or close to it.~
= ~If that is the case... <CHARNAME>, I have something to ask of you.~
++ ~What is it?~ + witch1
++ ~Not right now.~ + witch2
END

IF ~~ witch1
SAY ~As I may have told you, I was raised by a forest witch within the Forest of Tethir. This... is the closest to home I have been in a long time.~
= ~I wish to return there. There is... something that I left behind, which I need to reclaim.~
++ ~You sure you're not just homesick?~ + witch3
++ ~What is this thing you're after?~ + witch4
++ ~Sure, we'll go when we have the time.~ + witch5
++ ~Maybe later. We've got more important things to do now.~ + witch6
END

IF ~~ witch2
SAY ~Hear me, regardless. Perhaps afterwards you may decide if this is something that interests you.~
IF ~~ + witch1
END

IF ~~ witch3
SAY ~What? What nonsense. There is simply an object of great power that I could not take when I left, but now wish to possess.~
IF ~~ + witch4
END

IF ~~ witch4
SAY ~I do not know the details. It is a magical... item which was intended for hivemasters that have entered the last stages of their training to gain the knowledge of my predecessors.~
= ~The witch baited me with the promise of leading me to such power, but refused to give it to me when the time came. I tried to find it and steal it in the dead of night, and when I heard her waking up, I fled.~
= ~Now, however, I have more than enough power to return and take the last piece of my training... by force, if I must. Hopefully, you will see the value of having greater power at your disposal and assist me in this.~
++ ~You'd hurt your foster mother over some power?~ + witch7
++ ~But you don't even know what this thing is.~ + witch8
++ ~We'll search the Forest of Tethir when we have the chance.~ + witch5
END

IF ~~ witch5
SAY ~Good. I would prefer not to bloody my own hands in this.~
IF ~~ DO ~SetGlobal("C0PaiNaWitch","GLOBAL",2)~ UNSOLVED_JOURNAL @100001 EXIT
END

IF ~~ witch6
SAY ~Hmph. You are a fool to dismiss such an opportunity so quickly. But I would rather not face my former master alone... so I can only hope that you will quickly come to your senses.~
IF ~~ DO ~SetGlobal("C0PaiNaWitch","GLOBAL",2)~ UNSOLVED_JOURNAL @100001 EXIT
END

IF ~~ witch7
SAY ~Only if I must. That is what you wish to hear, isn't it? I am not so ignorant as to not be grateful for what she did teach me.~
= ~But it was her who betrayed me. She dangled some power before my eyes, put me through hell to become a true hivemaster, then took it away when I was ready.~
= ~You have a way with words, <CHARNAME>. You convinced me somehow, that leaving my safe sanctuary in the underground to partake in this mad venture was a good idea. Perhaps you could even convince her to give it up.~
++ ~Fair enough. We'll go when we have a chance.~ + witch5
++ ~We have no time for this right now.~ + witch6
END

IF ~~ witch8
SAY ~I have a suspicion... it must be something small, and easily concealed and transportable... my master mentioned creating it with a circle of hivemasters and bringing it back from the High Forest... perhaps it is a trinket of some sort.~
= ~But I will know it when I see it. Is that enough for you, <CHARNAME>?~
++ ~You'd hurt your foster mother over some power?~ + witch7
++ ~Sure, we'll go when we have the time.~ + witch5
++ ~Maybe later. We've got more important things to do now.~ + witch6
END

// Has Bebilith Extract

IF ~Global("C0PaiNaBebilithVenom","GLOBAL",1)~ b1
SAY ~At last. The last test for becoming a true hivemaster, here in my hands... I have dreamed of this moment for every day up to now.~
++ ~Doesn't the death of your master affect you at all?~ DO ~SetGlobal("C0PaiNaBebilithVenom","GLOBAL",2)~ + b1.1
++ ~You sure you want to drink that? Look at what it did to your master.~ DO ~SetGlobal("C0PaiNaBebilithVenom","GLOBAL",2)~ + b1.2
++ ~Well? What are you going to do with it?~ DO ~SetGlobal("C0PaiNaBebilithVenom","GLOBAL",2)~ + b1.3
END

IF ~~ b1.1
SAY ~Hmph. She knew the risk of taking this test. She died because she lacked the fortitude to endure it. That has nothing to do with me.~
= ~But... I cannot deny I appreciate her for the many years she tutored and raised me. If she had not made her choice, then...~
IF ~~ + b1.4
END

IF ~~ b1.2
SAY ~This is a test for hivemaster druids to reach the pinnacle of their power. If I am to become the strongest protector of my spiders that I can be, then I must do this. There is no other choice.~
= ~Though... I do not envy the fate of my late master. Even if I survived, the pain supposedly never disappears entirely. I wonder if I can accept that...~
IF ~~ + b1.4
END

IF ~~ b1.3
SAY ~Patience. I wish to admire this a while longer.~
IF ~~ + b1.5
END

IF ~~ b1.4
SAY ~Bah! This is irrelevant. I can only trust my own strength in this. I have prepared an entire lifetime for this moment... am I not meant to succeed?~
IF ~~ + b1.5
END

IF ~~ b1.5
SAY ~I cannot deny this is dangerous. This trial is supposedly dangerous to the extent that most hivemasters do not even dare to attempt it. My master's fate served as an example of what can happen.~
= ~Still, I am almost certain I will survive. What do you think, <CHARNAME>? Though it shames me to admit it, I have enough respect for you to take your opinion into account.~
++ ~I think you should drink it. If you're confident, then I'm sure you'll make it alive.~ + b1.6
++ ~No, this is too dangerous. You shouldn't risk your life just for some power.~ + b1.7
++ ~I can't make up your mind for you.~ + b1.8
END

IF ~~ b1.6
SAY ~Yes... I should not doubt myself. As I said, I have prepared a lifetime for this moment. If I believe that I can succeed, then there is no reason to hesitate.~
= ~I am ready. If I do end up melting from the inside, spare me some of my dignity and look away.~
IF ~~ DO ~TakePartyItem("c0ppotn") UseItem("c0ppotn",Myself)~ SOLVED_JOURNAL @100002 EXIT
END

IF ~~ b1.7
SAY ~Hmph. And what would you have me do instead?~
++ ~You don't have to seek power in such a dangerous way. You still have countless years to find other ways. Destroy it.~ + b1.9
++ ~Maybe you should just hold on to it for the moment. Once you're stronger, you'll be more likely to survive.~ + b1.10
++ ~On second thought, if you're confident that you won't die, then go ahead and drink it.~ + b1.6
END

IF ~~ b1.8
SAY ~*snort* I should not have expected a helpful answer from you. I suppose there is no need to hurry.~
= ~Perhaps I will keep it for the moment. Once I have trained my body to tolerate its potency, then I shall consume it and gain the true power of my calling.~
= ~Enough. We have wasted enough time here.~
IF ~~ DO ~TakePartyItem("c0ppotn")~ SOLVED_JOURNAL @100002 EXIT
END

IF ~~ b1.9
SAY ~Tch... I suppose there is no need for me to risk my life. I still have my spiders to consider... *snort* and you would be helpless without my assistance, especially in your sorry condition.~
= ~I will surpass my master without this. And perhaps in the future, I shall take this final test under my own terms.~
= ~...there. Now it is too late for regrets. Let's move on.~
IF ~~ DO ~DestroyItem("c0ppotn")~ SOLVED_JOURNAL @100003 EXIT
END

IF ~~ b1.10
SAY ~Hmph. That is true. I can wait a little longer, until I am stronger. Then I will be certain to succeed.~
= ~I shall keep it for the moment, then. Now do your job and lead this ragtag band of ours.~
IF ~~ DO ~TakePartyItem("c0ppotn")~ SOLVED_JOURNAL @100002 EXIT
END

// Drank Bebilith Extract, survived

IF ~Global("C0PVENOM","GLOBAL",3)~ p1
SAY ~Nn... nnnnnNNNGGGHH...!~
++ ~Are you all right?~ DO ~SetGlobal("C0PVENOM","GLOBAL",4)~ + p2
END

IF ~~ p2
SAY ~N...no, you fool! My blood... my blood feels as though on *fire*! Nngh... the pain, it hurts so, so much...~
++ ~You should've listened to your mentor.~ + p3
++ ~Is there anything I can do to help?~ + p4
++ ~Did it at least make you more powerful?~ + p5
END

IF ~~ p3
SAY ~Silence! You know nothing, <CHARNAME>! She... she knew the price I would pay if I... I...~
IF ~~ + p6
END

IF ~~ p4
SAY ~No! Just shut up, your words are as though a mallet striking a gong to my head! I need... quiet...~
IF ~~ + p6
END

IF ~~ p5
SAY ~Power...? Yes, this... this was all for power. But...~
IF ~~ + p6
END

IF ~~ p6
SAY ~I- I can feel it... the knowledge and power coursing through me. My spiders... they speak to me, as they always do, but I can hear them even more clearly...~
= ~My master, she... she was weak, and failed the test. But I am strong. That is why... that is why I am still alive. Yet... this does not feel like victory.~
= ~What do I do now? I finally got what I wanted, but... I feel as though I will never be the same again.~
++ ~You should stay with me. At least until you feel better.~ + p7
++ ~I could make use of that power you've received.~ + p7
++ ~That's for you to decide.~ + p7
END

IF ~~ p7
SAY ~I suppose there is nothing to do but to remain with you for now. You would be helpless without my power, after all.~
= ~Nngh... the burning in my veins is subsiding, but still eats away at me. Hurry up and lead, <CHARNAME>. Perhaps experimenting with my newfound power will dull the pain.~
IF ~~ DO ~AddXPObject("C0PaiNa",50000)~ EXIT
END
END

BEGIN SPIDFGSU