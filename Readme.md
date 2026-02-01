# iQuHACK 2026 – Superquantum Challenge

This repository contains my submissions for the Superquantum
Clifford+T compilation challenge at iQuHACK 2026.

I focused on a small set of challenges where the target unitaries
had clear algebraic or Clifford structure, and implemented
straightforward Clifford+T decompositions.

## Submitted Challenges

- **Challenge 1 – Controlled-Y**
  - Implemented as a basic sanity check to verify the submission pipeline.
  - The Y operation was decomposed using phase and X gates expressed in the Clifford+T set.

- **Challenge 3 – exp(iπ/7 · Z ⊗ Z)**
  - Implemented using a standard CNOT sandwich construction.
  - The required phase rotation was approximated using T gates.

- **Challenge 4 – exp(iπ/7 · (XX + YY))**
  - Used the Clifford equivalence that maps (XX + YY) to a ZZ interaction under H ⊗ H.
  - Reused the same structure as in Challenge 3.

- **Challenge 8 – Structured Unitary 1**
  - Identified a Hadamard-like structure with additional phase relationships.
  - Implemented primarily using Clifford operations with small phase adjustments.

## Notes

- All circuits are written in OpenQASM 2.
- Only the allowed gate set {H, T, T†, CNOT} is used.
- The focus was on correctness and understanding the structure of the unitaries rather than full T-count optimization.