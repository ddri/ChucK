// Author: David Ryan

// First comes the sound network
// name the variable and throw to the dac
// SinOsc creates a sine wave
// There's also Sqr, Saw, Tri

SinOsc s => dac;

// print program name

<<< "Hello Sine!" >>>;

// set volume to 0.6 
// .gain is a method for gain

0.6 => s.gain;

// set frequency to A 440
// .freq is a method for frequency

440 => s.freq;

// timing is built into ChucK
// we will declare seconds here

1::second => now;


