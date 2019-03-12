%% Reestimate the mean and the variance parameters
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

% Lecture slide L11

%% Reestimate the mean

mean1_ml = ((gamma1_1*O(1)) + (gamma2_1*O(2)) + (gamma3_1*O(3)) + (gamma4_1*O(4)) + (gamma5_1*O(5)) + (gamma6_1*O(6)) + (gamma7_1*O(7)) + (gamma8_1*O(8))) / (gamma1_1 + gamma2_1 + gamma3_1 + gamma4_1 + gamma5_1 + gamma6_1 + gamma7_1 + gamma8_1);
mean2_ml = ((gamma1_2*O(1)) + (gamma2_2*O(2)) + (gamma3_2*O(3)) + (gamma4_2*O(4)) + (gamma5_2*O(5)) + (gamma6_2*O(6)) + (gamma7_2*O(7)) + (gamma8_2*O(8))) / (gamma1_2 + gamma2_2 + gamma3_2 + gamma4_2 + gamma5_2 + gamma6_2 + gamma7_2 + gamma8_2);
mean3_ml = ((gamma1_3*O(1)) + (gamma2_3*O(2)) + (gamma3_3*O(3)) + (gamma4_3*O(4)) + (gamma5_3*O(5)) + (gamma6_3*O(6)) + (gamma7_3*O(7)) + (gamma8_3*O(8))) / (gamma1_3 + gamma2_3 + gamma3_3 + gamma4_3 + gamma5_3 + gamma6_3 + gamma7_3 + gamma8_3);

%% Reestimate the variance

variance1_ml = ((gamma1_1 * (O(1) - B(1,1)) * ((O(1) - B(1,1)).')) + (gamma2_1 * (O(2) - B(1,1)) * ((O(2) - B(1,1)).')) + (gamma3_1 * (O(3) - B(1,1)) * ((O(3) - B(1,1)).')) + (gamma4_1 * (O(4) - B(1,1)) * ((O(4) - B(1,1)).')) + (gamma5_1 * (O(5) - B(1,1)) * ((O(5) - B(1,1)).')) + (gamma6_1 * (O(6) - B(1,1)) * ((O(6) - B(1,1)).')) + (gamma7_1 * (O(7) - B(1,1)) * ((O(7) - B(1,1)).')) + (gamma8_1 * (O(8) - B(1,1)) * ((O(8) - B(1,1)).'))) / (gamma1_1 + gamma2_1 + gamma3_1 + gamma4_1 + gamma5_1 + gamma6_1 + gamma7_1 + gamma8_1);
variance2_ml = ((gamma1_2 * (O(1) - B(1,2)) * ((O(1) - B(1,2)).')) + (gamma2_2 * (O(2) - B(1,2)) * ((O(2) - B(1,2)).')) + (gamma3_2 * (O(3) - B(1,2)) * ((O(3) - B(1,2)).')) + (gamma4_2 * (O(4) - B(1,2)) * ((O(4) - B(1,2)).')) + (gamma5_2 * (O(5) - B(1,2)) * ((O(5) - B(1,2)).')) + (gamma6_2 * (O(6) - B(1,2)) * ((O(6) - B(1,2)).')) + (gamma7_2 * (O(7) - B(1,2)) * ((O(7) - B(1,2)).')) + (gamma8_2 * (O(8) - B(1,2)) * ((O(8) - B(1,2)).'))) / (gamma1_2 + gamma2_2 + gamma3_2 + gamma4_2 + gamma5_2 + gamma6_2 + gamma7_2 + gamma8_2);
variance3_ml = ((gamma1_3 * (O(1) - B(1,3)) * ((O(1) - B(1,3)).')) + (gamma2_3 * (O(2) - B(1,3)) * ((O(2) - B(1,3)).')) + (gamma3_3 * (O(3) - B(1,3)) * ((O(3) - B(1,3)).')) + (gamma4_3 * (O(4) - B(1,3)) * ((O(4) - B(1,3)).')) + (gamma5_3 * (O(5) - B(1,3)) * ((O(5) - B(1,3)).')) + (gamma6_3 * (O(6) - B(1,3)) * ((O(6) - B(1,3)).')) + (gamma7_3 * (O(7) - B(1,3)) * ((O(7) - B(1,3)).')) + (gamma8_3 * (O(8) - B(1,3)) * ((O(8) - B(1,3)).'))) / (gamma1_3 + gamma2_3 + gamma3_3 + gamma4_3 + gamma5_3 + gamma6_3 + gamma7_3 + gamma8_3);


B_ml = [mean1_ml mean2_ml mean3_ml; variance1_ml variance2_ml variance3_ml]

% Display new B matrix