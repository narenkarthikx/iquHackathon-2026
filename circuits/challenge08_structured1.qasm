OPENQASM 2.0;
include "qelib1.inc";

// Challenge 8: Structured unitary
// Matrix resembles Hadamard structure with phase shifts
// Implemented mostly with Clifford gates

qreg q[2];

// Create uniform superposition
h q[0];
h q[1];

// Introduce relative phases using T gates
t q[1];
t q[1];

// Entangle and adjust phases
cx q[0], q[1];

// Reverse phase on target
tdg q[1];
tdg q[1];

cx q[0], q[1];