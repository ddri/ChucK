
// sound network
SinOsc s => dac;

// initialise variable i
20 => int i; 

while( i < 400 )
{
	// set frequency
	i => s.freq;
	// print vlaue of i
	<<< i >>>;
	// iterate the time frequency
	0.01::second => now;
	// updated in loop
	i++;
}