

// Create a sine wave and name it and throw to the dac

SinOsc foo => dac;

// Create a frequency for the sine wave

440 => foo.freq;

// Create a duration

2::second => now;
