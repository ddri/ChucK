// sound chain

SqrOsc s => dac;

// set seed for random sequence to be replicable
Math.srandom(135);

// infinite loop
while ( true )
{
    // generate random int
	Math.random2(20, 500) => int i;

	// generate random volume
	Math.random2f(.2, .9) => float v;

	// print out values  
	<<< i, v >>>;

    //update frequency
	i => s.freq;

	// update volume
	v => s.gain;

	// every half second
	.5::second => now;
}