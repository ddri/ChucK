// Create a sine wave and name it and throw to the dac
SinOsc foo => dac;


while ( true )
{
	// Create a random frequency every sample
	Math.random2f(30,1000) => foo.freq;
	1::samp => now;
}

// This is interesting as the whistle sound
// is the average of the range, so just above
// 500hz. The sample is one per 44100. 