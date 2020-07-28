// sound chain
// assign to s variable
// chuck to p variable for Pan2 function
SinOsc s => Pan2 p => dac;

// initialise pan position value
1.0 => float panPosition;

// create a loop
while( panPosition > -1.0 )
{
    // pan value assign to p variable
	panPosition => p.pan;

	// print pan position to console
	<<< panPosition >>>;

	// each loop decrements to shift pan position 
	panPosition - .01 => panPosition;

    // advance time 
	.01::second => now;
}