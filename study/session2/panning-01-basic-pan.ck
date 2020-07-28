// sound network

// assign to left speaker
SinOsc s => dac.left;

// assign to right speaker
SinOsc t => dac.right;

// set frequencies

220.35 => s.freq;
330.67 => t.freq;

// advance time
1::second => now;

// it would also be possible to assign 
// to a unique audio channel
//
// SinOsc s => dac.chan(0);
// SinOsc t => dac.chan(1);
// SinOsc u => dac.chan(2);
// SinOsc v => dac.chan(3);
