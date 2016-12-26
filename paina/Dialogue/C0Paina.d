BEGIN C0Paina

IF WEIGHT #-1 ~Global("C0PainaMet","GLOBAL",0)~ THEN b1
SAY ~What is your business here, trespasser? My charges dislike your presence, so I suggest you leave quickly.~
++ ~Your charges? What do you do here?~ EXTERN C0Paina b1.1
++ ~Nothing. I'll be leaving now.~ EXTERN C0Paina b1.2
++ ~I am here to end your life!~ EXTERN C0Paina b0
END

IF WEIGHT #-1 ~Global("C0PainaMet","GLOBAL",1)~ THEN b2
SAY ~You *return*? Begone, quickly, before I set my charges on you!~
++ ~Your charges? What do you do here?~ EXTERN C0Paina b1.1
++ ~Nothing. I'll be leaving now.~ EXTERN C0Paina b1.2
++ ~I am here to end your life!~ EXTERN C0Paina b0
END

APPEND C0Paina

IF ~~ b0
SAY ~You dare?!~
= ~Stop your feeding, my spiders! New victims await! Protect your home!~
IF ~~ DO ~ActionOverride("SPBene",ReallyForceSpell(Myself,SPIDER_CHANGE))
ActionOverride("SPPhil",ReallyForceSpell(Myself,SPIDER_CHANGE))
ActionOverride("SPSamar",ReallyForceSpell(Myself,SPIDER_CHANGE))
ActionOverride("SPTredd",ReallyForceSpell(Myself,SPIDER_CHANGE))
Enemy()~ EXIT
END

IF ~~ b1.1
SAY ~That is none of your business. However... as I am in a patient mood today, I will indulge you this once.~
= ~My name is Pai'Na. I am a hivemaster druid. In other words, my task is to care for the arachnids that make their homes in the depths of this revolting city.~
++ ~You built a sanctuary for *spiders*?~ + b1.3
++ ~In that case, I will leave you in peace.~ + b1.10
++ ~Enough talk. Time to die!~ + b0
END

IF ~~ b1.2
SAY ~Do so quickly! It is approaching feeding time, and I will serve your carcass if you remain.~
IF ~~ DO ~SetGlobal("C0PainaMet","GLOBAL",1)~ EXIT
END

IF ~~ b1.3
SAY ~That is correct. My poor children are seen as naught but vermin and pests by the foolish humans that infest this city. Someone must do this duty for their sakes.~
= ~Are you here to exterminate my children? Or do you have other business for being here?~
++ ~You just take care of spiders here? Don't you ever leave?~ + b1.4
++ ~Your skin color is strange... are you a drow?~ + b1.5
++ ~No. I will leave you in peace.~ + b1.10
++ ~Enough talk. Time to die!~ + b0
END

IF ~~ b1.4
SAY ~No. I have no reason to leave, even were I not at risk just for my half-drow blood. This place is as much my home as it is my children's.~
++ ~That sounds like a lonely existence.~ + b1.6
++ ~I will leave you in peace.~ + b1.10
++ ~Enough talk. Time to die!~ + b0
END

IF ~~ b1.5
SAY ~*Half*-drow. I would demand you remember that, but it matters little enough to me. Unlike your prejudiced surface kin, the spiders care naught about my heritage.~
++ ~You just take care of spiders here? Don't you ever leave?~ + b1.4
++ ~No. I will leave you in peace.~ + b1.10
++ ~Enough talk. Time to die!~ + b0
END

IF ~~ b1.6
SAY ~It... what does it mean to you, <PRO_RACE>?~
++ ~You could join me. I could use a skilled druid, and I can protect you while you're in my company~ + b1.7
++ ~No. I will leave you in peace.~ + b1.10
++ ~Enough talk. Time to die!~ + b0
END

IF ~~ b1.7
SAY ~And why would I wish to join your company? I am content to be here.~
++ ~I don't think you are. If you didn't want company, you'd have already attacked me or told me to get out.~ + b1.8
++ ~You could do more for your charges if you went into the larger world instead of stayng here.~ + b1.8
++ ~In that case, I will leave you in peace.~ + b1.10
++ ~Enough talk. Time to die!~ + b0
END

IF ~~ b1.8
SAY ~(sigh) You are persistent, and annoying. But I cannot deny there is some truth to your words...~
= ~Very well. If you do not fear the presence of a half-drow and her spiders, I will join you. Perhaps this may assist me with helping my charges... and I admit, I am tired of isolation.~
+ ~GlobalLT("Chapter","GLOBAL",4)~ + ~I should tell you first, perhaps, that I seek to rescue an old friend who is being held hostage by the Cowled Wizards. There may be significant risk.~ + b1.9
+ ~GlobalLT("Chapter","GLOBAL",4)~ + ~You should know that I am hunting a powerful wizard by the name of Irenicus. There will be considerable danger involved.~ + b1.9
++ ~Let's go, then.~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.9
SAY ~Your goals and objectives matter little to me. I will work with you for as long as I see fit. Let's go.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.10
SAY ~Very wise of you. I shall forgive your intrusion this time. Now begone.~
IF ~~ DO ~SetGlobal("C0PainaMet","GLOBAL",2)~ EXIT
END

IF ~Global("C0PainaMet","GLOBAL",2)~ b3
SAY ~You return. My charges do well, but your presence disturbs them. What do you want?~
++ ~I'd like you to join me.~ + b2.1
++ ~Nothing.~ + b2.2
END 

IF ~~ b2.1
SAY ~Fine. My spiders may take care of themselves for now. Let us leave them in peace quickly.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b2.2
SAY ~Then leave me.~
IF ~~ EXIT
END

END