%% From matrix of state transition probabilities

A = [0, 0.93, 0.07, 0, 0; 0, 0.84, 0.11, 0.05, 0; 0, 0, 0.88, 0.08, 0.04; 0, 0, 0, 0.91, 0.09; 0, 0, 0, 0, 0];

pi_1 = A(1,2);
pi_2 = A(1,3);
pi_3 = A(1,4);

%% B matrix

B = [1.90, 3.40, 5.10; 0.16, 0.81, 0.25];

%%  Time frames

O = [1.3, 2.3, 2.8, 3.3, 5.0, 5.6, 4.9, 5.9];

%% Homework 1
% %At t=1
% 
% alpha1_1 = pi_1 * B(1,1);
% alpha1_2 = pi_2 * B(2,1);
% 
% %At t = 2
% 
% alpha2_1 = alpha1_1 * A(2,2) * B(1,2);
% alpha2_2 = alpha1_1 * A(2,3) * B(2,2);
% 
% %At t = 3
% 
% alpha3_1 = alpha2_1 * A(2,2) * B(1,3);
% alpha3_2 = ((alpha2_1 * A(2,3)) + (alpha2_2 * A(3,3))) * B(2,3);
% 
% %% Overall likelihood
% likelihood = alpha3_2 * A(4,5);


