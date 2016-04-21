BEGIN BC0PAINA 

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAerie1","GLOBAL",0)~ THEN BAERIE C0PainaAerie1
~Eek! Th-there's a spider on me! Get off! Aah!~
DO ~SetGlobal("C0PainaAerie1","GLOBAL",1)~
== BC0PAINA ~Don't flail around, you idiot! You'll kill it!~
== BAERIE ~B-but it's crawling around in my robes!~
== BC0PAINA ~If you keep struggling, it will panic and sink its poisonous fangs into your flesh. Would you prefer that?~
== BAERIE ~N-no! But... it's so uncomfortable...~
== BC0PAINA ~I doubt the spider has any more pleasure in crawling over your skin.~
== BAERIE ~Can you get it off me, P-Pai'Na, please?~
== BC0PAINA ~Bah! Hold still.~
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAnomen1","GLOBAL",0)~ THEN BC0PAINA C0PainaAnomen1
~(snort) Knights. Arrogant and self-righteous... must we keep this one around?~
DO ~SetGlobal("C0PainaAnomen1","GLOBAL",1)~
== BANOMEN ~I derive no more pleasure in your company than you do mine, half-drow. You cannot be trusted, but since <CHARNAME> tolerates you, then I must as well.~
== BC0PAINA ~Should I feel flattered? The prejudice is dripping from every word you spew. Were it any more obvious, you would be spitting it with every breath.~
== BANOMEN ~Your insults have no impact on me. I would find more meaning from conversing with a beast.~
== BC0PAINA ~Yes, I suppose you would be too hard-headed to take in anything I say.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCernd1","GLOBAL",0)~ THEN BCERND C0PainaCernd1
~Do you hail from a grove, Pai'Na?~
DO ~SetGlobal("C0PainaCernd1","GLOBAL",1)~
== BC0PAINA ~A grove? No, I have never lived in such a place. I don't even know what one is like.~
== BCERND ~That is surprising. You are quite disciplined and take your duties seriously. Have you had no training?~
== BC0PAINA ~If you must know, I had a tutor. She taught me how to take care of arachnids and use magic. That's it.~
== BCERND ~Perhaps if you are interested, I would take you to my grove one day. You may like exchanging experiences with my fellows.~
== BC0PAINA ~I think I'll decline. I have no interest in socializing with other druids.~
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaEdwin1","GLOBAL",0)~ THEN BC0PAINA C0PainaEdwin1
~I will only warn you once, red mage. Watch your fireballs and poisonous clouds. If you incinerate any of my charges, I will have them devour you alive.~
DO ~SetGlobal("C0PainaEdwin1","GLOBAL",1)~
== BEDWIN ~'Tis amusing if you think I care for the welfare of your insects. I use my spells how I see fit, and 'tis your own fault if your beasts get in my way.~
== BC0PAINA ~Arachnids and insects are not the same, fool. If you were really so intelligent, then you should know that.~
== BEDWIN ~Vermin, all of them. There is no difference either way. Now begone and stop wasting my time.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHaerDalis1","GLOBAL",0)~ THEN BHAERDA C0PainaHaerDalis1
~What is your tale, Pai'Na, my dusky enigma?~
DO ~SetGlobal("C0PainaHaerDalis1","GLOBAL",1)~
== BC0PAINA ~There is no 'tale', bard, and if you are trying to amuse me with your rhyming nonsense, I am not interested.~
== BHAERDA ~If a poem does not interest you, then perhaps a song will?~
== BC0PAINA ~No. Leave me be.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaImoen1","GLOBAL",0)~ THEN BIMOEN2 C0PainaImoen1
~Hey, Pai'Na- I can call you Pai, right?~
DO ~SetGlobal("C0PainaImoen1","GLOBAL",1)~
== BC0PAINA ~No.~
== BIMOEN2 ~Aww. But I was gonna say, you talk to spiders, right? Do they... talk back?~
== BC0PAINA ~That is a ridiculous question.~
== BIMOEN2 ~So does that mean they don't?~
== BC0PAINA ~Of course they do, you dimwitted ninny. They are as intelligent as you and I. More so, in your case.~
== BIMOEN2 ~Hey, that's not nice!~
== BC0PAINA ~Deal with it.~
== BIMOEN2 ~Aww, lighten up, Pai. Hey- I didn't mean it like that! Don't glare at me!~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJaheira1","GLOBAL",0)~ THEN BJAHEIR C0PainaJaheira1
~I admire your zeal towards defending the arachnid class, Pai'Na, but as a druid, you must understand that all living beings are of equal importance.~
DO ~SetGlobal("C0PainaJaheira1","GLOBAL",1)~
== BC0PAINA ~Perhaps I do, but my children come first. It is their decision to treat all other beings as food.~
== BJAHEIR ~It is not the druid's way to prioritize one species over another, Pai'Na. An unfortunate result of your self-taught path, I fear. I am willing to tutor you in what you lack.~
== BC0PAINA ~No. I am not interested.~
== BJAHEIR ~Suit yourself. Hopefully this temperament of yours may fade when you mature a little.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJan1","GLOBAL",0)~ THEN BJAN C0PainaJan1
~So you like spiders, do you, lass? Surprisingly, so do I!~
DO ~SetGlobal("C0PainaJan1","GLOBAL",1)~
== BC0PAINA ~(dryly) I am glad to know it.~
== BJAN ~Yes, they make excellent guardians for my turnip gardens against the pests that make a business of ruining the family trade. Very helpful! Sadly, the local spider population vanished soon before I left the family to work. I don't suppose you'd be willing to hire a few of your charges?~
== BC0PAINA ~My children are not for 'hire', mad gnome, especially not for the menial task of... guarding vegetables.~
== BJAN ~Nothing will change your mind? Not even one of my finest turnips? Maybe a Flasher?~
== BC0PAINA ~Keep your toys and revolting vegetables away from me! My spiders are as children to me, not tools for you to use!~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKeldorn1","GLOBAL",0)~ THEN BKELDOR C0PainaKeldorn1
~I cannot say that your company puts me at ease, Pai'Na.~
DO ~SetGlobal("C0PainaKeldorn1","GLOBAL",1)~
== BC0PAINA ~I wonder why.~
== BKELDOR ~You are not malevolent, from what I can tell, and your goal is innocent enough. But has it occurred to you that you can be vicious, even cruel, at times?~
== BC0PAINA ~No, I don't think it has.~
== BKELDOR ~Perhaps you will consider it in the future then.~
== BC0PAINA ~Maybe. If the human louts have some more consideration for the eight-legged when they walk.~
== BC0PAINA ~Which, likely, will be never.~ 
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKorgan1","GLOBAL",0)~ THEN BC0PAINA C0PainaKorgan1
~You trample around with no regard for what's under your feet, dwarf. If you stomp on an innocent spider in your way, its kin will feast on your brain.~
DO ~SetGlobal("C0PainaKorgan1","GLOBAL",1)~
== BKORGAN ~Eh, buzz off, tree-huggin' wench. Or should I call ye spider-kissin', eh?~
== BC0PAINA ~I don't think you comprehended what I just said.~
== BKORGAN ~Nope.~
== BC0PAINA ~I correct myself- my spiders cannot eat what clearly doesn't exist. I suppose they will have to settle for the rest of you instead.~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMazzy1","GLOBAL",0)~ THEN BC0PAINA C0PainaMazzy1
~Your hair is in quite an exceptional style, halfling.~
DO ~SetGlobal("C0PainaMazzy1","GLOBAL",1)~
== BMAZZY ~I never expected a compliment from you, Pai'Na, to anyone.~
== BC0PAINA ~I didn't mean to compliment you, but my children rather like it. They would like make a nest of it.~
== BMAZZY ~A *nest*?! In my hair? (shudder) I... am flattered? But I think 'twould be unsafe for them to live atop my head.~
== BC0PAINA ~How disappointing.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMinsc1","GLOBAL",0)~ THEN BMINSC C0PainaMinsc1
~Pai'Na, Boo would like to ask a favor of you...~
DO ~SetGlobal("C0PainaMinsc1","GLOBAL",1)~
== BC0PAINA ~No.~
== BMINSC ~But he has not even asked!~
== BC0PAINA ~Whatever you and your hamster have in... mind cannot be good. The answer is no, to whatever you ask.~
== BMINSC ~Boo would just like to ask your spiders, very nicely, not to stare at them with their many eyes. It makes him nervous.~
== BC0PAINA ~Yes... I suppose my spiders would look to your rodent as a tasty snack. Your point?~
== BMINSC ~Minsc has assured Boo many times that Pai'Na's spiders have no intentions of eating him, but he just wants to make sure!~
== BC0PAINA ~You are actually insane, aren't you?~
== BMINSC ~Minsc is entirely sane, and serious about the protection of his friend!~
== BC0PAINA ~(sigh) Very well... I will try to rein back my children a little, just so you will leave me be.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNalia1","GLOBAL",0)~ THEN BNALIA C0PainaNalia1
~Pai'Na, I don't understand your fascination with spiders. Aren't they disgusting?~
DO ~SetGlobal("C0PainaNalia1","GLOBAL",1)~
== BC0PAINA ~Disgusting? They're the most beautiful creatures of this world. You must be blind to consider otherwise.~
== BNALIA ~My aunt hates them. She would shriek like a banshee if she sees even an ant crawling on the walls.~
== BC0PAINA ~She sounds like a complete idiot.~
== BNALIA ~She also makes pest exterminators come to our castle to clean it of vermin every month.~
== BC0PAINA ~(hiss) The only pests and vermin are those who would dare to harm my children!~
== BNALIA ~You really care for spiders, don't you? I'm not sure whether to respect or be horrified by that.~
== BC0PAINA ~Nobles. (snort) The worst of civilization.~
EXIT 

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaValygar1","GLOBAL",0)~ THEN BC0PAINA C0PainaValygar1
~I think I recognize you, ranger. You have been to the forest of Tethyr before.~
DO ~SetGlobal("C0PainaValygar1","GLOBAL",1)~
== BVALYGA ~I've been there many times. What's your point?~
== BC0PAINA ~You passed the village of the forest witch.~
== BVALYGA ~The old crone that lives in the heart of the forest? I've never spoken to her, nor did I even know that she was a druid.~
== BC0PAINA ~The witch said many things about you.~
== BVALYGA ~Why are you bringing this up, Pai'Na?~
== BC0PAINA ~She said she respects the care you have for nature. I expect you to keep it up, for your own sake.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconia1","GLOBAL",0)~ THEN BVICONI C0PainaViconia1
~Dos rul'seloz ussa, tu'rilthiir.~
DO ~SetGlobal("C0PainaViconia1","GLOBAL",1)~
== BC0PAINA ~Spare me your tongue, Viconia.~
== BVICONI ~You do not even understand the dark tongue, mongrel?~
== BC0PAINA ~I do not care to understand you. Drow blood may flow in my veins, but I despise each and every one of your kind.~
== BVICONI ~You are quite pitiful, Pai'Na. Neither human nor drow, inferior in every way.~
== BC0PAINA ~I will let my spiders feed if you dare to continue talking.~
== BVICONI ~Don't overestimate yourself, elg'caress. You would not stand a chance against Shar's power.~
== BC0PAINA ~If you wish to die so badly, then I would be happy to oblige!~
END
+ ~CheckStatLT(Player1,15,CHR)~ + ~No! Stop this right now!~ EXTERN BC0PAINA C0PainaViconia1.1a
+ ~CheckStatGT(Player1,14,CHR)~ + ~No! Stop this right now!~ EXTERN BC0PAINA C0PainaViconia1.1b
++ ~Fight! This should be interesting.~ EXTERN BVICONI C0PainaViconia1.2

