
// sound network
SinOsc s => dac;

// setting frequency
222.45 => s.freq;

// setting volume
0.2 => s.gain;

// chance variable
1 => int chance;

// example if statement with or statement
// could also use && and example
if( (chance == 1 ) || (chance == 5 ) )
{
	// sound only plays if chance == 1 or 5
	1::second => now;
}

else
{
	// set new frequency
	400.32 => s.freq;
	// play for 3 seconds
	3::second => now;
}