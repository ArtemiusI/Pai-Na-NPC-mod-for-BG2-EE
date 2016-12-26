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
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAerie2","GLOBAL",0)~ THEN BAERIE C0PainaAerie1
~P-Pai'Na... you lived under the Athkatlan cemetary, didn't you? Wasn't it... lonely?~
DO ~SetGlobal("C0PainaAerie2","GLOBAL",1)~
== BC0PAINA ~Why would you care?~
== BAERIE ~I... I just wanted to know. When I was still being treated like a... an exhibition, back at the circus, it was like torture... but it wasn't the pain. It was the feeling of being completely alone, with no one that treated me like a- a person.~
== BC0PAINA ~*pfft* I have no notion of loneliness. My spiders, my kin, keep me company always.~
== BAERIE ~I- I guess that's pretty nice, even if it's a little creepy. I'm almost envious that you can keep your friends so close no matter where you go.~
== BC0PAINA ~What is your point, wingless elf?~
== BAERIE ~I just thought we could be... be friends, since we're already companions under <CHARNAME>'s leadership.~
== BC0PAINA ~And why would I possibly desire such a thing?~
== BAERIE ~Y-you don't have to agree right now. Maybe you can get used to the idea. I-I'm always willing to talk, if you ever need an ear.~
== BC0PAINA ~Hmph. I shall... keep that in mind.~
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
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAnomen2","GLOBAL",0)~ THEN BANOMEN C0PainaAnomen2
~I believe your primitive lifestyle is a cause of your lack of faith and proper education, Pai'Na. For your own good, I suggest you discover both while you have time.~
DO ~SetGlobal("C0PainaAnomen2","GLOBAL",1)~
== BC0PAINA ~*snort* I'm willing to bet I have more knowledge than you, at any rate.~
== BANOMEN ~Do you now? And what knowledge do you claim to have, then?~
== BC0PAINA ~I am a master of poisons and herbology. I've read books from my master on Tethyrian history, tedious as they were, and... I make my own clothes. You know how to shout very loudly and swing a lump of metal on a stick. What else, hmm?~
== BANOMEN ~Knights of the Order are tested as much in mind as in body. I have had professional tutors on the various faiths of the realms, their portfolios, and all else.~
== BC0PAINA ~Oh, yes. You tin-heads are able to bring faith into something as simple as a *chamber pot*. How very helpful in this life that we spend killing people.~
== BANOMEN ~I... how dare... you are trying to avoid the topic with petty insults!~
== BC0PAINA ~Well, it's good that you can figure that out, at least.~
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
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCernd2","GLOBAL",0)~ THEN BCERND C0PainaCernd2
~Perhaps other druids may scold you for specializing in protecting and nurturing the arachnid commune, Pai'Na, but I will not. Nature has need of those of your ability as much as any other.~
DO ~SetGlobal("C0PainaCernd2","GLOBAL",1)~
== BC0PAINA ~I don't care.~
== BCERND ~I did not imply that you should. You serve Nature regardless of your own goals. That is all that matters.~
== BC0PAINA ~Well, in that case, you won't mind if I don't bother to hear any more of this. You remind me too much of the witch.~
== BC0PAINA ~"You are a servant of Nature. You serve a role in the cycle, insignificant though it may seem, blah, blah." I do what I see fit.~
== BCERND ~Fair enough. Your loyalty to your role is plain to see, though you may deny it.~
EXIT

