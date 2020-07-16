// sound network
SinOsc s => dac;

// middle C freq (in hz)
261.63 => float myFreq;

// variable for volume control
0.6 => float myVol;

// set frequency from var
myFreq => s.freq;

//set volume from var
myVol => s.gain;

// one second duration
1::second => now;
