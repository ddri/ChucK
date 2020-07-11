// Initiates an oscillator and chucks it to the outputs

SinOsc s => dac;

// Sets a value for gain. This will be a consistent gain 
// value across each frequency as the same perceived loudness.

.5 => s.gain;

// Specifying the frequency bottom and top limits, as well
// as setting the log to report the freq value so I can
// feel bad about getting old and losing frequency range.

for(0 => int i; i<=20000; i++){
    i => s.freq;
    1;;ms => now;
    <<<"freq; ", i>>>;
    
}
