BEGIN C0PainaP

IF ~Global("C0PainaKickedOut","GLOBAL",0) HappinessLT(Myself,-299)~ b1
SAY ~I've had enough! May spiders feast upon your innards!~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~Global("C0PainaKickedOut","GLOBAL",0)~ b2
SAY ~Are we to part ways, now?~
++ ~No, my mistake.~ DO ~JoinParty()~ EXIT
++ ~Yes, for now.~ + b2.1
END

IF ~~ b2.1
SAY ~Fine. You will find me back at my sanctuary. Perhaps I will be in the mood to travel with you again.~
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")~ + ~All right. I'll meet you there.~ DO ~SetGlobal("C0PainaKickedOut","GLOBAL",1) MoveGlobal("AR0804","C0Paina",[568.420])~ EXIT 
+ ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ + ~You can't do that right now. Just wait for me here.~ DO ~SetGlobal("C0PainaKickedOut","GLOBAL",1)~ EXIT
END

// If you have kicked Branwen out and told her to wait right here or in the Bridge District, here's the dialogue she is going to have(remember, C0PainaKickedOut is at 1).

IF ~Global("C0PainaKickedOut","GLOBAL",1)~ b3
SAY ~Hmph, you return. Watch where you step, would you? Now, have you come for my assistance again?~
++ ~I have. Please, join me.~ + b3.1
++ ~Not at the moment.~ + b3.2
END 

IF ~~ b3.1
SAY ~As you wish. Come, my children. We will accompany <CHARNAME> for now.~
IF ~~ DO ~SetGlobal("C0PainaKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b3.2
SAY ~Then I suggest you leave quickly.~
IF ~~ EXIT
END
