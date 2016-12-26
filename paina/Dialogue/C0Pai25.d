BEGIN C0Pai25

IF ~Global("C0PainaSummoned","GLOBAL",1)~ b1
SAY ~So, you have the power to summon me at your whim, now? How troublesome.~
++ ~Sorry, Pai'Na.~ DO ~SetGlobal("C0PainaSummoned","GLOBAL",2)~ + b1.1
++ ~What have you been up to?~ DO ~SetGlobal("C0PainaSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY ~I had been hoping to build a new sanctuary near the elven city since we parted ways. Unfortunately, now that you have pulled me from the forests to... wherever this is, I shall have to abandon that plan.~
= ~If you still have need of me, I suppose I could do worse for company. Shall we be on our way, <CHARNAME>?~
++ ~Yes. Join me.~ + b1.2
++ ~Wait here for now.~ + b1.3
END

IF ~~ b1.2
SAY ~If you wish.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY ~You brought me away from my tasks to... wait. How promising. (sigh) As you command.~
IF ~~ DO ~MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
END

IF ~Global("C0PainaSummoned","GLOBAL",2)~ b3
SAY ~Well, this place is quite positively *boring*. I would rather be away from here.~
++ ~Join me, then.~ + b1.2
++ ~Wait a little longer.~ + b3.2
END 

IF ~~ b3.2
SAY ~As if I had a choice.~
IF ~~ EXIT
END