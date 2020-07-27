// sound chain

TriOsc s => dac;

// loop

for( 0 => int i; i <= 127; i++ )
{
	// midi to hertz
	Std.mtof(i) => float Hz; 
	// print out i and Hz
	<<< i, Hz >>>; 

	200::ms => now;
}