BEGIN BC0PAI25

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAerieToB","GLOBAL",0)~ THEN BAERIE25 C0PAINAAERIEToB
~Do you still feel like... you don't belong, Pai'Na? I'm starting to think you've... accepted us.~
DO ~SetGlobal("C0PainaAerieToB","GLOBAL",1)~
== BC0PAI25 ~What? Such nonsense. I've thought no such thing.~
== BAERIE25 ~Are you sure? You don't keep as much of a distance from us like you used to. You even sat with me last evening while we ate.~
== BC0PAI25 ~T-that was... you were the one sitting alone, not me. I did that out of pity.~
== BAERIE25 ~*giggle* You're actually kind-hearted inside, aren't you? Maybe you weren't at first, but making friends can do that for you. It wouldn't hurt to admit it, though.~
== BC0PAI25 ~*snort* I'll do no such thing, Aerie.~
== BAERIE25 ~Oh!~
== BC0PAI25 ~Hmm... what?~
== BAERIE25 ~Y-you just called me by my name.~
== BC0PAI25 ~It... it was a slip of the tongue.~
== BAERIE25 ~Heehee... of course. But I suppose that means we really can become friends now.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaAnomenToB","GLOBAL",0)~ THEN BANOME25 C0PAINAANOMENToB
~I wonder, Pai'Na. If you truly serve no deity, no greater purpose as you claim, then what drives you onward? Surely, without a purpose, you would have no motive to go on.~
DO ~SetGlobal("C0PainaAnomenToB","GLOBAL",1)~
== BC0PAI25 ~I have a purpose, tin-head. I simply doubt it'd be simple enough for you to comprehend.~
== BANOME25 ~Humor me, at least. I should at least know the motivation of those I travel with.~
== BC0PAI25 ~A bit late for that, don't you think? But, fine, I'll indulge you. It is, first and foremost, my task to protect and nurture the charges under my care. But besides that...~
== BANOME25 ~Yes?~
== BC0PAI25 ~I have grown tired of being... ignorant, shall we say, of the outside world. I would see what your kind call life with my own eyes.~
== BANOME25 ~Fair enough. It is a goal I can sympathize with. I'll not question you about this again.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaCerndToB","GLOBAL",0)~ THEN BCERND25 C0PAINACERNDToB
~You would learn much more, Pai'Na, if you stopped observing me from a distance and simply asked for advice. I am always willing to tutor others in any areas of knowledge I am proficient in.~
DO ~SetGlobal("C0PainaCerndToB","GLOBAL",1)~
== BC0PAI25 ~*snort* Wh-who said anything about needing advice? I was just curious as to whether we did things differently.~
== BCERND25 ~Really now, Pai'Na, I cannot see where your aversion to being tutored comes from. It is far more immature for one such as you, who treats your duty with utmost devotion.~
== BC0PAI25 ~... I had a tutor once in my childhood. Her tasks were... grueling. It was not an enjoyable part of my life.~
== BCERND25 ~And it has no doubt colored your impression of other druids. But I assure you, we are not all the same. I have never been accused of being a harsh teacher by my pupils.~
== BC0PAI25 ~But I'm sure you've been accused of being boring countless times. Fine... if I have no other choice, I will come to you... 'teacher'.~
EXIT

CHAIN 
IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaEdwinToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAEDWINToB
~What? Why are you staring at me, wizard? If it is another sample of venom you require, I have given you more than you deserve already, so...~
DO ~SetGlobal("C0PainaEdwinToB","GLOBAL",1)~
== BEDWIN25 ~Oh, no, by all means, continue to ignore me if that is your will. (Not that you should...)~
== BC0PAI25 ~This is a rare thing. Usually you cannot stop prodding at me for spell components. Whatever you have to say, spit it out lest I tear it from you along with your tongue!~
== BEDWIN25 ~Very well... (Careful words, now...) I have just been considering you ever since we trekked through the dismal tunnels of the Underdark.~
== BC0PAI25 ~Dismal is one description I'll agree with you on. What has that to do with me, exactly?~
== BEDWIN25 ~The darkness was unpleasant, but I cannot deny that the dark elves had a... unearthly charm to them. You are unfortunately only half-blooded, but with that comes a few familiar human features I enjoy.~
== BC0PAI25 ~Tch... I am liking your words less by the minute...~
== BEDWIN25 ~I have no need for you to hear me. (Though you would be a fool not to.) No, all I need is a convenient view of your profile to... examine. Neither of us need say a word to each other.~
== BC0PAI25 ~*hiss* As I thought, your intentions are just like all the other swine! Mark my words, you will regret your gawking, you revolting... wretched... human!~
EXIT

