// This example uses a basic for loop to 
// create a frequency sweep

// sound network
SinOsc s => dac;

// for loop set between 20 and 400
for( 20 => int i; i < 400; i++)
{
	// print the value of i
	<<< i >>>;
	// chuck the value of i to the oscillator frequency 
	i => s.freq;
	// update every 0.1 of a second
	0.1::second => now;
}


