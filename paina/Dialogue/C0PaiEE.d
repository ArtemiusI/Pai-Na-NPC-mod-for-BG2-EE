// Dorn

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaDorn1","GLOBAL",0)~ THEN BDORN C0PainaDorn1
~Your obsession towards useless vermin is a waste of potential, half-drow. I suggest you reconsider your course.~
DO ~SetGlobal("C0PainaDorn1","GLOBAL",1)~
== BC0PAINA ~Useless? You would not think so, if I allowed them to feast upon your eyes.~
== BDORN ~You can try. Unlike you, I have no pathetic sentiments against crushing your little pets underfoot.~
== BC0PAINA ~Harm any of my children, half-orc, and I will ensure that your death will be slow and painful.~
== BDORN ~Your threats do not frighten me. Like all druids, you are weak and a fool.~
== BC0PAINA ~They should. Even you must sleep eventually. My spiders do not.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaDorn2","GLOBAL",0)~ THEN BDORN C0PainaDorn2
~I cannot deny that your beasts have an... efficiency for overwhelming the weaklings we face, half-drow. But you waste what potential they have by cowering in your measly cocoon for your entire life?~
DO ~SetGlobal("C0PainaDorn2","GLOBAL",1)~
== BC0PAINA ~And what would you have me do instead, hmm? Take over the city?~
== BDORN ~Surely such a thing would be more purposeful than the wasteful life you lead.~
== BC0PAINA ~Pfft. I'm neither interested nor moronic enough to try such a thing.~
== BDORN ~That is only another way of saying you lack the stomach for it. Such an act would impress me, perhaps change my opinion of your bugs.~
== BC0PAINA ~You are so pitifully short-sighted, Dorn. My spiders control more than what those pig-like eyes of yours can see. If you can realize that, Dorn, then perhaps you might impress *me*.~
EXIT

// ToB

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaToBDorn1","GLOBAL",0)~ THEN BDORN25 C0PainaToBDorn1
~You and your insects still live.~
DO ~SetGlobal("C0PainaToBDorn1","GLOBAL",1)~
== BC0PAI25 ~Are you surprised by that?~
== BDORN25 ~Surprised, and disappointed. I had thought our foes more capable.~
== BC0PAI25 ~Spiders are the most intelligent of all beasts. Fragile and delicate, but we can overwhelm anything in our way.~
== BDORN25 ~Believe in what fantasies you will. Perhaps the bright flames of a mage's fireball will rouse you from your ignorance, but I doubt it.~
== BC0PAI25 ~You are truly a pitiful creature, Dorn. The day you realize the might of the arachnids will be your final moment.~
EXIT

// Hexxat

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHexxat1","GLOBAL",0)~ THEN BHEXXAT C0PainaHexxat1
~I'm surprised that anyone alive would make their home in the tombs. Even I was tired of living there.~
DO ~SetGlobal("C0PainaHexxat1","GLOBAL",1)~
== BC0PAINA ~It was the most convenient place for me to do my duty. Many of my charges were born there, and human fools rarely trespass.~
== BHEXXAT ~<CHARNAME> did.~
== BC0PAINA ~That's true. But there is always an exception.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaHexxat1","GLOBAL",0)~ THEN BHEXXAT C0PainaHexxat1
~You're not as opposed to me as other druids I've met. Does my existence not go against the natural order?~
DO ~SetGlobal("C0PainaHexxat1","GLOBAL",1)~
== BC0PAINA ~Perhaps it does. My master would have thrown a fit if she met you.~
== BHEXXAT ~But you won't?~
== BC0PAINA ~I don't necessarily care for... what you are. But you're a survivor, like me. I don't see any reason to fear you.~
== BHEXXAT ~Then you're the first. Most others dread I might drain their blood without warning if my hunger takes me.~
== BC0PAINA ~Oh, make no mistake - my spiders are always watching. If you try anything, I *will* end you. But I don't doubt you're wise enough to realize that.~
== BHEXXAT ~Fear not, Pai'Na. I have no such intention.~
== BC0PAINA ~So you say. But I never trusted Bodhi, neither do I trust you... vampire.~
EXIT

