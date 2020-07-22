
// print current now value in vm runtime
// dafaults to sample rate
<<< "now:", now >>>;

// print current now value as seconds
<<< "now:", now / second >>>;

// assign a three second offset to now value
3::second => now;

// print the new now value after offset amount
<<< "NEW now (in second):", now / second >>>;