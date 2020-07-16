// Create a sine wave and name it and throw to the dac
SinOsc foo => dac;


while ( true )
{
	// Create a random frequency 
	Math.random2f(30,1000) => foo.freq;
	0.5::second => now;
}