CHAIN BC0PAINA C0PainaViconia1.1a
~I'm tired of this dark bitch's provocations. You die now!~
== BVICONI ~How foolish.~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",1)~
EXIT

CHAIN BC0PAINA C0PainaViconia1.1b
~*hiss* My spiders thirst for this bitch's blood, but I will not risk any of them. You may live for now.~
== BVICONI ~Count yourself fortunate, half-breed.~
EXIT

CHAIN BVICONI C0PainaViconia1.2
~As you wish!~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0PaiNaViconiaConflict","GLOBAL",1)~ THEN C0PaiNaP C0PaiNaViconia1.3
~The bitch has said her last words. Enjoy your feast, my children.~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",2) DialogInterrupt(TRUE) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0PaiNaViconiaConflict","GLOBAL",1)~ THEN VICONIP C0PaiNaViconia1.4
~As expected from a half-breed mongrel.~
DO ~SetGlobal("C0PaiNaViconiaConflict","GLOBAL",2) DialogInterrupt(TRUE) JoinParty()~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0PainaYoshimo1","GLOBAL",0)~ THEN BYOSHIM C0PainaYoshimo1
~So, tell me, Pai'Na, does nothing ever make you smile?~
DO ~SetGlobal("C0PainaYoshimo1","GLOBAL",1)~
== BC0PAINA ~I am smiling on the inside at the thought of spiders eating you from the inside out, if that counts.~
== BYOSHIM ~Yes... well, I was considering something... less violent.~
== BC0PAINA ~What is your intent, thief? Why would you care if I smiled or not?~
== BYOSHIM ~Because there is no sight more depressing than a miserable lady.~
== BC0PAINA ~I could show you a few, if you don't mind suffering for the experience.~
EXIT

