// this example goes up the chromatic scale
// it uses a standard method to convert
// midi to a frequency 

// sound chain

TriOsc s => dac;

// loop

for( 0 => int i; i <= 127; i++ )
{
	// midi to hertz
	Std.mtof(i) => float Hz; 

	// print out i and Hz
	<<< i, Hz >>>; 

	// chuck hz valu to frequency
	Hz => s.freq;

	// advancing time
	200::ms => now;
}