CHAIN 
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHaerdalisToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAHAERDToB
~Bah, this quiet air is quickly growing tiresome even for my preference. You there, bard! Play your instrument.~
DO ~SetGlobal("C0PainaHaerdalisToB","GLOBAL",1)~
== BHAERD25 ~...~
== BC0PAI25 ~Have you gone deaf? Did my words not reach you?~
== BHAERD25 ~My apologies, my dusky widow, but as I recall, you demanded no more from me than utter silence when we last spoke. So, what is this you demand of me now?~
== BC0PAI25 ~Oh, very clever, minstrel. Use my own words against me, will you? Perhaps you'll be more obliged to listen with a bit of venom in your ear.~
== BHAERD25 ~On the contrary, my dear, I would be all too happy to raise a merry tune. 'Tis my calling, after all. But there must be... payment.~
== BC0PAI25 ~Payment?! *hiss* I will regret asking, but what could you possibly wish from me?~
== BHAERD25 ~Hmm, what indeed... perhaps a friendly kiss? A nip of this sparrow's ear? Many of my admirers enjoy that well enough.~
== BC0PAI25 ~*No*.~
== BHAERD25 ~*laugh* Very well, my black widow, I am only teasing. For my service, I think simply saying the magic words will do.~
== BC0PAI25 ~Magic w- gah, I know what you want. Very well - please.~
== BHAERD25 ~Why, you hardly need to ask, my dear!~
== BC0PAI25 ~One day, bard, I will kill you personally, I swear...~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaImoenToB","GLOBAL",0)~ THEN BIMOEN25 C0PAINAIMOENToB
~Hey, y'know, Pai-~
DO ~SetGlobal("C0PainaImoenToB","GLOBAL",1)~
== BC0PAI25 ~What?! What do you want this time, you ninny?~
== BIMOEN25 ~Whoa, cranky! Did you wake up on the wrong side of the bed again? *giggle*~
== BC0PAI25 ~If, by that, you meant woke up to a bed of honey and ants again, then I suppose I did. You'll pay for that, by the way.~
== BIMOEN25 ~Hee-hee. You've got no proof that was me.~
== BC0PAI25 ~I'm sure you'd confess your actions with the right motivation. Along with that time you stole my underclothes, and replaced my herbs with old tea leaves, and put that fake spider in my pack...~
== BIMOEN25 ~Oh, that was great! You should've seen your face when you realized why it wasn't moving! Ha-ha!~
== BC0PAI25 ~To you, that might've been amusing, but it was the most horrifying thing I've ever seen.~
== BIMOEN25 ~Alright, I get it, sorry. No more poking fun of your spider obsession, Pai. By the way, I almost forgot about why I got your attention.~
== BC0PAI25 ~Ngh... what?~
== BIMOEN25 ~Is this... giant spider yours?~
== BC0PAI25 ~Y-you...! Free it this instant!~
== BIMOEN25 ~Sure, sure. But I can't see who else could've possibly hid it under my pillow. This was your way of getting back at me, wasn't it?~
== BC0PAI25 ~...~
== BC0PAI25 ~I hope the sight of her made you scream, at least... bah...~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJaheiraToB","GLOBAL",0)~ THEN BJAHEI25 C0PAINAJAHEIRAToB
~Will you be returning to your home in the forest once our travels are over, Pai'Na?~
DO ~SetGlobal("C0PainaJaheiraToB","GLOBAL",1)~
== BC0PAI25 ~Why should I? There's nothing left for me there.~
== BJAHEI25 ~I thought perhaps, with your mentor's passing, you would fill the role she left behind. It would be a more worthwhile use of your talents than returning to the tombs beneath Athkatla, at least.~
== BC0PAI25 ~I still have many companions left behind there. Besides, what I choose to do beyond this quest is my own business.~
== BJAHEI25 ~Perhaps I have no right to dictate your actions, Pai'Na, but as your senior, I feel compelled to give you advice, so that your talents will ultimately help benefit nature.~
== BC0PAI25 ~I suppose that means I have no obligation to listen, at least?~
== BJAHEI25 ~You may discard my opinion if you so desire, but I doubt you will find your true calling anywhere else than your true home. Think on that while there is still time.~
== BC0PAI25 ~Hmph. I'll... consider it. It may not be such a bad idea to live among nature again...~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaJanToB","GLOBAL",0)~ THEN BJAN25 C0PAINAJANToB
~Say, Pai'Na-~
DO ~SetGlobal("C0PainaJanToB","GLOBAL",1)~
== BC0PAI25 ~Go away.~
== BJAN25 ~Oh, come now, is that any way to treat your favorite gnome?~
== BC0PAI25 ~I have no favorite of your kind, and even if I did, you still would not be considered for that position.~
== BJAN25 ~Hmph, how rude! What could I have possibly done to give you such an aversion to so much looking at me?~
== BC0PAI25 ~What have you *done*? Not enough! With you, it's never enough. Every time I have the misfortune to start speaking with you, you go off on a tirade about turnips, or some obscure relative, or nonsense about hiring my charges, or... gah, why I am even talking to you?~
== BJAN25 ~Well, I suppose I've done all of those once. Maybe twice. And perhaps a few more times. But, this time, I really do just have a brief, honest, innocent question. See my honest smile? You can trust that smile, Pai.~
== BC0PAI25 ~Just say it and get this over with! I wonder for how long your wretched mouth will flap for this time?!~
== BJAN25 ~Would you care for some pickled turnips? It's been a while since our last mealtime, and I thought I heard your stomach growling while we trekked, so...~
== BC0PAI25 ~...~
== BJAN25 ~You've never had some, have you? Would you refuse it without so much as trying a bite?~
== BC0PAI25 ~*growwwl* Ugh! Fine!~
EXIT

