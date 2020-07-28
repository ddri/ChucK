// sound chain
// assign to s variable
// chuck to p variable for Pan2 function
SinOsc s => Pan2 p => dac;

// -1 is on one side and 1 is on the other
// floating point range

// hard pan example
1.0 => p.pan;

// advance time
1::second => now;