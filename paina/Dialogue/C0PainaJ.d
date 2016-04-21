BEGIN C0PainaJ

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("C0PaiNa",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
~A conflicted spirit rests within you, gray one. You seek a place that will except you, and find none. Keep searching, and you will eventually find where your true place is.~
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
DO ~ReallyForceSpell(Myself,WIZARD_IMPROVED_HASTE)
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
~I do not like owing favors to anyone, <CHARNAME>, and I feel I owe you one for your acceptance. You have treated me better than anyone else... and now I feel compelled to return the favor.~
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

I_C_T CEFALDOR 2 C0PaiNaCEFALDOR2
== C0PainaJ IF ~InParty("C0PaiNa") InMyArea("C0PaiNa") !StateCheck("C0PaiNa",CD_STATE_NOTVALID)~ THEN ~I would fight this arrogant wench, if only to spit upon her supposed invincibility. But it is your call, <CHARNAME>.~
END

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

I_C_T UDPHAE01 161 C0PaiNaUDPHAE01161
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

// Underdark

APPEND C0PainaJ

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
IF ~~ EXIT
END
END