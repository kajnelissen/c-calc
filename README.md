C Calculator
============

Doel van de opdracht: Op een linux omgeving heb je niet altijd de mogelijk tot het gebruik van een GUI. Toch moet je dan in staat zijn om een werkend programma op te leveren. Om je een idee te geven wat je allemaal zou kunnen verwachten gaan we een klein C programmaatje schrijven.

Heb je weinig tot geen ervaring met C, dan kies een partner die hier ervaring mee heeft. Je mag medestudenten om advies vragen, zolang je maar weet waarom je dingen gedaan hebt.

C en H files maken
------------------
Maak de files calculator.c en calculator.h. Deze files moeten de volgende functies bevatten:
*	add(getal1, getal2) 
* sub(getal1, getal2) 
* mul(getal1, getal2) 
* div(getal1, getal2)
* calculate(string)

calculate krijgt als input een string van het volgende formaat: COMMAND getal1, getal2

Waarbij COMMAND de waardes kan aannemen:
* ADD
* SUB
* MUL
* DIV
	
Het resultaat van deze functie is een string.

**Inleveren:**
* calculator.c
* calculator.h

Een binary compileren
---------------------
Maak een file cp_calculator (cp = command prompt). Deze bevat een main functie. In de main wordt stdin gelezen en doorgegeven aan de functie “calculate” van de file calculator.h/c. Druk het resultaat af op stdout.
Maak een makefile de files te compileren met de gcc compiler tot de binary “cp_calculator”.

De makefile moet de volgende targets hebben:
* clean: Gooi alle compilatie files weg (bv .o files)
* cp_debug: Maak een debuggable versie van de binary.
* cp_binary: Maak een binary zonder debug informatie.

**Inleveren:**
* cp_calculator.c
* makefile
* cp_calculator binary

Testscripts
-----------
Schrijf in shellscripts testen die input geven aan de cp_calculator binary. Check of de output valide is. Er moet een test zijn voor elke functie in calculator.h. Daarbij moeten er ook enkele testen zijn om fout-scenarioos te testen.

**Inleveren:**
* een lijst van testen die je gaat uitvoeren en het verwachtte resultaat.
* script
* output van het script

Libraries en linking
--------------------
Pas de makefile aan, zodat de file calculator.c en calculator.h gecompileerd worden naar een library file (.so file). Link de library met cp_calculator.c, zodat er nog altijd een binary gegenereerd wordt.

**Inleveren:**
* De nieuwe makefile

De calculator server
--------------------
Maak een file srv_calculator.c aan. Deze file gaat hetzelde doen als de cp_calculator.c, maar de input komt in dit geval niet van de commandprompt, maar via een poort. (Bijvoorbeeld telnet naar poort 12345).

**We gaan het volgende hiervoor bouwen:**
We maken een socket aan, die we verbinden aan een poort (zelfgekozen). Om dit te doen heb je informatie nodig over de commando's “socket, bind, accept, listen”. Zodra we een request binnenkrijgen, maken we een childproces aan. Dit childproces zal het request afhandelen. Het childprocess handelt het request af door de library calculator.so te gebruiken. Zodra het childprocess het antwoord heeft terug gegeven, wordt het beeindigd.

Maak 2 extra targets in de makefile, zodat zowel de cp_calculator als de src_calculator gebouwd kunnen worden (met en zonder debug).

**Inleveren:**
* srv_calculator.c
* nieuwe makefile.

