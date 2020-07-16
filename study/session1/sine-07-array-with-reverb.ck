// creates the synth tone
// addition of the reverb as well
SinOsc foo => NRev r => dac;
.5 => foo.gain;
.1 => r.mix;

// an array of pitch classes (think semitones)
[0, 2, 4, 7, 8, 11] @=> int hi[];

while( true )
{
    // random register range for each pitch class in the array
    Std.mtof( 45 + Std.rand2(0,4) * 12 +
    hi[Std.rand2(0,hi.cap()-1)] ) => foo.freq;

// change rate
100::ms => now;

}