CHAIN 
IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCernd3","GLOBAL",0)~ THEN BC0PAINA C0PainaCernd3
~Hngh...~
DO ~SetGlobal("C0PainaCernd3","GLOBAL",1)~
== BCERND ~Is there something you need, Pai'Na? You have been looking at me for some time, with that very frustrated expression. Are you not well? No, you are an accomplished healer. Surely you would have tended to yourself already. What ails you?~
== BC0PAINA ~Grr... no. No, there is nothing.~
== BCERND ~I see.~
== BC0PAINA ~...~
== BCERND ~Hmm. Incidentally, I have heard that pine sap once heated makes for a strong protector against water when applied to other objects.~
== BC0PAINA ~Yes. I- *cough* I knew that. I didn't ask.~
== BCERND ~Certainly. After all, you have been tutored well enough to survive on your own for many years. Perhaps the knowledge merely slipped your mind last night, when you were seeking a way to shield your spiders from the rain.~
== BC0PAINA ~I would have figured it out- I mean, remembered it, eventually.~
== BCERND ~I am sure you would have. However, I am always here to help.~
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
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaEdwin2","GLOBAL",0)~ THEN BEDWIN C0PainaEdwin2
~(Hmm... doubtful that she will be willing, but I have precious little time to spare, so I have little choice to ask.) You there.~
DO ~SetGlobal("C0PainaEdwin2","GLOBAL",1)~
== BC0PAINA ~...~
== BEDWIN ~Ahem. Do you hear me, half-drow?~
== BC0PAINA ~...Hmmm...~
== BEDWIN ~Listen to me, you damn spider-monkey!~
== BC0PAINA ~Gnh... what?!~
== BEDWIN ~(Now, what was it I was to say... ah, yes!) I must ask something of you, druid.~
== BC0PAINA ~I was in communication with my charges. You had better have distracted me for good reason, wizard.~
== BEDWIN ~Oh, yes, very good reason... I must have a sample of your spider venom and spider silk. They are valuable spell components that I am in short supply of.~
== BC0PAINA ~And why, pray tell, would I give any to you?~
== BEDWIN ~This is for the good of the group! Are you so moronic that you cannot see the value in my ability to cast my magic? Without my full power, this ragtag band will surely perish within the hour!~
== BC0PAINA ~Rrgh... and?~
== BEDWIN ~And... er, because I am asking politely?~
== BC0PAINA ~...~
== BEDWIN ~...~
== BC0PAINA ~...~
== BEDWIN ~...well?~
== BC0PAINA ~Fine. It's amusing to watch you beg. Take it and get out of my sight... reprobate.~
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
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHaerDalis2","GLOBAL",0)~ THEN BHAERDA C0PainaHaerDalis2
~So, my dark widow...~
DO ~SetGlobal("C0PainaHaerDalis2","GLOBAL",1)~
== BC0PAINA ~Stop. Shut. Up.~
== BHAERDA ~My, such barbs that you spit towards this sparrow! No songs of poetry for you this time, I swear to you.~
== BC0PAINA ~Grr... what do you want?~
== BHAERDA ~I had only a question, born out of simple curiosity - which, I wonder, is more venomous... your spiders, or your sharp tongue and wit?~
== BC0PAINA ~If you're that curious, I could always demonstrate... not that you'd live to appreciate it. Well then, bard, whose poison would you care to try first... my spiders', or mine?~
== BHAERDA ~I fear your poison is a touch too strong for my tastes, though if 'twere that which lies upon your tongue and lips that I were to taste...~
== BC0PAINA ~GET OUT OF MY SIGHT!~
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
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaImoen2","GLOBAL",0)~ THEN BC0PAINA C0PainaImoen2
~You annoy me.~
DO ~SetGlobal("C0PainaImoen2","GLOBAL",1)~
== BIMOEN2 ~Huh?~
== BC0PAINA ~I said you annoy me. I suggest you cease before you suffer an agonizing death.~
== BIMOEN2 ~I haven't done anything to you, Pai! Why are you being mean?~
== BC0PAINA ~I know you put the beetles in my bedroll.~
== BIMOEN2 ~...Oh.~
== BC0PAINA ~Yes. "Oh."~
== BIMOEN2 ~Ha, ahaha... I, uh, thought you'd like it, with the spiders and all... it's like a surprise midnight snack, right?~
== BIMOEN2 ~Er... my mistake?~
== BC0PAINA ~Maybe I'll do the same to you tonight and see how *you* like it.~
== BIMOEN2 ~*sigh* I guess I had this coming.~
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
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJaheira1","GLOBAL",0)
GlobalGT("Chapter","GLOBAL",2)~ THEN BJAHEIR C0PainaJaheira2
~Is it true, Pai'Na? You were acquainted with Bodhi before you met <CHARNAME>?~
DO ~SetGlobal("C0PainaJaheira1","GLOBAL",1)~
== BC0PAINA ~Maybe. You wouldn't me wrong to say we were next-door neighbors, so to speak. Don't ask me what I know of her, though. I know nothing.~
== BJAHEIR ~I had no such intention, but... why did you not give us such important information when we met? It would have been helpful to <CHARNAME>.~
== BC0PAINA ~I was not aware it was relevant in anyway. Besides, telling you I was familiar with a vampire hardly makes a good first impression.~
== BJAHEIR ~True, but even when you knew everything about <CHARNAME>'s goals, you kept silent. How can we trust you any more now than if you had been honest from the beginning?~
== BC0PAINA ~I'm not around to wax exposition like some people. I'm here because <CHARNAME> knows I'm good at what I do. Why <PRO_HESHE> keeps a talkative nag like you around is the real question.~
== BJAHEIR ~So be it, you seem content with tossing immature insults at me for bringing this up. We will talk no further of this.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJan1","GLOBAL",0)~ THEN BJAN C0PainaJan1
~So you like spiders, do you, lass? Surprisingly, so do I!~
DO ~SetGlobal("C0PainaJan1","GLOBAL",1)~
== BC0PAINA ~*snort* I am glad to know it.~
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
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKeldorn2","GLOBAL",0)~ THEN BKELDOR C0PainaKeldorn2
~You have dedication, Pai'Na. Have you ever considered using it for greater causes?~
DO ~SetGlobal("C0PainaKeldorn2","GLOBAL",1)~
== BC0PAINA ~Such as screaming the name of some bodiless entity while I cut down my enemies? Pass.~
== BKELDOR ~Do you claim to hold no allegiance to any deity? I had thought that druids worshipped the gods of nature, just as any other servant of faith.~
== BC0PAINA ~Hmph. I have no interest in such matters. Perhaps some great power grants me my magic, but I will not kneel and mumble words in their name.~
== BC0PAINA ~The witch that taught me worshipped Silvanus. Always with the 'Oakfather this, Oakfather that', I got tired of it. I am loyal only to myself and my spider-kin.~
== BKELDOR ~So you say, but I pray that age will grant you greater wisdom.~
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
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKorgan2","GLOBAL",0)~ THEN BC0PAINA C0PainaKorgan2
~*sniff* Rank, musty, and doubtlessly filled with maggots... no doubt my children would love to make a nest of that tangle you call a beard, dwarf.~
DO ~SetGlobal("C0PainaKorgan2","GLOBAL",1)~
== BKORGAN ~They'd be welcome ter try an' move in, but I warn ye, drowling, ye'll be mournin' yer precious children by day's end.~
== BC0PAINA ~*Half*-drow. Don't get it wrong again, knee-high.~
== BKORGAN ~*belch* Ah, go hang yerself on yer spider-silk, gray-skin.~
== BC0PAINA ~Sleep lightly, stump. You won't like it when my spiders build a nice, silky home in that beard. Perhaps you'll feel them crawling in your mouth as you make that revolting snore of yours. Skitter skitter...~
== BKORGAN ~Quit that, ye skinny gray wench! Ar, I'll be doin' the watch fer tonight, <CHARNAME>. Can't have this half-drow spider-kisser catchin' me unawares.~
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
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMazzy1","GLOBAL",1)~ THEN BC0PAINA C0PainaMazzy2
~Are you *certain* you will not reconsider, halfling?~
DO ~SetGlobal("C0PainaMazzy1","GLOBAL",2)~
== BMAZZY ~No, I am quite certain that I do not want spiders living in my hair, Pai'Na! Though I mean no offense to you, of course.~
== BC0PAINA ~Such a shame. I had thought you would appreciate spiders. Why, your head even looks like one.~
== BMAZZY ~You think... my hair looks like a spider?~
== BC0PAINA ~Mayhap a few too many legs, but my kin certainly can see the appeal.~
== BMAZZY ~Enough! *shudder* Please, enough... you are surely going to give me nightmares.~
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
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMinsc2","GLOBAL",0)~ THEN BMINSC C0PainaMinsc2
~Boo? Boo, where are you?~
DO ~SetGlobal("C0PainaMinsc2","GLOBAL",1)~
== BC0PAINA ~*sigh* Great. What's wrong with the great buffoon now?~
== BMINSC ~Pai'Na! This is terrible! Boo has... he has vanished!~
== BC0PAINA ~Vanished? What, into a puff of smoke? And what has this got to do with me?~
== BMINSC ~Well, Boo was saying to Minsc, one day, that... mm...~
== BC0PAINA ~Grr... what?~
== BMINSC ~Boo was... he was always telling Minsc how scared he was that Pai'Na's spider friends would eat him. Minsc assured Boo they wouldn't do such a thing, but...~
== BC0PAINA ~Oh, of all the ridiculous things I've ever... don't you even try to pin this on my- what's that in my hair? Gah, it's moving!~
== BMINSC ~Oh! Boo! He is on your head, Pai'Na!~
== BC0PAINA ~Wh-what?! G-get it out of my hair at once before I loose a tarantula on it!~
== BMINSC ~Come back here, you! Naughty Boo! You do not hide in our friends' hair and scare Minsc like this!~
== BC0PAINA ~Grr... little bugger must have gotten into my pack then ran from my spiders into my hair! They should have devoured it whole! If I find a single hamster dropping, I swear...~
== BMINSC ~Pai'Na? Boo, I think you have made her angry...~
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
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNalia2","GLOBAL",0)~ THEN BNALIA C0PainaNalia2
~You're powerful, intelligent and a good healer, Pai'Na. Why are you content to seclude yourself, rather than using your skills to do good?~
DO ~SetGlobal("C0PainaNalia2","GLOBAL",1)~
== BC0PAINA ~Why do I have to? I'm happy to leave others alone if they leave me alone. Being a do-gooder only brings trouble.~
== BNALIA ~That's a strange thing to say, since you seem happy travelling with us at present time.~
== BC0PAINA ~Hmph. We all need some fresh air once in a while. Besides, it's <CHARNAME> who chooses what we do. I'm just here to throw some magic around and gorge my children on the bodies we leave behind.~
== BNALIA ~And you're perfectly satisfied with that? You're not the slightest bit interested the good we do?~
== BC0PAINA ~I only think about what a bother this all is. I must risk my kin for the sake of people who would trample them without a second thought. Is that fair to me?~
== BNALIA ~Then why do you stay? It's not as though you need us, and I'm not sure I want help from someone like you!~
== BC0PAINA ~You're not exactly in a position to make decisions, 'Nalia'. Take your concerns to <CHARNAME> if you must, otherwise do your part, and leave me to mine.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaValygar1","GLOBAL",0)~ THEN BC0PAINA C0PainaValygar1
~I think I recognize you, ranger. You have been to the forest of Tethir before.~
DO ~SetGlobal("C0PainaValygar1","GLOBAL",1)~
== BVALYGA ~I've been there many times. What's your point?~
== BC0PAINA ~You passed the village of the forest witch.~
== BVALYGA ~The old crone that lives in the heart of the forest? I've never spoken to her, nor did I even know that she was a druid.~
== BC0PAINA ~The witch said many things about you.~
== BVALYGA ~Why are you bringing this up, Pai'Na?~
== BC0PAINA ~She said she respects the care you have for nature. I expect you to keep it up, for your own sake.~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaValygar1","GLOBAL",1)~ THEN BVALYGA C0PainaValygar2
~I had no idea the forest witch had any children.~
DO ~SetGlobal("C0PainaValygar1","GLOBAL",2)~
== BC0PAINA ~I was no spawn of hers, ranger. She merely found me in the arms of my dying mother and raised me.~
== BVALYGA ~My condolences for your loss. But I don't think I've ever seen you there.~
== BC0PAINA ~Your eyes clearly aren't as sharp as they seem. I spent much of my time indoors in my studies... or more precisely, the witch kept me inside. You never saw fit to approach the hut?~
== BVALYGA ~No. I suspected the witch was a mage, not a druid, and I wanted nothing to do with her. We barely ever spoke.~
== BC0PAINA ~What a shame. It would have been nice to have someone other than the old crone around once in a while.~
== BVALYGA ~I'm not exactly prime company for small talk.~
== BC0PAINA ~Who said anything about talking? I had... other ideas to amuse myself.~
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
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconia2","GLOBAL",0)~ THEN BVICONI C0PainaViconia2
~Keep your wretched spiders away from me, mongrel.~
DO ~SetGlobal("C0PainaViconia2","GLOBAL",1)~
== BC0PAINA ~What's wrong, oh-so-mighty drow priestess? Frightened of your own goddess's creatures?~
== BVICONI ~I am no worshipper of Lolth, as you well know.~
== BC0PAINA ~Somehow that makes me hate you slightly less. But only slightly.~
== BVICONI ~You may bear hatred for me, but I view it as little more than that of a simple rothe. You are less than nothing to a true drow. Perhaps if you lived among them, you would realize that.~
== BC0PAINA ~The only time I will walk among the drow is when my spiders are feasting upon their corpses.~
== BVICONI ~Keep to your delusions, Pai'Na. Hopefully they will be the death of you one day.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconia3","GLOBAL",0)~ THEN BVICONI C0PainaViconia3
~You are pitiful, so very pitiful, Pai'Na. Viciously denying both sides of your heritage, accepted by neither. Why, all your posturing seems to be little more than overcompensation.~
DO ~SetGlobal("C0PainaViconia3","GLOBAL",1)~
== BC0PAINA ~If you are trying to anger me, you are very, very close to succeeding, bitch.~
== BVICONI ~Oh, indeed I am. You are most amusing when angered, elg'caress. 'Tis almost like watching an umber hulk struggle against its cage.~
== BC0PAINA ~*spit*~
== BVICONI ~Gnh! How... predictably savage of you to do that.~
== BC0PAINA ~Ah, finally, a crack in that insufferably smug exterior of yours. The look suits you.~
== BVICONI ~Do not try to deceive me, Pai'Na. Do you believe I am so ignorant to not notice the poison? I have no fear of your tricks, for I am well aware of them.~
== BC0PAINA ~Some of my tricks. You'll get complacent, and you won't live to regret it.~
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

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0PainaYoshimo2","GLOBAL",0)~ THEN BC0PAINA C0PainaYoshimo2
~What- what is this supposed to be?!~
DO ~SetGlobal("C0PainaYoshimo2","GLOBAL",1)~
== BYOSHIM ~It is amber, my friend, an ancient stone formed from the sap of trees. I purchsed this trinket from a trader in my travels, and only recently found it still in my pack. I thought it might amuse you.~
== BC0PAINA ~There's a spider inside. It's not real, is it? It had better not be real!~
== BYOSHIM ~Of course it is, Pai'Na. The trader claims that the spider is as old as the stone itself, trapped within it eons ago.~
== BC0PAINA ~You're telling me this rock is *thousands* of years old?! As is the spider inside? Oh, this is... grr, I won't say it...~
== BYOSHIM ~No thanks are necessary, my friend. I simply thought you would like it.~
== BC0PAINA ~Nngh, it is... tolerable. I will let you off this time.~
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

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",5)~ THEN BC0Paina p6
~Did I hear this correctly, <CHARNAME>? You visited the Cloakwood?~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",6)~
END
++ ~I did, in fact.~ + p6.1
++ ~I might have. What of it?~ + p6.1

