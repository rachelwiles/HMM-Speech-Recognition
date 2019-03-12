# HMM Speech Recognition

## Training a hidden Markov model through expectation-maximization, using Baum-Welch formulae, for applications in speech recognition.

### MATLAB assignment 

**A matrix, B matrix and time steps must be added to read_initialmatiricies 
before use.**

Run in the following order:

1. read_initialmatricies
2. calc_B
3. calc_forward
4. calc_backward
5. get_occupationlikelihoods
6. reestimate_meanvariance
7. gauss_graph
8. get_transitionlikelihoods
9. reestimate_A

File retrain.m may be used to perform many iterations of above procedure.