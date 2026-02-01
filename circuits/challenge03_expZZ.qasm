OPENQASM 2.0;
include "qelib1.inc";

// Challenge 3: exp(i*pi/7 * Z ⊗ Z)
// Implemented using CNOT sandwich
// Phase approximated using repeated T gates

qreg q[2];

cx q[0], q[1];

// Approximate Rz(2π/7) using T gates
t q[1];
t q[1];
t q[1];

cx q[0], q[1];