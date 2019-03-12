%% Calculate values for B at each time step in each state
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

%i = state
%t = time increment 
%from L5 slide, Univariate Gaussian...

%bi(ot) = (1/(sqrt(2*pi*variancei)))*exp((-(t-meani)^2)/(2*variancei));

%% For the first state

b1_o1 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(1)-B(1,1))^2)/(2*B(2,1)));
b1_o2 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(2)-B(1,1))^2)/(2*B(2,1)));
b1_o3 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(3)-B(1,1))^2)/(2*B(2,1)));
b1_o4 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(4)-B(1,1))^2)/(2*B(2,1)));
b1_o5 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(5)-B(1,1))^2)/(2*B(2,1)));
b1_o6 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(6)-B(1,1))^2)/(2*B(2,1)));
b1_o7 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(7)-B(1,1))^2)/(2*B(2,1)));
b1_o8 = (1/(sqrt(2*pi*B(2,1))))*exp((-(O(8)-B(1,1))^2)/(2*B(2,1)));

%% For the second state

b2_o1 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(1)-B(1,2))^2)/(2*B(2,2)));
b2_o2 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(2)-B(1,2))^2)/(2*B(2,2)));
b2_o3 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(3)-B(1,2))^2)/(2*B(2,2)));
b2_o4 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(4)-B(1,2))^2)/(2*B(2,2)));
b2_o5 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(5)-B(1,2))^2)/(2*B(2,2)));
b2_o6 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(6)-B(1,2))^2)/(2*B(2,2)));
b2_o7 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(7)-B(1,2))^2)/(2*B(2,2)));
b2_o8 = (1/(sqrt(2*pi*B(2,2))))*exp((-(O(8)-B(1,2))^2)/(2*B(2,2)));

%% For the third state

b3_o1 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(1)-B(1,3))^2)/(2*B(2,3)));
b3_o2 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(2)-B(1,3))^2)/(2*B(2,3)));
b3_o3 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(3)-B(1,3))^2)/(2*B(2,3)));
b3_o4 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(4)-B(1,3))^2)/(2*B(2,3)));
b3_o5 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(5)-B(1,3))^2)/(2*B(2,3)));
b3_o6 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(6)-B(1,3))^2)/(2*B(2,3)));
b3_o7 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(7)-B(1,3))^2)/(2*B(2,3)));
b3_o8 = (1/(sqrt(2*pi*B(2,3))))*exp((-(O(8)-B(1,3))^2)/(2*B(2,3)));

%% Establish new B matrix

B_values = [b1_o1 b2_o1 b3_o1;
    b1_o2 b2_o2 b3_o2;
    b1_o3 b2_o3 b3_o3;
    b1_o4 b2_o4 b3_o4;
    b1_o5 b2_o5 b3_o5;
    b1_o6 b2_o6 b3_o6;
    b1_o7 b2_o7 b3_o7;
    b1_o8 b2_o8 b3_o8]

% Displays B values
