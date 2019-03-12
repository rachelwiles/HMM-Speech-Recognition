%% Calculate occupation likelihoods from alpha and beta values found by forward and backward procedure
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

% If P(O_lamda) values aren't the same in the forward and backward, take
% the average...

average_P = (forward + backward) / 2;

%% Calculate occupational likelihoods

% gammat(i) = alphat(i) * betat(i) / P(O_lamda)

% For the first state...
gamma1_1 = (alpha1_1 * beta1_1) / average_P;
gamma2_1 = (alpha2_1 * beta2_1) / average_P;
gamma3_1 = (alpha3_1 * beta3_1) / average_P;
gamma4_1 = (alpha4_1 * beta4_1) / average_P;
gamma5_1 = (alpha5_1 * beta5_1) / average_P;
gamma6_1 = (alpha6_1 * beta6_1) / average_P;
gamma7_1 = (alpha7_1 * beta7_1) / average_P;
gamma8_1 = (alpha8_1 * beta8_1) / average_P;

% For the second state...
gamma1_2 = (alpha1_2 * beta1_2) / average_P;
gamma2_2 = (alpha2_2 * beta2_2) / average_P;
gamma3_2 = (alpha3_2 * beta3_2) / average_P;
gamma4_2 = (alpha4_2 * beta4_2) / average_P;
gamma5_2 = (alpha5_2 * beta5_2) / average_P;
gamma6_2 = (alpha6_2 * beta6_2) / average_P;
gamma7_2 = (alpha7_2 * beta7_2) / average_P;
gamma8_2 = (alpha8_2 * beta8_2) / average_P;

% For the third state...
gamma1_3 = (alpha1_3 * beta1_3) / average_P;
gamma2_3 = (alpha2_3 * beta2_3) / average_P;
gamma3_3 = (alpha3_3 * beta3_3) / average_P;
gamma4_3 = (alpha4_3 * beta4_3) / average_P;
gamma5_3 = (alpha5_3 * beta5_3) / average_P;
gamma6_3 = (alpha6_3 * beta6_3) / average_P;
gamma7_3 = (alpha7_3 * beta7_3) / average_P;
gamma8_3 = (alpha8_3 * beta8_3) / average_P;