APPEND BC0PAINA

IF ~~ p6.0
SAY ~You are only too ignorant to see the beauty of them. Fine, I will find out for myself one day.~
IF ~~ EXIT
END

IF ~~ p6.1
SAY ~I hear there are spiders within the Cloakwood. Creatures of all different colors, great, magnificent ones, with eyes larger than your head. Is all of that true?~
++ ~I don't know if they were that big or colorful, but yes, there were a few like that.~ + p6.2
++ ~Have you never been to the Cloakwood?~ + p6.3
++ ~Don't ask me about the spiders. I have enough nightmares of them. *shudder*~ + p6.0
END

IF ~~ p6.2
SAY ~I- I wish to... *ahem* I mean to say, you will tell me everything you experienced, from their appearance to the sounds they made.~
= ~If possible, perhaps even the length of their legs, their eating habits, the strength and color of their silk...~
++ ~Whoa! Slow down, I can't tell you all of that.~ + p6.3
++ ~You don't mind the fact that I killed them all?~ + p6.4
++ ~Well, let's see. Shall I tell you about the fat lady that commanded them?~ + p6.5
END

IF ~~ p6.3
SAY ~Tell me everything you know. Everything. If I cannot be there, at least I can imagine it.~
++ ~Alright, alright.~ + p6.6
++ ~No thanks. Spiders creep me out.~ + p6.0
END

