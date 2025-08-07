//One cup of coffee, three cup of doctor pepper, one cup of mac and cheese.
//This program is barely cutting it on the base dynawing, adding more liquid fuel or reducing payload may use less monoprop.
Clearscreen.
Print "================================".
Wait .1.
Print "		Shuttle Launch System".
Wait .1.
Print " 	Written by Kolton Roy".
Wait .1.
Print "Meant for use with Dynawing.".
Print "================================".
Wait .1.
Print "		  Initializing...".
//This section will be setting the variables.
Set MYSTEER to Heading(270,100).
Lock Steering to MYSTEER.
//------------------------------------------
Wait 5. //This is just to "load" the program

Clearscreen.
Print "Launch.".
Lock Throttle to 1.0. 
Set MYSTEER to Heading(270,100).

Stage.

Wait Until Ship:Altitude > 8000.
Set MYSTEER to Heading(270,105).
Print "Steering...".



Wait Until Stage:SolidFuel < 33.
Stage.
Print "Dropping SRBs.".

Set MYSTEER to Heading(270,110).
Print "Rotating to 130 Degrees.".
Wait 2.
Set MYSTEER to Heading(270,130).

Wait Until Ship:Altitude > 40000.
Set MYSTEER to Heading(270,140).
Print "Rotating to 140 Degrees.".

RCS on.

Wait Until Ship:Apoapsis > 80000.

Print "Throttle to 0".
wait 1.0.
Lock Throttle to 0.0.
Set MYSTEER to Heading(270,185).
Print "Waiting For Apoapsis...".

Wait Until Ship:Altitude > Ship:Apoapsis-5000.
//This is supposed to balance us out and not have us crashing back to earth.
Lock Throttle to 1.0.
Wait 5.
Set MYSTEER to Heading(270,185).
Wait Until Stage:LiquidFuel < 400.
Stage.
Wait 1.0.
Stage.

Wait Until Ship:Periapsis > 80000.
Lock Throttle to 0.0.

Print "Complete.".