CHAIN 
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKeldornToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAKELDORNToB
~You are... well, old knight? No sudden pain since you were last treated, I assume?~
DO ~SetGlobal("C0PainaKeldornToB","GLOBAL",1)~
== BKELDO25 ~I am as well as I can be, Pai'Na. Are you concerned?~
== BC0PAI25 ~Concern? Pah. It would just be partially on me if you were to fall due to insufficient treatment.~
== BKELDO25 ~Ha! Fear not, lass, for should these old bones fail one day, the blame will be mine, not yours.~
== BC0PAI25 ~Don't... say that. You make it sound as though you might die any moment.~
== BKELDO25 ~I fear my time will come soon, give or take a few years. I hope you will think well of me, should you learn of my passing one day.~
== BC0PAI25 ~Shut up, old man... you're not dying under my watch. Not while I still have a say in things.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaKorganToB","GLOBAL",0)~ THEN BKORGA25 C0PAINAKORGANToB
~Spider wench! Over 'ere, there be some cobwebs under me boot an' I'll be needin' help cleanin' 'em off, heh!~
DO ~SetGlobal("C0PainaKorganToB","GLOBAL",1)~
== BC0PAI25 ~Do it yourself, you stunted little troll. I will keep my distance so I may suppress my urge to punish you for defiling a spider's web.~
== BKORGA25 ~Ha! I be jokin' anyhow, lass. I thought ye'd get up 'n mad if I were ter insult yer little children.~
== BC0PAI25 ~Your jokes are as crude as your appearance, dwarf. I see you are still as filthy as ever.~
== BKORGA25 ~I take pride in wearin' me grease an' blood. *belch*~
== BC0PAI25 ~Strange. You embody the worst of city-dwellers, yet I was the first of us to enter a bathhouse. The irony could choke me before your stench did.~
== BKORGA25 ~Ah, keep yer insults comin', girl. I'd miss 'em if ye didn't.~
== BC0PAI25 ~With pleasure, runt.~
== BKORGA25 ~Vermin-lover.~
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMazzyToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAMAZZYToB
~Your stature seems to be a major source of shame for you, halfling. Why would that be?~
DO ~SetGlobal("C0PainaMazzyToB","GLOBAL",1)~
== BMAZZY25 ~I would have you know that I have no such shame, Pai'Na. I cannot imagine why you would think such a thing.~
== BC0PAI25 ~Is that so? So I am meant to be mistaken about your apparent eagerness to face foes far larger than you?~
== BMAZZY25 ~My choice to fight is out of necessity and the protection of others, Pai'Na, including yourself.~
== BC0PAI25 ~Did I suggest otherwise? I was merely calling your insecurity towards your size a mistake.~
== BMAZZY25 ~Once again, Pai'Na, I insist that I have no such insecurities... did you say, 'mistake'?~
== BC0PAI25 ~You heard correctly. A spider may be small in size, but its precision and lethality can fell even a titan. I see you to no different. Among the two-legged, you are the spider. Small, but dangerous.~
== BMAZZY25 ~Well, I cannot say that comparison would be the first to come to my mind, but from you, Pai'Na, I shall consider it a compliment.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaMinscToB","GLOBAL",0)~ THEN BMINSC25 C0PAINAMINSCToB
~Pai'Na, we - Minsc and Boo - have been thinking...~
DO ~SetGlobal("C0PainaMinscToB","GLOBAL",1)~
== BC0PAI25 ~That must be a fresh experience for you. I suppose this has something to do with me?~
== BMINSC25 ~We have talked together about our friend, and Boo has suggested that you should get a hamster.~
== BC0PAI25 ~A ham- what use would I have for a wretched little furry beast?!~
== BMINSC25 ~Boo thinks that Pai'Na has a way with small creatures. He has seen the friendship between Pai'Na and her spiders, and thought maybe a hamster could become a friend as well.~
== BC0PAI25 ~The only purpose I would have for a hamster would be a snack for my children, you lout. Do you even realize how bothersome they are to maintain? You should, given how they appear to be all you think about.~
== BMINSC25 ~What's this? Does Pai'Na have experience in raising little hamster friends?~
== BC0PAI25 ~Gah... I've said too much. My master bred rodents of many breeds as spider food. I had to clean out their droppings with my hands. It was revolting.~
== BMINSC25 ~I see. So Pai'Na can only see hamsters as food. Then that is why you must befriend one of your own, to see them as the mighty little warriors they are!~
== BC0PAI25 ~No! No more talk of... hamsters! Your insanity will be spreading soon!~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNaliaToB","GLOBAL",0)~ THEN BNALIA25 C0PAINANALIAToB
~We've been travelling together for a while now, Pai'Na. I've been wondering if your thoughts on 'city-dwellers' has changed a little. We're not all ignorant boors who don't even look where we step.~
DO ~SetGlobal("C0PainaNaliaToB","GLOBAL",1)~
== BC0PAI25 ~*snort* In any case, I've seen proof that you're wise enough to listen and learn, at least. More would be pushing it.~
== BNALIA25 ~You're not the only one who wishes to change things, you know. We all want to reshape society for the better.~
== BC0PAI25 ~I lost hope in changing the ways of humans long ago. It is enough for me to take care of me and mine.~
== BNALIA25 ~But wouldn't you like a world where your beliefs are heard? Where people will learn to respect life besides their own, including vulnerable animals like those you care for?~
== BC0PAI25 ~That is your optimism speaking for you. I doubt people will change as easily as you order them to. Perhaps when you have the position of power that you seek, then... but that will not be for me. I do what little I can for those I care for. Anything more is wishful thinking.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaSarevokToB","GLOBAL",0)~ THEN BSAREV25 C0PAINASAREVOKToB
~I see there a fresh face among <CHARNAME>'s ill-conceived band. What's your tale, half-drow? Another circus reject that clung on to <CHARNAME>'s heels out of desperation?~
DO ~SetGlobal("C0PainaSarevokToB","GLOBAL",1)~
== BC0PAI25 ~Are you speaking of me or yourself, dead man walking?~
== BSAREV25 ~Ha! Touche, druidess. I have no appropriate response to that. It seems you neither fear nor doubt me, unlike <CHARNAME>'s other associates.~
== BC0PAI25 ~Why should I? I know nothing of you.~
== BSAREV25 ~Nothing? Not of the dominion I held within the Sword Coast until <CHARNAME> put an end to my plans? Nor of the visions of me within <PRO_HISHER> dreams? I'm disappointed that my name did not hold greater influence.~
== BC0PAI25 ~I heard some nonsense involving poisoned iron in the north. Not that I cared about such things. I would have thought of a better plan if I wished to take all those city-dwelling humans down a notch.~
== BSAREV25 ~Would you now? Perhaps you could be kind enough to enlighten me on where my plans went wrong, then.~
== BC0PAI25 ~If I explained my plans, they wouldn't be likely to succeed, would they? Fool.~
== BSAREV25 ~Ha! You are an interesting wench. I think I shall enjoy knowing my new acquaintance...~
EXIT

