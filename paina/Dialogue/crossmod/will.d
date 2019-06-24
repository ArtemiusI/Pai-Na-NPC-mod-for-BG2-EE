// SoA

CHAIN
IF ~InParty("L0Will")
See("L0Will")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaWill1","GLOBAL",0)~ THEN BC0PAINA C0PainaWill1
~So, spirit, is it true that you've existed within that grotto since the beginning of your afterlife?~
DO ~SetGlobal("C0PainaWill1","GLOBAL",1)~
== L0WILLB ~That's right.~
== BC0PAINA ~It sounds... nice. You were among those that understood you, away from the influences of ignorant boors. I'd even call your decision to leave foolish.~
== L0WILLB ~I miss the spirits of the Visionhive, but I felt like I could be of use to <CHARNAME>. Isn't that the same reason you left, Pai'Na?~
== BC0PAINA ~Pah. You seem to have mistaken me for being generous, ghost.~
== L0WILLB ~So why did you leave then? If you don't mind me asking, of course.~
== BC0PAINA ~Boredom, spirit. It was boredom that drew me from the safety of my home and family... though I suppose that is a lost concept for a timeless creature like yourself.~
EXIT

CHAIN
IF ~InParty("L0Will")
See("L0Will")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaWill2","GLOBAL",0)~ THEN BC0PAINA C0PainaWill2
~What, what is it, spirit?! Why must you stare at me so incessantly? Can you not see that I'm busy?~
DO ~SetGlobal("C0PainaWill2","GLOBAL",1)~
== L0WILLB ~I- I'm sorry. I didn't realize how rude I was being. I was just fascinated by your work.~
== BC0PAINA ~Hmph, as you should be. Working with venom is both a delicate and dangerous art. I wouldn't expect one such as you to understand.~
== L0WILLB ~Maybe not the delicate part, but I'm very familiar with how dangerous venom is. After all, it was what took my life.~
== BC0PAINA ~I see.~
== L0WILLB ~I hope I didn't bother you too much. Actually, I respect what you do, Pai'Na. Perhaps if I had as much knowledge as you while I was still alive, I would have survived.~
== BC0PAINA ~Hmph. I suppose death must have given you more wisdom than you had in life. Very well, then. You may watch if you think you can learn something. Just do not interrupt.~
EXIT

CHAIN
IF ~InParty("C0Paina")
See("C0Paina")
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Paina",CD_STATE_NOTVALID)
Global("C0PainaWill3","GLOBAL",0)~ THEN L0WILLB C0PainaWill2
~You're hostile to all the humans we meet, even though you don't know them. Why are you so afraid of people?~
DO ~SetGlobal("C0PainaWill3","GLOBAL",1)~
== BC0PAINA ~I am not 'afraid' of people. I simply do not like them.~
== L0WILLB ~Because they don't understand you?~
== BC0PAINA ~They could, if they had clear enough ears and minds to listen. They simply refuse to, because they are ignorant.~
== L0WILLB ~I'm not sure the people I was around, before I left my home, really understood me either. But I wouldn't call them ignorant. Just... different.~
== BC0PAINA ~Hmph. In their eyes, we are the 'different' ones. We're freaks, and our views are outlandish, and therefore not worth listening to. I say: to the Hells with what they think.~
== L0WILLB ~You're saying 'we'. Does that mean you think our situations were similar?~
== BC0PAINA ~I never said that.~
EXIT