// ToB

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaToBHexxat1","GLOBAL",0)~ THEN BC0PAI25 C0PainaToBHexxat1
~You are from the Chultan jungles, correct?~
DO ~SetGlobal("C0PainaToBHexxat1","GLOBAL",1)~
== BHEXXA25 ~Yes.~
== BC0PAI25 ~Are spiders treated with respect there?~
== BHEXXA25 ~I am not sure. I have been out of touch with nature for a long time.~
== BC0PAI25 ~A shame. I've considered travelling there myself, to see if there are any breeds I haven't seen yet.~
== BHEXXA25 ~There are. You might like them, though I doubt they would feel the same of you.~
== BC0PAI25 ~In case you haven't noticed, I have a way with spiders. I doubt I'd be in any danger.~
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNeera1","GLOBAL",0)~ THEN BNEERA C0PainaNeera1
~Er, hello, Pai'Na. We haven't talked at all yet, have we?~
DO ~SetGlobal("C0PainaNeera1","GLOBAL",1)~
== BC0PAINA ~No, and I prefer it that way.~
== BNEERA ~Aw, don't be like that. We're both half-elf girls, so we've got something in common, right?~
== BC0PAINA ~I'm half-*drow*, fool. We have nothing in common. Stay away from me.~
== BNEERA ~What? I'm not that scary or anything. Huh, do I stink?~
== BC0PAINA ~Your wild magic threatens my charges. They are delicate and you terrify them. If you injure any of them with your spells, I will make you regret it.~
== BNEERA ~Oh. Well, uh, I guess I'll just stay away from them.~
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNeera2","GLOBAL",0)~ THEN BNEERA C0PainaNeera2
~Hey... Pai'Na. Could you come take a look at this?~
DO ~SetGlobal("C0PainaNeera2","GLOBAL",1)~
== BC0PAINA ~I have no interest in your wizardly tools, wild mage. Keep your distance.~
== BNEERA ~Uh, that's fair enough, but this isn't mine. In fact, it might be yours. Hard to say, the way it is now.~
== BC0PAINA ~Y-you...! what did you do to it?!~
== BNEERA ~I have no idea, honest! It was just supposed to be a spell to heat the cooking pot, and I guess this little guy just happened to be crawling on the side.~
== BC0PAINA ~That's a female, you nitwit!~
== BNEERA ~Right. You'd know best. But anyway, I didn't mean to turn its legs into... uh, whatever they became. They kind of look like little fins...~
== BC0PAINA ~Reverse this right this instant, before I tear your guts out through your throat and feed them to my brood!~
== BNEERA ~Eek! Okay, okay, just calm down and I'll, uh... how about this! 'Hex-o presto kazoo-ey'!~
== BNEERA ~...Huh, what d'ya know. That actually worked. Whew, guess my guts get to stay inside of me tonight...~
== BC0PAINA ~Grr...~
EXIT

// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaNeeraToB1","GLOBAL",0)~ THEN BC0PAI25 C0PainaNeeraToB1
~*sniff* Something smells like burning...~
DO ~SetGlobal("C0PainaNeeraToB1","GLOBAL",1)~
== BNEERA25 ~Really? ...yeah, I smell it too. Where's it coming from?~
== BC0PAI25 ~Your robes.~
== BNEERA25 ~Huh, you're right. What's in there?~
== BNEERA25 ~Oh. Oh, dear.~
== BC0PAI25 ~What?~
== BNEERA25 ~Uh, nothing.~
== BC0PAI25 ~I don't believe you. What are you hiding in your hand?~
== BNEERA25 ~It's nothing! Really!~
== BC0PAI25 ~I warn you, mage, if that was a spider you burned, I will make sure you pay dearly for it.~
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaRasaad1","GLOBAL",0)~ THEN BC0PAINA C0PainaRasaad1
~They say that monks are trained well enough to hold an ant between their fingers without crushing it.~
DO ~SetGlobal("C0PainaRasaad1","GLOBAL",1)~
== BRASAAD ~It is true that many of us are capable of such dexterous moves.~
== BC0PAINA ~Then I hope you will keep alert at all times to ensure you never crush a spider inadvertently.~
== BRASAAD ~I will make sure to watch out for them.~
== BC0PAINA ~Good. And while you're at it, collect me some insects. My spiders prefer them alive.~
== BRASAAD ~Er, as you wish, my friend.~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaRasaad2","GLOBAL",0)
LevelGT("Rasaad",10)~ THEN BC0PAINA C0PainaRasaad2
~Interesting. You have developed a resistance to toxins not unlike that of a hivemaster, monk. What is your secret?~
DO ~SetGlobal("C0PainaRasaad2","GLOBAL",1)~
== BRASAAD ~There is no secret, my friend. This is but a stage of a monk's training. I may banish poisons that enter my bloodstream through force of will.~
== BC0PAINA ~Hmm, fascinating. I demand that you demonstrate it to me.~
== BRASAAD ~Are you suggesting that I allow you to poison me, Pai'Na?~
== BC0PAINA ~Oh, don't panic. I have antidotes for... most poisons in my collection. Besides, if your immunity is as absolute as you claim, this should be like drinking water to you. I must see this technique of yours for myself.~
== BRASAAD ~Hmm. I would never have backed off from such a bold challenge in my youth. I accept.~
== BC0PAINA ~Good. Make no mistake, monk - I will create a poison even *you* won't be able to neutralize.~
== BRASAAD ~I... look forward to the challenge.~
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaToBRasaad1","GLOBAL",0)~ THEN BRASAA25 C0PainaToBRasaad1
~What drives you to remain with us, Pai'Na? Forgive me for my doubts, but you owe little to <CHARNAME>, yet you would risk life and limb regardless.~
DO ~SetGlobal("C0PainaToBRasaad1","GLOBAL",1)~
== BC0PAI25 ~More than my own limbs, monk. What business is it of yours?~
== BRASAA25 ~I have come to know you better, despite your... reclusiveness. I see a woman whose heart is in the right place, despite her sour exterior. Am I wrong to presume so?~
== BC0PAI25 ~Does it matter? If you are confident I'm not going anywhere, then surely my reasons mean nothing.~
== BRASAA25 ~I would like to know. You have gained my respect for your dedication, but there is still so little I know of you. I thought, perhaps, we could transition from respect to friendship.~
== BC0PAI25 ~Hmph. You presume too much, bald one... but I remain because I find your presence... tolerable. I could do worse for company. Is that enough for you?~
== BRASAA25 ~It is. Thank you for giving your thoughts.~
EXIT