// PC talks

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",0)
TimeGT(DAWN_START)
TimeLT(DUSK_END)
AreaType(OUTDOOR)~ THEN BC0Paina p1
~Curses! It's been so long since I've seen the light... it's blinding!~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",1)~
END
++ ~It's not that bad.~ + p1.1
++ ~How long have you lived underground?~ + p1.2
++ ~Do you want to find some shade?~ + p1.3
++ ~I don't have time to talk about the sun right now, Pai'Na.~ + p.0

APPEND BC0Paina

IF ~~ p.0
SAY ~Hmph. As you wish.~
IF ~~ EXIT
END

IF ~~ p1.1
SAY ~That's easy for you to say. When you have lived most of your life underground, your perspective may change.~
IF ~~ + p1.4
END

IF ~~ p1.2
SAY ~Too long. It's enough time to have forgotten when I last left my sanctuary.~
IF ~~ + p1.4
END

IF ~~ p1.3
SAY ~No. I'm not that weak, but I would rather travel by night, if possible.~
IF ~~ + p1.4
END

IF ~~ p1.4
SAY ~Hmph. Had you not offered, I would not have even considered leaving my sanctuary for at least another several years. I suppose I have you to thank for my current suffering.~
++ ~You're welcome.~ + p1.5
++ ~I'm sorry?~ + p1.5
++ ~If you don't like it, you can always leave.~ + p1.6
++ ~We've talked enough. Let's move on.~ + p.0
END

