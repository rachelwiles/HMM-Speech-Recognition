%% Calculate transition likelihoods 
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

% Starting from t = 2 as assuming no transition likelihood from entry to t
% = 1

% Lecture slides J.14 and homework 5

%% Calculate transition likelihoods

% For entry...
transition1_entryto1 = (pi_1 * b1_o1 * beta1_1) / average_P;
transition1_entryto2 = (pi_2 * b2_o1 * beta1_2) / average_P;
transition1_entryto3 = (pi_3 * b3_o1 * beta1_3) / average_P;


% From states 1 to 2...
transition2_1to2 = (alpha1_1 * A(2,3) * b2_o2 * beta2_2) / average_P;
transition3_1to2 = (alpha2_1 * A(2,3) * b2_o3 * beta3_2) / average_P;
transition4_1to2 = (alpha3_1 * A(2,3) * b2_o4 * beta4_2) / average_P;
transition5_1to2 = (alpha4_1 * A(2,3) * b2_o5 * beta5_2) / average_P;
transition6_1to2 = (alpha5_1 * A(2,3) * b2_o6 * beta6_2) / average_P;
transition7_1to2 = (alpha6_1 * A(2,3) * b2_o7 * beta7_2) / average_P;
transition8_1to2 = (alpha7_1 * A(2,3) * b2_o8 * beta8_2) / average_P;


% From states 1 to 3...
transition2_1to3 = (alpha1_1 * A(2,4) * b3_o2 * beta2_3) / average_P;
transition3_1to3 = (alpha2_1 * A(2,4) * b3_o3 * beta3_3) / average_P;
transition4_1to3 = (alpha3_1 * A(2,4) * b3_o4 * beta4_3) / average_P;
transition5_1to3 = (alpha4_1 * A(2,4) * b3_o5 * beta5_3) / average_P;
transition6_1to3 = (alpha5_1 * A(2,4) * b3_o6 * beta6_3) / average_P;
transition7_1to3 = (alpha6_1 * A(2,4) * b3_o7 * beta7_3) / average_P;
transition8_1to3 = (alpha7_1 * A(2,4) * b3_o8 * beta8_3) / average_P;


% From states 2 to 3...
transition2_2to3 = (alpha1_2 * A(3,4) * b3_o2 * beta2_3) / average_P;
transition3_2to3 = (alpha2_2 * A(3,4) * b3_o3 * beta3_3) / average_P;
transition4_2to3 = (alpha3_2 * A(3,4) * b3_o4 * beta4_3) / average_P;
transition5_2to3 = (alpha4_2 * A(3,4) * b3_o5 * beta5_3) / average_P;
transition6_2to3 = (alpha5_2 * A(3,4) * b3_o6 * beta6_3) / average_P;
transition7_2to3 = (alpha6_2 * A(3,4) * b3_o7 * beta7_3) / average_P;
transition8_2to3 = (alpha7_2 * A(3,4) * b3_o8 * beta8_3) / average_P;


% For exit... 
transition9_exitfrom1 = (alpha8_1 * A(2,5)) / average_P;
transition9_exitfrom2 = (alpha8_2 * A(3,5)) / average_P;
transition9_exitfrom3 = (alpha8_3 * A(4,5)) / average_P;