IF ~~ p6.4
SAY ~You... grr... you were... ignorant. Hopefully you have been enlightened by my presence.~
IF ~~ + p6.3
END

IF ~~ p6.5
SAY ~The spiders were commanded by another being? How curious...~
IF ~~ + p6.3
END

IF ~~ p6.6
SAY ~Good. I will hold you to that. Perhaps you will tell me at night, before we rest.~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",6)~ THEN BC0Paina p7
~Do you ever think of your parents, <CHARNAME>? After all, you were not raised by your kin, just as I wasn't. I can... sympathize.~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",7)~
END
++ ~You, showing sympathy? That's rare.~ + p7.1
++ ~I don't. Gorion was as good a father as any.~ + p7.2
++ ~Sometimes, but I don't know much about them.~ + p7.3

APPEND BC0PAINA

IF ~~ p7.1
SAY ~I am not wholly without emotion, <CHARNAME>. My heart is only half-black, after all. *snort*~
IF ~~ + p7.3
END

IF ~~ p7.2
SAY ~Baffling. My relations with my master was not nearly as close. Perhaps this 'Gorion' of yours was an exceptional case.~
IF ~~ + p7.3
END

IF ~~ p7.3
SAY ~Did they ever leave you a keepsake, I wonder? I was told my human mother carried this drow-crafted ring to the surface along with me.~
++ ~I don't recall ever getting something like that, no.~ + p7.4
++ ~Why would your mother have a drow magical item?~ + p7.5
++ ~Gorion's letter to me said something about my mother... but I lost it when I was captured.~ + p7.4
END