IF ~~ p1.5
SAY ~(She rolls her eyes disdainfully.)~
= ~Whatever. I will get used to it eventually. Now hurry up and just do your job leading.~
IF ~~ EXIT
END

IF ~~ p1.6
SAY ~Do you really think a few moments in the blazing sun is enough to scare me into hiding again? You underestimate me, <CHARNAME>.~
IF ~~ + p1.5
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",1)~ THEN BC0Paina p2
~A question for you, <CHARNAME>. Why did you bring me with you? Surely there are other fools that would have served better for this quest of yours.~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",2)~
END
++ ~I thought you seemed lonely in the sanctuary.~ + p2.1
++ ~You're a skilled healer, somebody that could be a great asset.~ + p2.2
++ ~To be honest, I'm not so sure right now either.~ + p2.3
++ ~We haven't the time to talk, Pai'Na.~ + p.0

APPEND BC0Paina

IF ~~ p2.1
SAY ~So it was pity that brought you to take me along? I don't want your pity. I was satisfied in my sanctuary with my spiders' company.~
++ ~Then why did you agree to come?~ + p2.4
++ ~Fine. Then I admit I wanted you along for your skills.~ + p2.2
++ ~Whatever. Let's just carry on.~ + p.0
END

IF ~~ p2.2
SAY ~Yes... my skills. I suppose you would be hard pressed to find another with my abilities.~
IF ~~ + p2.4
END

