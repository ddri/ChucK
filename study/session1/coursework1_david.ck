
// start with my name

<<< "Hello World!" >>>;
<<< "This is David Ryan..." >>>;
<<< "...for CalArts" >>>;

// Notes about MIDI frequency number
// to note number 

// 261.33 is  C4
// 293.67 is D4
// 329.64 is an E4
// 349.23 is an F4
// 392.00 is a G4
// 440.00 is an A4
// 493.88 is a B4
// 523.25 is a C5

// create the sound network
// add some reverb

SinOsc s => NRev r => dac;
.80 => s.gain;
.1 => r.mix;

// create a loop to play four times
// first is C, E, G written the long way
// the .1 second is a hack to insert a small rest    
for( 0 => int i; i < 4; i++)
{
    // C note frequency
    261.33 => s.freq;
    .4::second => now;
    <<< "lah!" >>>;  
    100 => s.freq;
    .1::second => now;
    
    // E note frequency
    329.64 => s.freq;
    .4::second => now;
    <<< "lah!" >>>;  
    100 => s.freq;
    .1::second => now;
    
    // G note frequency
    392.00 => s.freq;
    .4::second => now;
    <<< "lah!" >>>;  
    100 => s.freq;
    .1::second => now;
}

// create a loop to play the next four loops
// this is D, F, A written the long way

for( 0 => int i; i < 4; i++)
{
    // D note frequency
    293.67 => s.freq;
    .4::second => now;
    <<< "lah!!" >>>;  
    100 => s.freq;
    .1::second => now;
    
    // F note frequency
    349.23 => s.freq;
    .4::second => now;
    <<< "lah!!" >>>; 
    100 => s.freq;
    .1::second => now;
    
    // A note frequency
    440.00 => s.freq;
    .4::second => now;
    <<< "lah!!" >>>; 
    100 => s.freq;
    .1::second => now;
}

// create a loop to play the next four loops
// this is E, G, B written the long way

for( 0 => int i; i < 4; i++)
{
    // E note frequency
    329.64 => s.freq;
    .4::second => now;
    <<< "lah!!!" >>>; 
    100 => s.freq;
    .1::second => now;
    
    // G note frequency
    392.00 => s.freq;
    .4::second => now;
    <<< "lah!!!" >>>; 
    100 => s.freq;
    .1::second => now;
    
    // B note frequency
    493.88 => s.freq;
    .4::second => now;
    <<< "lah!!!" >>>; 
    100 => s.freq;
    .1::second => now;
}

// create a loop to play the final four loops
// this is F, A, C written the long way

for( 0 => int i; i < 4; i++)
{
    // F note frequency
    523.25 => s.freq;
    .4::second => now;
    <<< "LAH!!!!" >>>; 
    100 => s.freq;
    .1::second => now;
    
    // A note frequency
    440.00 => s.freq;
    .4::second => now;
    <<< "LAH!!!!" >>>; 
    100 => s.freq;
    .1::second => now;
    
    // C note frequency
    349.23 => s.freq;
    .4::second => now;
    <<< "LAH!!!!" >>>; 
    100 => s.freq;
    .1::second => now;
}

// end arpeggio melody
// start pitch sweep

// create dramatic ending variable
1 => int dramaticEnding;

// use an if statement just because
if( dramaticEnding == 1 )
{
    for( 349 => int i; i < 409; i++)
    {
        // print the audience appreciation
        <<< "Whoa" >>>;
        // chuck the value of i to the oscillator frequency 
        i => s.freq;
        // update every 0.1 of a second
        0.1::second => now;
    }
}

else
{
    // set new frequency
    349 => s.freq;
    // play for 6 seconds
    6::second => now;
}

// end on a high note
<<< "KABOOOM!" >>>;
