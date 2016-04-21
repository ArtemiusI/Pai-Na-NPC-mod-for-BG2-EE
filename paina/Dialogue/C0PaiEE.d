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
== BC0PAI25 ~I warn you, mage, if that was a spider you burned, I will make sure you pay for it.~
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

/* CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaToBRasaad1","GLOBAL",0)~ THEN BRASAA25 C0PainaToBRasaad1
~~
DO ~SetGlobal("C0PainaToBRasaad1","GLOBAL",1)~
== BC0PAI25 ~~
EXIT */