IF ~~ p2.3
SAY ~Hmph, I didn't expect a satisfactory answer from you anyways. I was merely curious.~
IF ~~ + p2.4
END

IF ~~ p2.4
SAY ~If you must know, I chose to join you because it was not my choice to live in a cocoon in the underground of this city, surrounded by tombs and bothered by the dead.~
= ~But... as a half-drow in a city plagued with prejudiced fools, there are few places of safety available to me. Where you found me was one of them.~
= ~It is *not* a pleasant place to live, as you can deduce. However, it was a convenient place, close to my charges, as it is my duty to protect and care for them.~
++ ~You speak of your duty often... but how did you become a hivemaster?~ + p2.5
++ ~So you lived in a filthy underground cavern for years to care for some spiders?~ + p2.6
++ ~All right, I've heard enough. We've got things to do.~ + p.0
END

IF ~~ p2.5
SAY ~I do not believe I gave you permission to ask such a personal question.~
= ~Bah, it doesn't matter. Perhaps you are unaware, but drow, even half-drow, have an affinity with spiders. I grew up amongst them. They are as family to me.~
IF ~~ + p2.7
END

IF ~~ p2.6
SAY ~Watch your tone. The spiders are as though family to me, and insulting them is to insult my honor. I will let you slide this time, but do not expect the same twice.~
IF ~~ + p2.7
END

IF ~~ p2.7
SAY ~I repeat: my spiders are as family to me. And as long as I tolerate your company, you will respect them as such. Do you understand?~
++ ~All right, I get it.~ + p2.8
++ ~They're just spiders.~ + p2.9
++ ~Whatever. Let's just stop talking about this.~ + p.0
END

IF ~~ p2.8
SAY ~Good.~
IF ~~ + p2.10
END

IF ~~ p2.9
SAY ~They are *not* just spiders. Perhaps you'd change your tune if I gave them free reign over your body while you slept.~
IF ~~ + p2.10
END

IF ~~ p2.10
SAY ~Enough. I'm tired of this small talk. We should continue.~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",2)~ THEN BC0Paina p3
~I have heard you called a Bhaalspawn. What does that mean?~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",3)~
END
++ ~You've never heard of Bhaal before?~ + p3.1
++ ~I'm the child of Bhaal, the dead god of murder.~ + p3.2
++ ~It, uh, doesn't mean anything.~ + p3.3
++ ~I don't feel like explaining it.~ + p.0

APPEND BC0Paina

IF ~~ p3.1
SAY ~No, I have not. Is it the same as being called drow-spawn?~
++ ~Not quite. Bhaal is the dead god of murder.~ + p3.2
++ ~Sure. Let's go with that.~ + p3.3
++ ~I don't feel like explaining it.~ + p.0
END

IF ~~ p3.2
SAY ~You claim you are the child of a god? I find that difficult to believe.~
= ~It would explain some things, however. I have noticed something unnatural about you.~
++ ~What have you noticed?~ + p3.4
++ ~That's enough talk for now.~ + p.0
END

IF ~~ p3.3
SAY ~Hmph. You seem determined to lie to me, <CHARNAME>. So be it. Keep your secrets.~
IF ~~ EXIT
END

IF ~~ p3.4
SAY ~Your form is that of a <PRO_RACE>, but something about you is not right... It is as though you have a relationship with death. When my charges and I look upon you, a shiver runs down my spine.~
++ ~It sounds like a load of nonsense.~ + p3.5
++ ~What else do you see?~ + p3.6
++ ~That's interesting, but we really need to get going now.~ + p.0
END

IF ~~ p3.5
SAY ~Think of it what you will, but I would take it as a warning. There is something monstrous in you, <CHARNAME>, and it desires to come out. Be careful not to put me at risk when it happens.~
IF ~~ EXIT
END

IF ~~ p3.6
SAY ~Only this: there is something monstrous in you, <CHARNAME>, and it desires to come out. Be careful not to put me at risk when it happens.~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",3)
AreaType(CITY)~ THEN BC0Paina p4
~Do you see how the fools look at me, <CHARNAME>? It's sickening.~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",4)~
END
++ ~They're just afraid of you.~ + p4.1
++ ~Just ignore them. They won't do anything while I'm around.~ + p4.2
++ ~Don't come complaining to me.~ + p.0