CHAIN 
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaValygarToB","GLOBAL",0)~ THEN BC0PAI25 C0PAINAVALYGARToB
~Ranger! Do you have the ingredients I asked that you forage for?~
DO ~SetGlobal("C0PainaValygarToB","GLOBAL",1)~
== BVALYG25 ~My name is Valygar, Pai'Na. I would be much more comfortable if you'd refer to me as such. But, aye - I have your fungi and wild herbs, as you requested.~
== BC0PAI25 ~Good. I suppose I should thank you for your assistance.~
== BVALYG25 ~Really? I don't think I hear you thanking others too often, Pai'Na. What makes me so special?~
== BC0PAI25 ~You are among the exceptions to the universal rule of human foolishness. That, from me, is high praise. You're worthy of praise... as well as thanks.~
== BVALYG25 ~Is that so? I can't say I'm comfortable with your attitude towards humans, but I suppose I should be glad you make exceptions at all.~
== BC0PAI25 ~As much as appearances may suggest, I'm not completely heartless. I believe there are humans worthy of respect... the woman that brought me into this world was one such example. You may prove to be another, if you continue to be agreeable and competent.~
== BVALYG25 ~*snort* I suppose I should appreciate that. I aim to please.~
EXIT

CHAIN 
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaViconiaToB","GLOBAL",0)~ THEN BVICON25 C0PAINAVICONIAToB
~...~
DO ~SetGlobal("C0PainaViconiaToB","GLOBAL",1)~
== BC0PAI25 ~...~
== BVICON25 ~Must we glare daggers towards each other until day's end, or shall one of us say something of note for a change? This contest, while amusing at first, bores me now.~
== BC0PAI25 ~Shut up. Your words mean nothing to me.~
== BVICON25 ~We have been across the same bridge again and again. Is there nothing to you but your hatred of me? A tedious life you must live if that is truly the case.~
== BC0PAI25 ~Your kind doomed me to live a ruined life. That alone is enough for me to hate you for life.~
== BVICON25 ~And you believe yourself to be unique in that regard? We have both experienced the Underdark now, have we not, tu'rilthiir? I am no more welcome among my own kind as you are. If your hatred for me is solely towards my dark skin, then you are nothing more than a hypocrite.~
== BC0PAI25 ~So what are you suggesting now? Shall we begin watching each other's backs now? Don't make me laugh.~
== BVICON25 ~I am *suggesting* that we put an end to this infantile behavior. I do not doubt we cannot help but continue to despise each other, but neither of us stand to gain from this.~
== BC0PAI25 ~...bah. You're not worth my hatred, Viconia.~
== BVICON25 ~It seems we have understood a little of each other for a change.~
EXIT

