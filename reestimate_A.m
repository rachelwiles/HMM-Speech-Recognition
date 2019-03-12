%% Reestimate the A matrix using Baum-Welch training
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

% Lecture slides J.15

%% State transition probabilities...
a_entry1 = transition1_entryto1 / (gamma1_1 + gamma2_1 + gamma3_1 + gamma4_1 + gamma5_1 + gamma6_1 + gamma7_1 + gamma8_1);
a_entry2 = transition1_entryto2 / (gamma1_2 + gamma2_2 + gamma3_2 + gamma4_2 + gamma5_2 + gamma6_2 + gamma7_2 + gamma8_2);
a_entry3 = transition1_entryto3 / (gamma1_3 + gamma2_3 + gamma3_3 + gamma4_3 + gamma5_3 + gamma6_3 + gamma7_3 + gamma8_3);

a_1to2 = (transition2_1to2 + transition3_1to2 + transition4_1to2 + transition5_1to2 + transition6_1to2 + transition7_1to2 + transition8_1to2) / (gamma1_1 + gamma2_1 + gamma3_1 + gamma4_1 + gamma5_1 + gamma6_1 + gamma7_1 + gamma8_1);
a_1to3 = (transition2_1to3 + transition3_1to3 + transition4_1to3 + transition5_1to3 + transition6_1to3 + transition7_1to3 + transition8_1to3) / (gamma1_1 + gamma2_1 + gamma3_1 + gamma4_1 + gamma5_1 + gamma6_1 + gamma7_1 + gamma8_1);
a_2to3 = (transition2_2to3 + transition3_2to3 + transition4_2to3 + transition5_2to3 + transition6_2to3 + transition7_2to3 + transition8_2to3) / (gamma1_2 + gamma2_2 + gamma3_2 + gamma4_2 + gamma5_2 + gamma6_2 + gamma7_2 + gamma8_2);

a_exit1 = transition9_exitfrom1 / (gamma1_1 + gamma2_1 + gamma3_1 + gamma4_1 + gamma5_1 + gamma6_1 + gamma7_1 + gamma8_1);
a_exit2 = transition9_exitfrom2 / (gamma1_2 + gamma2_2 + gamma3_2 + gamma4_2 + gamma5_2 + gamma6_2 + gamma7_2 + gamma8_2);
a_exit3 = transition9_exitfrom3 / (gamma1_3 + gamma2_3 + gamma3_3 + gamma4_3 + gamma5_3 + gamma6_3 + gamma7_3 + gamma8_3);


%% Self loop probabilities...
selfloop_1 = 1 - (a_1to2 + a_1to3 + a_exit1);
selfloop_2 = 1 - (a_2to3 + a_exit2);
selfloop_3 = 1 - a_exit3;


%% Reestimate A matix
A_ml = [0 a_entry1 a_entry2 a_entry3 0; 0 selfloop_1 a_1to2 a_1to3 a_exit1; 0 0 selfloop_2 a_2to3 a_exit2; 0 0 0 selfloop_3 a_exit3; 0 0 0 0 0]

% Display new A matrix