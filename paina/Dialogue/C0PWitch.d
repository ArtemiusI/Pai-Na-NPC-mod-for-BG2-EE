BEGIN C0PWITCH

CHAIN IF WEIGHT #-1
~See("C0Paina")
Global("C0PaiNaWitch","GLOBAL",2)~ THEN C0PWITCH encounter1
~Well, well, well. So the wayward, wild child finally saw fit to return home, has she? It has been too long, my dear.~ [C0BLANK]
DO ~SetGlobal("C0PaiNaWitch","GLOBAL",3)~
END
++ ~Who's there?~ EXTERN C0PAINAJ encounter2
++ ~Is- is that spider talking?~ EXTERN C0PAINAJ encounter2
++ ~Is it speaking to you, Pai'Na?~ EXTERN C0PAINAJ encounter2

CHAIN C0PAINAJ encounter2
~Your petty tricks grew tiresome years ago, master. Do us a favor and reveal yourself, before I have to embarrass you in front of <CHARNAME>.~
== C0PWITCH ~As you wish.~
DO ~ClearAllActions() StartCutsceneMode() StartCutscene("C0PWITCS")~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0PaiNaWitch","GLOBAL",3)~ THEN C0PWITCH encounter3
~So what brings the mighty hivemaster Pai'Na, who insisted that she had exceeded her humble master, back to the place she once called home, hmm? Did you miss my stew? Hoped for a warm reunion?~
= ~Or are you after the ritual again, child? I do recall you trying so hard to find it before you left. Such a shame you did not say goodbye.~
== C0PAINAJ ~You would have punished me had I stayed, as you always did. I left for my own good.~
== C0PWITCH ~So you believe. You always did jump to conclusions, Pai'Na. I taught you to think with your mind, not with your heart, did I not?~
== C0PAINAJ ~...~
== C0PWITCH ~You were a bright child, always eager to learn. Too eager, it seems... I had thought the prospect of your final training would teach you patience, but it seems to have given you the opposite.~
== C0PAINAJ ~Where is it, master? I am after that and only that. If you give it to me, we may part in peace.~
== C0PWITCH ~What will you do to have it, I wonder? Will you harm your master, who you once considered mother, to take it?~
== C0PAINAJ ~I... I never considered you my mother. I knew who my mother was. You could not have held a candle to her.~
== C0PWITCH ~That is true. I could not hope to compare to that brave soul who, even in her last breaths, could only think of delivering you to my arms.~
== C0PWITCH ~But I admired her, just as you did, so I took you in, and trained you in my ways so that you may make something of yourself.~
== C0PAINAJ ~Enough. I did not come to hear this. If you will not give me the ritual, I will take it by force.~
== C0PWITCH ~Ah, but you do not need to. It is... right... here.~
END
++ ~Is that little bottle really it, Pai'Na?~ EXTERN C0PAINAJ encounter4
+ ~CheckStatGT(Player1,14,INT)~ + ~Something's not right. You seem to be growing paler as we speak, witch.~ EXTERN C0PWITCH encounter5
++ ~Well? Will you give it to us?~ EXTERN C0PAINAJ encounter4

CHAIN C0PAINAJ encounter4
~There it is... that is what I have sought, it must be!~
== C0PWITCH ~Is it, however? Can you be sure it is not another trick?~
== C0PAINAJ ~I know you, master. You had many tricks, but you have never been more deceptive than when you were honest. You would have me believe that bottle is fake to give me doubt. I will not fall for it.~
== C0PWITCH ~Very well. It is yours, if you still desire it. But... do you know what this ritual truly means?~
== C0PAINAJ ~What? Is this another one of your tricks, master?~
== C0PWITCH ~No tricks, Pai'Na. I no longer have the time for for tricks... augh!~
END
++ ~Wh-what's wrong?~ EXTERN C0PAINAJ encounter6
++ ~She's coughing up blood... black blood!~ EXTERN C0PAINAJ encounter6

CHAIN C0PWITCH encounter5
~Nothing you need concern yourself over, Bhaalspawn. The... effects of an experiment gone awry.~
EXTERN C0PAINAJ encounter4

CHAIN C0PAINAJ encounter6
~What is this? have you done to yourself, master?!~
== C0PWITCH ~I have... made a terrible mistake, it seems. I... augh! I lied to you, my dear.~
== C0PWITCH ~I told you I had performed the ritual years ago. I... I had not.~
== C0PAINAJ ~You... you didn't? Does this so-called ritual even exist?!~
== C0PWITCH ~Oh, it does. B-but I have... failed.~
== C0PWITCH ~This potion... is no potion. It is a poison, concocted from many lethal components... the most dangerous of which is... ngh! Bebilith venom.~
== C0PAINAJ ~B-bebilith... venom?~
END
+ ~CheckStatLT(Player1,16,INT)~ + ~What is bebilith venom?~ EXTERN C0PAINAJ encounter7
+ ~CheckStatGT(Player1,15,INT)~ + ~How is that possible? Bebilith venom becomes impotent almost instantly in air!~ EXTERN C0PWITCH encounter8

CHAIN C0PAINAJ encounter7
~A bebilith is a... demonic spider, <CHARNAME>, an unnatural predator. Even a hivemaster's resistance may not be enough to endure its venom... how could anyone survive such a ritual?~
== C0PWITCH ~Some... have the strength. I... did not.~
== C0PAINAJ ~You performed the ritual on yourself? Are you insane, master? Look what it has done to you!~
== C0PWITCH ~Perhaps. But I... had to know. If there was a chance that... I would survive, then I... needed to attempt it. So that I knew you... you could succeed as well.~
== C0PWITCH ~I am dying, Pai'Na... the Oakfather has lent me time to warn you, but... that will come to an end soon. I cannot stop you from undertaking this ritual... but you must know that this... this may happen to you as well.~
== C0PAINAJ ~I...~
== C0PWITCH ~But you should know that I... I was wrong. I should not have... denied you this choice. I regret... allowing this to force us apart.~
== C0PAINAJ ~Master...?~
== C0PWITCH ~You were but a student to me, as many others were, but you were... special. You were only a child... and the more I taught you, the more I... came to care for you.~
== C0PWITCH ~I put you through the most rigorous training, trying to distance myself from you, but... when you came to me, with that shine in your eyes, telling me you were ready, I... I could not do it.~
== C0PWITCH ~So I refused to let you drink the poison. I hid it from you, telling myself: "another test, another one before she's ready." I could not imagine how much anger that must have gathered within you.~
== C0PAINAJ ~B-but I... I had thought you...~
== C0PWITCH ~Did you think I refused because I looked down upon you? 'Tis quite the opposite, child. You are, truly, a greater druid than I ever could become. I could not be more proud of you... and I am glad knowing I have not failed your mother.~
== C0PWITCH ~If you have the same strength as the woman who bore you, then... I am sure you will survive. Now... now I understand. So... what will you do, Pai'Na?~
== C0PAINAJ ~What... what will I do? I don't know...~
== C0PWITCH ~Think on it. You, unlike me, have time... but now I... should say farewell. At last, this burning pain within me will... end.~
== C0PAINAJ ~I... goodbye, master.~
== C0PWITCH ~I return to Nature... ah, if only I could have heard you call me 'mother'...~
DO ~Kill(Myself)~ EXIT

CHAIN C0PWITCH encounter8
~That is... a secret, known to the few master poisoners and... hivemasters of the Realms. It is why this... this ritual is so rare... and so dangerous.~
EXTERN C0PAINAJ encounter7