APPEND BC0PAI25

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",0)~ t1
SAY ~All this endless travelling and fighting for our lives went past tiresome long ago. It's a wonder you can still stand any of it, <CHARNAME>.~
++ ~You could always leave, if you're tired of it.~ + t1.1
++ ~The road is where I belong.~ + t1.2
++ ~We don't have time for this right now, Pai'Na.~ + t1.0
END

IF ~~ t1.0
SAY ~Fine. Pretend I said nothing, if that pleases you. I'm sure your head would appreciate a little less thought.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",1)~ EXIT
END

IF ~~ t1.1
SAY ~*snort* And leave poor you to fend for yourself? That'd be far too cruel.~
IF ~~ + t1.3
END

IF ~~ t1.2
SAY ~*snort* You are beyond incomprehensible at times. Is this another affliction of civilized life? But if you say so.~
IF ~~ + t1.3
END

IF ~~ t1.3
SAY ~It's more than just the trouble I'm thinking of. You're preparing to go after your own... brothers and sisters, correct? How does that make you feel?~
++ ~Don't call them that. They're no kin of mine.~ + t1.4
++ ~All I know is that they stand in the way between me and the power that's rightfully mine.~ + t1.5
++ ~I'd rather be done with it all and go back to a peaceful life.~ + t1.6
END

IF ~~ t1.4
SAY ~Whatever you like, but that hardly changes the facts, does it? These are the ones that share your divinity - in other words, your equals.~
IF ~~ + t1.7
END

IF ~~ t1.5
SAY ~Right... that's what all this is about, isn't it? *snort* I suppose one really can do anything, *anything*, for power. Riveting.~
IF ~~ + t1.7
END

