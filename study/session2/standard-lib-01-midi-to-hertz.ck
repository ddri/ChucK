// sound chain

TriOsc s => dac;

// loop

for( 0 => int i; i <= 127; i++ )
{
	Std.mtof(i) => float Hz; // midi to hertz
	<<< i, Hz >>> // print out i and Hz

	200::ms => now;
}
