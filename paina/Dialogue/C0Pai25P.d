BEGIN C0Pai25P

IF ~Global("C0PainaToBKickedOut","GLOBAL",0)~ b1
SAY ~So, is this the end of things? I admit, I have almost come to enjoy your company, enough so that I am willing to give you a chance to reconsider.~
++ ~My mistake. Please, don't leave.~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~Just wait for me here.~ DO ~SetGlobal("C0PainaToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1717.1717]) Face(0)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Just wait for me here.~ DO ~SetGlobal("C0PainaToBKickedOut","GLOBAL",1)~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~I am sending you to the pocket plane. Wait for me there.~ DO ~SetGlobal("C0PainaToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1717.1717],0)~ EXIT
END

IF ~Global("C0PainaToBKickedOut","GLOBAL",2)~ b2
SAY ~Well, this place is quite positively *boring*. I would rather be away from here.~
++ ~Join me, then.~ + b2.1
++ ~Wait a little longer.~ + b2.2
END 

IF ~~ b2.1
SAY ~If you wish.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b2.2
SAY ~As if I had a choice.~
IF ~~ EXIT
END