IF ~~ t1.6
SAY ~There's no such thing as 'going back', <CHARNAME>. I thought you'd have that hammered into your brain by now. Do you think you can just forget about the divine blood in you?~
IF ~~ + t1.7
END

IF ~~ t1.7
SAY ~Speaking of which, how is that divine blood of yours faring anyway? Did you notice it's grown more... powerful, more present? Or has it all become natural for you?~
++ ~It's stronger, yes, but I can control it, just as I can control the Slayer.~ + t1.8
++ ~What does it matter to you, Pai'Na? I can't imagine you getting concerned.~ + t1.9
++ ~Can we not discuss this?~ + t1.0
END

IF ~~ t1.8
SAY ~Oh, *certainly*. You're quite broad with how you'd define 'control', <CHARNAME>.~
IF ~~ + t1.9
END

IF ~~ t1.9
SAY ~It's not as though you going mad with power you can't control would affect me in any way. But if that 'thing' of yours puts me at risk, well... things won't be pretty. Make sure that doesn't happen, understood?~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",1)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",1)~ t2
SAY ~(Pai'Na is holding strangely shaped bottles in her hands, carefully distilling a vile-looking, viscous black liquid)~
++ ~Having fun?~ + t2.1
++ ~That looks disgusting.~ + t2.1
++ ~(Watch her quietly)~ + t2.2
END

IF ~~ t2.1
SAY ~Ack! Gnh, watch it, you fool. You don't want to know what happens if this stuff goes where it shouldn't.~
IF ~~ + t2.2
END

IF ~~ t2.2
SAY ~Don't distract me, I'm messing with some rather dangerous components. One drop of this in a wound and you'll wish you were dead.~
++ ~Is something like that really necessary?~ + t2.3
++ ~You're working rather hard. I'm surprised you're this motivated.~ + t2.4
END

IF ~~ t2.3
SAY ~Do you want me at my best or not, <CHARNAME>? I could stop my experimenting if you want, but I hardly think you could afford to go without the extra edge.~
IF ~~ + t2.4
END

IF ~~ t2.4
SAY ~You really should be grateful, <CHARNAME>. I would never think of working this hard if I were left to my own devices. I'm only doing this because I'm feeling generous.~
= ~At the same time, this is good practice for me. I'd barely have made any progress if I was still holed up in my old sanctuary. Maybe this 'hands-on experience' is worth something after all.~
++ ~Still trying to deny that you care, I see.~ + t2.5
++ ~I appreciate all the effor you're putting in. Thank you.~ + t2.5
++ ~Well, keep at it. This stuff will come in useful.~ + t2.6
END

IF ~~ t2.5
SAY ~(Her hand twitches in shock, causing a drop of the substance to land on her finger)~
= ~Ack! *hiss* Damn it!~
= ~Agh... grr... that one was your fault, <CHARNAME>, you distracted me!~
++ ~I was trying to give you a compliment.~ + t2.7
++ ~Sorry.~ + t2.8
END

IF ~~ t2.6
SAY ~*snort* I aim to please. Now, unless you've got a stomach of iron, you might want to turn aside. The stench of this process might get... overwhelming.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",2)~ EXIT
END

IF ~~ t2.7
SAY ~W-who was asking? *snort*~
IF ~~ + t2.8
END

IF ~~ t2.8
SAY ~To the Hells with this, I'll finish it later, when there aren't any *bothersome distractions*. Now will you shut it and get a move on?~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",2)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",2)
Global("SaradushSacked","GLOBAL",1)~ t3
SAY ~Two down, three to go. Hmhm, not bad, not bad. You might just make it through after all.~
++ ~Did you doubt me?~ + t3.1
++ ~What of Saradush? You don't have anything to say about that?~ + t3.2
++ ~Well, let's get to it then.~ + t3.0
END

IF ~~ t3.0
SAY ~Yes, let's go on and be done with it already.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~~ t3.1
SAY ~Let me put it this way: if I didn't, I'd have nothing but disappointment for you. So you should consider my doubts a good thing.~
IF ~~ + t3.4
END

IF ~~ t3.2
SAY ~(shrug) Things happen.~
++ ~That's it? Not even a good word for the innocents that died?~ + t3.3
++ ~Fair enough.~ + t3.4
END

