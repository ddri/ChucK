// set the value for the alarm countdown
// and assign it to a variable
now + 10::second => time later; 

// create the while loop
while( now < later )
{
    // print out the time left
    <<< "time left:", (later-now)/second >>>;
    // advance time
    1::second => now;
}

// loop is satisfied so run the following
<<< "IT'S TIME!!!" >>>;

// loop is satisfied so also run the following
// create an oscillator, assign a variable, assign to dac
SinOsc foo => dac;

// assign a frequency value
880 => foo.freq;

//assign a duration value 
2::second => now;
