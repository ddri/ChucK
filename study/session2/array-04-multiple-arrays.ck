
// sound network
SqrOsc s => dac;

// array delcaration

[54, 56, 62, 54, 48, 50, 52] @=> int A[];
[.5, .2, .4, .6, .5, .3, .4] @=> float notes[];

// a method of showing capacity
// A.cap() is a max number of elements in A[]
<<< A.cap() >>>;

// create the loop
// where i is less than the capacity of the array
for( 0 => int i; i < A.cap(); i++)
{
    // print index value and value of i
    <<< i, A[i] >>>; 

    // create sound via midi notes
    Std.mtof(A[i]) => s.freq;

    // advance time using the notes array
    notes[i]::second => now;
}

// using the same array length makes this possible
// in terms of overall sound cohesion