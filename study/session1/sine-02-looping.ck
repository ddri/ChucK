// Create a sine wave and name it and throw to the dac
SinOsc foo => dac;


while ( true )
{
	// Create a frequency and duration for the sine wave
	220 => foo.freq;
	0.5::second => now;

	//Repeat for different freqs
	440 => foo.freq;
	0.5::second => now;

	880 => foo.freq;
	1::second => now;
}