// creating a sinewave pan pattern
// using a noise generator

// sound chain
Noise n => Pan2 p => dac;

// infinite loop
while( true )
{
    // returns a number between -1 and 1 
    // via a sine wave
	Math.sin(now/1::second*2*pi) => p.pan;

	// advance time
	10::ms => now;

}

// note that this is basically using a sine operator
// to function like an LFO on a subtractive synth