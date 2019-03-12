%% Use backward procedure to calculate backward likelihood
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

% From lecture slides J.4

%% Initialise
% At t = 8

beta8_1 = A(2,5);
beta8_2 = A(3,5);
beta8_3 = A(4,5);

%% Recur for t = 7,6,5,4,3,2,1
% At t = 7
beta7_1 = (A(2,4) * b3_o8 * beta8_3) + (A(2,3) * b2_o8 * beta8_2) + (A(2,2) * b1_o8 * beta8_1);
beta7_2 = (A(3,4) * b3_o8 * beta8_3) + (A(3,3) * b2_o8 * beta8_2);
beta7_3 = A(4,4) * b3_o8 * beta8_3;

% At t = 6
beta6_1 = (A(2,4) * b3_o7 * beta7_3) + (A(2,3) * b2_o7 * beta7_2) + (A(2,2) * b1_o7 * beta7_1);
beta6_2 = (A(3,4) * b3_o7 * beta7_3) + (A(3,3) * b2_o7 * beta7_2);
beta6_3 = A(4,4) * b3_o7 * beta7_3;

% At t = 5
beta5_1 = (A(2,4) * b3_o6 * beta6_3) + (A(2,3) * b2_o6 * beta6_2) + (A(2,2) * b1_o6 * beta6_1);
beta5_2 = (A(3,4) * b3_o6 * beta6_3) + (A(3,3) * b2_o6 * beta6_2);
beta5_3 = A(4,4) * b3_o6 * beta6_3;

% At t = 4
beta4_1 = (A(2,4) * b3_o5 * beta5_3) + (A(2,3) * b2_o5 * beta5_2) + (A(2,2) * b1_o5 * beta5_1);
beta4_2 = (A(3,4) * b3_o5 * beta5_3) + (A(3,3) * b2_o5 * beta5_2);
beta4_3 = A(4,4) * b3_o5 * beta5_3;

%At t = 3
beta3_1 = (A(2,4) * b3_o4 * beta4_3) + (A(2,3) * b2_o4 * beta4_2) + (A(2,2) * b1_o4 * beta4_1);
beta3_2 = (A(3,4) * b3_o4 * beta4_3) + (A(3,3) * b2_o4 * beta4_2);
beta3_3 = A(4,4) * b3_o4 * beta4_3;

%At t = 2
beta2_1 = (A(2,4) * b3_o3 * beta3_3) + (A(2,3) * b2_o3 * beta3_2) + (A(2,2) * b1_o3 * beta3_1);
beta2_2 = (A(3,4) * b3_o3 * beta3_3) + (A(3,3) * b2_o3 * beta3_2);
beta2_3 = A(4,4) * b3_o3 * beta3_3;

%At t = 1
beta1_1 = (A(2,4) * b3_o2 * beta2_3) + (A(2,3) * b2_o2 * beta2_2) + (A(2,2) * b1_o2 * beta2_1);
beta1_2 = (A(3,4) * b3_o2 * beta2_3) + (A(3,3) * b2_o2 * beta2_2);
beta1_3 = A(4,4) * b3_o2 * beta2_3;

%% Finalise

backward = (pi_1 * b1_o1 * beta1_1) + (pi_2 * b2_o1 * beta1_2) + (pi_3 * b3_o1 * beta1_3)

% Display results of backwards procedure