IF ~~ p7.4
SAY ~Pity. I find this trinket gives me some comfort. Even if it were not imbued with powerful magic, I would still keep it.~
= ~I am not the sentimental type, but... it is good to think that she had the strength to save me from the Underdark.~
IF ~~ + p7.5
END

IF ~~ p7.5
SAY ~This ring likely had much to do with her escape, no doubt... she must have stolen it, whether from my... *spit* father or some priestess.~
= ~It is ironic, I suppose. I loathe the drow for tainting my existence with their blood, yet my most precious item is of drow creation. But I... don't care.~
++ ~Your mother took it, so it belonged to her, not the drow.~ + p7.6
++ ~So you respect your mother, then?~ + p7.7
END

IF ~~ p7.6
SAY ~I know that. I am not a fool or a child, <CHARNAME>.~
IF ~~ + p7.8
END

IF ~~ p7.7
SAY ~More than respect. I... admire her. Perhaps if she had lived to raise me, I may have even loved her. She had every right to despise me, a product of the drow that once owned her, but she cared enough to save me for whatever dismal fate awaited me.~
= ~And she did more than care... she had the strength to escape. I would not be here if she did not have her love and strength. How could I not admire that?~
++ ~You're right. I would too.~ + p7.9
++ ~We've talked enough. Let's move on.~ + p7.8
END

