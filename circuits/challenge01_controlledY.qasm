OPENQASM 2.0;
include "qelib1.inc";

// Challenge 1: Controlled-Y
// Sanity check to verify submission pipeline
// Y = S X S†, implemented using T gates only

qreg q[2];

// S† on target (Tdg Tdg)
tdg q[1];
tdg q[1];

// Controlled-X
cx q[0], q[1];

// S on target (T T)
t q[1];
t q[1];