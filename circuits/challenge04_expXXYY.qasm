OPENQASM 2.0;
include "qelib1.inc";

// Challenge 4: exp(i*pi/7 * (XX + YY))
// Using Clifford equivalence:
// (XX + YY) -> ZZ under H ⊗ H

qreg q[2];

// Map XX+YY to ZZ
h q[0];
h q[1];

cx q[0], q[1];

// Same phase structure as Challenge 3
t q[1];
t q[1];
t q[1];

cx q[0], q[1];

// Map back
h q[0];
h q[1];