IF ~~ p7.8
SAY ~This bores me anyway. Don't we have some errand or other thing to deal with?~
IF ~~ EXIT
END

IF ~~ p7.9
SAY ~Perhaps you're not such a fool after all, <CHARNAME>.~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",7)~ THEN BC0Paina p8
~I've always seen city-dwellers as boorish, lazy buffoons who don't think twice about the ground they step on, but you're not so bad, <CHARNAME>.~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",8)~
END
+ ~Class(Player1,DRUID_ALL)~ + ~I am a druid too, you know.~ + p8.1
+ ~Class(Player1,RANGER_ALL)~ + ~I am a ranger, you know.~ + p8.1
++ ~Well, that's good to hear.~ + p8.2
++ ~Have I changed your thoughts on 'city-dwellers' as a whole, though?~ + p8.3

APPEND BC0PAINA

IF ~~ p8.1
SAY ~Perhaps, but you seemed too comfortable around the louts of the city for me to trust you when we met. That has changed. A little.~
IF ~~ + p8.2
END

IF ~~ p8.2
SAY ~I've almost started to find your company tolerable.~
++ ~Aaaaand there goes the mood again.~ + p8.4
++ ~Can't you make two full sentences without tossing a barb my way?~ + p8.5
END

IF ~~ p8.3
SAY ~No.~
++ ~Fair enough.~ + p8.2
++ ~That's a shame.~ + p8.2
END

