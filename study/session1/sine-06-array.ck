// creates the synth tone
SinOsc foo => dac;
.5 => foo.gain;

// an array of pitch classes (think semitones)
[0, 2, 4, 7] @=> int hi[];

while( true )
{
	// random register range for each pitch class in the array
	Std.mtof( 45 + Std.rand2(0,3) * 12 +
	hi[Std.rand2(0,hi.cap()-1)] ) => foo.freq;

	// change rate
	120::ms => now;

}