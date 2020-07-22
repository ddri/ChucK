// Note: this is placeholder code to merge two models
// together as a composition.

/* 
Planned idea: use for or while loops to start with a 
frequency sweep, and then some if statements to create
loops with an arpeggio at a single note, then repeat 
that as a little melodic progression until the 30 sec
is up.
*/


// Start with printing my name

<<< "Hello World!" >>>;
<<< "This is David Ryan..." >>>;
<<< "...for CalArts" >>>;

// creates the synth tone
// addition of the reverb as well
SqrOsc foo => NRev r => dac;
.75 => foo.gain;
.25 => r.mix;

// an array of pitch classes (think semitones)
[0, 7, 8, 11] @=> int hi[];

while( true )
{
    // random register range for each pitch class in the array
    Std.mtof( 45 + Std.rand2(0,4) * 12 +
    hi[Std.rand2(0,hi.cap()-1)] ) => foo.freq;

// change rate
100::ms => now;

}

// additional as placeholder 


// sound network
SinOsc s => dac;
SqrOsc t => dac;

// only play s to start with
0.5 => s.gain;
0 => t.gain;

for( 0 => int i; i < 500; i++ )
{
    i => s.freq;
    0.001::second => now;
}

// only play t now
0.2 => t.gain;
0 => s.gain;

for( 0 => int i; i < 500; i++)
{
    i => t.freq;
    0.001::second => now;
}

// play s and t at the same time

0.5 => s.gain;
0.2 => t.gain;

for( 80 => int i; i < 500; i++ )
{
    i => t.freq;
    i*2 => s.freq;
    0.01::second => now;
}

// only play s to start with
0.5 => s.gain;
0 => t.gain;

for( 0 => int i; i < 800; i++ )
{
    i => s.freq;
    0.001::second => now;
}

// only play t now
0.2 => t.gain;
0 => s.gain;

for( 0 => int i; i < 800; i++)
{
    i => t.freq;
    0.001::second => now;
}

// play s and t at the same time

0.5 => s.gain;
0.2 => t.gain;

for( 80 => int i; i < 800; i++ )
{
    i => t.freq;
    i*2 => s.freq;
    0.01::second => now;
}