IF ~~ p8.4
SAY ~I would hardly be myself if I acted otherwise.~
IF ~~ EXIT
END

IF ~~ p8.5
SAY ~No. Maybe... hmm, no. Besides, I just gave you a compliment, ingrate.~
++ ~Case and point.~ + p8.4
++ ~THAT was supposed to be a compliment?~ + p8.6
++ ~Thank you.~ + p8.7
END

IF ~~ p8.6
SAY ~Take it as it is. You should know I rarely give them.~
IF ~~ EXIT
END

IF ~~ p8.7
SAY ~D-don't thank me. I don't even know how to respond to that.~
++ ~How about 'you're welcome'?~ + p8.8
++ ~Don't. It's fine.~ + p8.9
END

IF ~~ p8.8
SAY ~...no.~
IF ~~ EXIT
END

IF ~~ p8.9
SAY ~Pfeh.~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",8) RealGlobalTimerExpired("C0PaiNaTalkTimer","GLOBAL")~ THEN C0PAINAJ p9
~I will end you if you tell this to anyone, but I admit... I am having difficulty comprehending everything that has happened. The mage... Irenicus, he took your soul from you? Is that true?~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",9)~
END
++ ~That's what he said.~ + p9.1
++ ~Why does this interest you, Pai'Na?~ + p9.2
++ ~I have no interest in discussing my soul with you, Pai'Na.~ + p9.0

APPEND C0PAINAJ

IF ~~ p9.0
SAY ~Fine. I can't say I expected otherwise.~
IF ~~ EXIT
END

IF ~~ p9.1
SAY ~What is that like, I wonder? Do you feel something lacking inside? Or do you feel exactly the same, and you are simply going on that madman's word?~
++ ~He may have been lying, but I don't think so. My Bhaalspawn powers are gone.~ + p9.3
++ ~What reason would he have to lie? It's not like he expects me to live.~ + p9.4
++ ~I'm not interested in talking about my soul, not until I get it back.~ + p9.0
END

IF ~~ p9.2
SAY ~Look around you, <CHARNAME>. Do you see any other distractions around?~
IF ~~ + p9.1
END

IF ~~ p9.3
SAY ~It is a simple matter to seal off minor magical talents, from what my master taught me. Still... I suppose there is no reason for him to lie.~
IF ~~ + p9.5
END

IF ~~ p9.4
SAY ~True enough. Although he may have been intending for you to die in despair. I admit, his cruelty is... something else entirely. It's almost as though he has no empathy for the living at all.~
IF ~~ + p9.5
END

IF ~~ p9.5
SAY ~I have torn things from within others before, but those were... physical. And very messy. I could not even think of how one goes about tearing a soul from a body. And you're somehow still alive for the experience. This is fascinating.~
++ ~That's disgusting, Pai'Na.~ + p9.6
++ ~You think you'd like to learn how to do it?~ + p9.7
++ ~Stop talking. Now.~ + p9.0
END

IF ~~ p9.6
SAY ~*snort* Trust me, you don't want to know the things my master told me. Besides, I assumed you'd prefer to think of anything besides our current situation.~
IF ~~ + p9.8
END

