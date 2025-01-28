Clearscreen.

Print "Shuttle Orbit Program.".

Lock Steering To Up.

Lock Throttle To 1.0.

Wait 1.

Stage.

When MaxThrust = 0 Then {
	Print "Lower Stage Depleted.".
	Stage.
	Wait 0.5.
	Stage.
}
Wait Until Altitude > 100000.
Lock Steering To Heading.
Lock Heading (90,45).