APPEND BC0Paina

IF ~~ p4.1
SAY ~(snort) Afraid? I haven't given them anything to be afraid of yet.~
IF ~~ + p4.3
END

IF ~~ p4.2
SAY ~I don't need your protection, <CHARNAME>. I can't say the same of these humans, though.~
IF ~~ + p4.3
END

IF ~~ p4.3
SAY ~If it's not fear, then it is something else. Something... disgusting. It makes me want to gouge their eyes out.~
++ ~Maybe they're attracted to you.~ + p4.4
++ ~I agree. It's disgusting.~ + p4.5
++ ~Right. Let's end this chat now.~ + p.0
END

IF ~~ p4.4
SAY ~I'm not amused by your attempt at humor, <CHARNAME>. I have no interest in these humans' banal 'attractions'.~
IF ~!Gender(Player1,MALE)~ + p4.5
IF ~Gender(Player1,MALE)~ + p4.6
END

IF ~~ p4.5
SAY ~Enough. I tire of this.~
IF ~~ EXIT
END

IF ~~ p4.6
SAY ~That extends to you, <CHARNAME>. You have proven to be... somewhat less of a fool than other city-dwellers I've met, hence I've allowed you to live so long, but try anything, and you'll regret it.~
IF ~~ + p4.5
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",4)~ THEN BC0Paina p5
~You mentioned that you are the child of a dead god. I doubt that said god bothered with your upbringing.~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",5)~
END
++ ~No. I was raised by a foster father.~ + p5.1
++ ~Did you have any family?~ + p5.2
++ ~I do not want to talk about family.~ + p.0

APPEND BC0Paina

IF ~~ p5.1
SAY ~Hmm. So you were raised by one not of your blood.~
++ ~What about you? Did you grow up with your family?~ + p5.2
END 

IF ~~ p5.2
SAY ~My childhood was not unlike your own. I only know a little of my human mother, and less of my father. I was raised in the forests of Tethyr, by a forest witch.~
++ ~Was she the one who taught you to work with spiders?~ + p5.3
++ ~What do you know of your mother?~ + p5.4
++ ~What do you know of your father?~ + p5.5
++ ~That's interesting, but we must be going now.~ + p.0
END

IF ~~ p5.3
SAY ~Yes, she was. Congratulations for coming to that answer by yourself.~
= ~The witch- who was nameless, do not ask me her name- showed me the ways of the hivemaster, how to communicate with insects and spiders, and etched into my mind the duty of protecting the most fragile children of nature. That was the only lesson I have cared to remember.~
++ ~What happened to the witch?~ + p5.6
++ ~What do you know of your mother?~ + p5.4
++ ~What do you know of your father?~ + p5.5
++ ~That's interesting, but we must be going now.~ + p.0
END

IF ~~ p5.4
SAY ~She was a human slave from a surface raid by the drow. My father, likely some pitiful house soldier, raped and impregnated her then abandoned her to death.~
= ~My mother escaped back to the surface by some miracle. The witch who raised me helped her give birth to me before she died.~
++ ~What happened to the witch?~ + p5.6
++ ~That's interesting, but we must be going now.~ + p.0
END

IF ~~ p5.5
SAY ~I only know my thoughts of him- a pathetic, weak coward whom abused a woman weaker than him to satisfy his worthless existence. As for my mother...~
IF ~~ + p5.4
END

IF ~~ p5.6
SAY ~(shrug) She may still be alive now, for all I know, or she may have passed away. I'm not sure if she is even human, but I left her once I came of age, and never returned.~
++ ~Why did you leave her?~ + p5.7
++ ~All right. Let's get going.~ + p5.8
END

IF ~~ p5.7
SAY ~Because...~
= ~Because I was tired of her, as I may tire of your company if you keep asking such tedious questions.~
= ~This conversation is over.~
IF ~~ EXIT
END

IF ~~ p5.8
SAY ~Yes, let's. I'm getting tired of this conversation.~
IF ~~ EXIT
END
END