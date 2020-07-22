
// sound network
SinOsc s => dac;


// for loop

for( 20 => int i; i < 400; i++)
{
	// print the value of i
	<<< i >>>;
	// chuck i to the frequency 
	i => s.freq;
	0.1::second => now;
}