IF ~~ p9.7
SAY ~Hmm. No, I don't think so. If it doesn't kill whoever I do it to, and they come seeking me for vengeance, what's the point? I'm not as desperate as Irenicus.~
IF ~~ + p9.8
END

IF ~~ p9.8
SAY ~Regardless, for your own good, <CHARNAME>, try not to drop dead. You've only started to become interesting, after all. It'd be such a shame to lose you.~
++ ~Why, Pai'Na, are you showing concern for me?~ + p9.9
++ ~Gee, thanks.~ + p9.10
END

IF ~~ p9.9
SAY ~Don't be absurd. I expect you, who dragged me along for this mess, to be the one to get me out of it. Can't do that if you're spider-food, can you?~
= ~I can't imagine your soulless husk would even make a nourishing meal.~
IF ~~ + p9.10
END

IF ~~ p9.10
SAY ~Either way, it's in both our interests to survive, so I will... do my best, I suppose, to ensure that you make it. But do not expect me to smile while doing so.~
++ ~Thank you. Really.~ + p9.11
++ ~I still think you care.~ + p9.12
END

IF ~~ p9.11
SAY ~Oh... shut up.~
IF ~~ EXIT
END

IF ~~ p9.12
SAY ~I...~
= ~I don't. End of story.~
IF ~~ EXIT
END
END

CHAIN IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaPCTalk","GLOBAL",10)
AreaType(OUTDOOR)
!TimeOfDay(NIGHT)
RealGlobalTimerExpired("C0PaiNaTalkTimer","GLOBAL")~ THEN C0PAINAJ p10
~I cannot believe I am saying this, but I have never been so glad to see the sky again.~
DO ~SetGlobal("C0PaiNaPCTalk","GLOBAL",10)~
= ~Bah! Just as I had gotten used to the light, our experience trudging through the underground has brought back its glare. This is entirely your fault, <CHARNAME>.~
END
++ ~Whatever you say.~ + p12.1
++ ~Didn't you enjoy any of that?~ + p12.2
++ ~Oh, shut up already.~ + p12.0

APPEND C0PAINAJ

IF ~~ p12.0
SAY ~Hmph.~
IF ~~ EXIT
END

IF ~~ p12.1
SAY ~Oh, grow some backbone, <CHARNAME>. Or did Irenicus drain that out of you as well?~
IF ~~ + p12.3
END

IF ~~ p12.2
SAY ~Perhaps you are not aware of this. Perhaps I have never mentioned it, and neglected to mention it all this time, but I will say it now, so that this knowledge will seep into your empty mind.~
= ~I loathe drow. Each and every one of them.~
IF ~~ + p12.3
END

IF ~~ p12.3
SAY ~*sigh* I am... fatigued. Fatigued and frustrated. Perhaps I have even gone too far this time, though I will not apologize.~
= ~My heritage shaped my life, and in ways I am not wholly fond of. I will admit that. Though I spit venom at the drow often, I... do not think of them most of the time. It usually results in wishing to poison the nearest living being.~
= ~Travelling through the Underdark was... horrible. The drow are every bit what I imagined of them, and worse in many ways.~
++ ~You're not so different from them, to be frank.~ + p12.4
++ ~I'm sorry.~ + p12.5
++ ~Well, we're out of there now.~ + p12.6
END

IF ~~ p12.4
SAY ~What?! You... y-you...~
= ~You... *sigh* you are not wrong. Perhaps that is what frustrates me the most.~
= ~Damn you, <CHARNAME>. Why do you always have to be right? Just... shut up. Shut up and do not speak to me for now.~
IF ~~ EXIT
END

IF ~~ p12.5
SAY ~Why? Do you truly care, <CHARNAME>? Or are you just trying to shut me up?~
IF ~~ + p12.6
END

IF ~~ p12.6
SAY ~Hmph, whatever. If you are trying to lighten my mood, I... appreciate it, for what it is worth. This must be the reason I'm still willing to stay around.~
IF ~~ EXIT
END

END