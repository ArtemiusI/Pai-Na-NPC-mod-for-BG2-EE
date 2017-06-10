EXTEND_TOP FATESP 6 #2
+ ~!Dead("C0Paina") !InMyArea("C0Paina") Global("C0PainaSummoned","GLOBAL",0)~ + ~Bring me Pai'Na, the half-drow hivemaster.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("C0Pai25",[1999.1228],0) 
SetGlobal("C0PainaSummoned","GLOBAL",1)~ GOTO 8
END