IF ~~ t3.3
SAY ~What else do you expect? "Oh, no, all those poor people. Whatever could we have done while we were destroying the roots of it all?"~
= ~Dead Bhaalspawn. No more war. Everyone still alive walks away happy. Do you see me moping around for all of my brethren, the spiders that get trampled underfoot each day? I'm angry, of course. But that's no way to live.~
IF ~~ + t3.4
END

IF ~~ t3.4
SAY ~I'll admit, I was mostly confident in our chances. If I thought you were completely hopeless, I wouldn't be here, after all.~
= ~Still, we're only half done. You still have plenty of time to fall beneath my expectations of you.~
++ ~Gods, Pai'Na, you're horrible.~ + t3.5
++ ~I'll make sure I don't.~ + t3.6
++ ~Can't you say one good thing, ever?~ + t3.7
END

IF ~~ t3.5
SAY ~I'll take that as a compliment.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~~ t3.6
SAY ~Yes, do that.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~~ t3.7
SAY ~What? Oh, yes. I do rather like that indignant expression of yours right now. You should show it more often.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",3)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",3)
Dead("sendai")~ t4
SAY ~Oh, how I did enjoy that. I never get tired of seeing that arrogant look the drow make fade away as they die.~
= ~Better yet when there's nearly a dozen of her to watch crumble to dust. It's not every day you see a show quite like that.~
++ ~That's cruel of you.~ + t4.1
++ ~I agree.~ + t4.2
END

IF ~~ t4.1
SAY ~Don't tell me she didn't deserve everything that happened to her, <CHARNAME>. You're not that foolish - and yes, that is coming from me.~
IF ~~ + t4.2
END

IF ~~ t4.2
SAY ~Hmph. It's only a shame I won't get a chance for a victory as sweet as Sendai's death. Then again, there's always some excitement to be had while travelling with you, so who knows.~
= ~Gah, did I really just say that? Forget I said anything.~
++ ~Too late.~ + t4.3
++ ~You're growing fond of me. Admit it.~ + t4.4
++ ~I'll try.~ + t4.5
END

IF ~~ t4.3
SAY ~Forget it now before I unleash a swarm to clean your ears out! And believe me, it won't be pleasant.~
IF ~~ + t4.6
END

IF ~~ t4.4
SAY ~No! No, no no. Absolutely not. I will admit no such thing.~
IF ~~ + t4.6
END

IF ~~ t4.5
SAY ~Make sure you do.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",4)~ EXIT
END

IF ~~ t4.6
SAY ~*sigh* I hate you, <CHARNAME>. I just want to let you know that.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",4)~ EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("C0PaiNaToBTalk","GLOBAL",4)
Dead("CHALRV01")~ t5
SAY ~Hmm. That's that, then. We're rather close to the end. I didn't think - well, I'll be honest just this once. We succeeded. I expected nothing else.~
++ ~Really? So all that patronizing in the past was all for show?~ + t5.1
++ ~I'm glad you were with me up to now.~ + t5.2
END

IF ~~ t5.1
SAY ~No- well... gah, yes. Yes, it was. Now you know, happy?~
IF ~~ + t5.2
END

IF ~~ t5.2
SAY ~I won't lie - despite all the pain, stress and irritating situations you've put me through, I'm... not sorry I went through it all. I wouldn't take any of it back.~
= ~I'm not ignorant enough not to know that our travels together will be over soon. When that comes... I think I'll go back to my home. The place that I left behind, and now with my master gone too... someone must care for it in her stead.~
= ~There. I've spilled out my heart to you. Remember all of that? Because I'm not repeating any of it. Bah, this is all your damned influence. I've grown soft.~
++ ~You don't need to. I'm glad to finally know I have your friendship, Pai'Na.~ + t5.3
++ ~Who are you and what have you done with Pai'Na?~ + t5.4
++ ~Sure, sure.~ + t5.5
END

IF ~~ t5.3
SAY ~Friendship...? Yes, friends. We are... friends. Hmm, that doesn't sound as bad as I thought it would.~
IF ~~ + t5.5
END

IF ~~ t5.4
SAY ~Very funny. Did I ever tell you the tale of what happened to the last funny person? No, you probably don't want to know.~
IF ~~ + t5.5
END

IF ~~ t5.5
SAY ~*ahem* Well, in any case, we still have the obstacle of that delusional god-wannabe Melissan to deal with. If I think of anything else I should say, well... hopefully we'll both still be alive at that time.~
IF ~~ DO ~SetGlobal("C0PaiNaToBTalk","GLOBAL",5)~ EXIT
END
END