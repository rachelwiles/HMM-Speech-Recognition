%% Use forward procedure to calculate forward likelihood
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

% From lecture slides J.3

%% Initialise
% At t = 1 

alpha1_1 = pi_1 * b1_o1;
alpha1_2 = pi_2 * b2_o1;
alpha1_3 = pi_3 * b3_o1;

%% Recur for t = 2,3,4,5,6,7,8

% At t = 2
alpha2_1 = alpha1_1 * A(2,2) * b1_o2;
alpha2_2 = ((alpha1_1 * A(2,3)) + (alpha1_2 * A(3,3)))* b2_o2;
alpha2_3 = ((alpha1_1 * A(2,4)) + (alpha1_2 * A(3,4)) + (alpha1_3 * A(4,4))) * b3_o2;

% At t = 3
alpha3_1 = alpha2_1 * A(2,2) * b1_o3;
alpha3_2 = ((alpha2_1 * A(2,3)) + (alpha2_2 * A(3,3)))* b2_o3;
alpha3_3 = ((alpha2_1 * A(2,4)) + (alpha2_2 * A(3,4)) + (alpha2_3 * A(4,4))) * b3_o3;

% At t = 4
alpha4_1 = alpha3_1 * A(2,2) * b1_o4;
alpha4_2 = ((alpha3_1 * A(2,3)) + (alpha3_2 * A(3,3)))* b2_o4;
alpha4_3 = ((alpha3_1 * A(2,4)) + (alpha3_2 * A(3,4)) + (alpha3_3 * A(4,4))) * b3_o4;

% At t = 5
alpha5_1 = alpha4_1 * A(2,2) * b1_o5;
alpha5_2 = ((alpha4_1 * A(2,3)) + (alpha4_2 * A(3,3)))* b2_o5;
alpha5_3 = ((alpha4_1 * A(2,4)) + (alpha4_2 * A(3,4)) + (alpha4_3 * A(4,4))) * b3_o5;

% At t = 6
alpha6_1 = alpha5_1 * A(2,2) * b1_o6;
alpha6_2 = ((alpha5_1 * A(2,3)) + (alpha5_2 * A(3,3)))* b2_o6;
alpha6_3 = ((alpha5_1 * A(2,4)) + (alpha5_2 * A(3,4)) + (alpha5_3 * A(4,4))) * b3_o6;

% At t = 7
alpha7_1 = alpha6_1 * A(2,2) * b1_o7;
alpha7_2 = ((alpha6_1 * A(2,3)) + (alpha6_2 * A(3,3)))* b2_o7;
alpha7_3 = ((alpha6_1 * A(2,4)) + (alpha6_2 * A(3,4)) + (alpha6_3 * A(4,4))) * b3_o7;

% At t = 8
alpha8_1 = alpha7_1 * A(2,2) * b1_o8;
alpha8_2 = ((alpha7_1 * A(2,3)) + (alpha7_2 * A(3,3)))* b2_o8;
alpha8_3 = ((alpha7_1 * A(2,4)) + (alpha7_2 * A(3,4)) + (alpha7_3 * A(4,4))) * b3_o8;

%% Finalise

forward = (alpha8_2 * A(3,5)) + (alpha8_3 * A(4,5))

% Display results of forward procedure
