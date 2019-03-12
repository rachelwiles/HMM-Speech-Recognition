%% Plot the Gaussian graphs of each state of the system
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

%y = normpdf(x,mean,variance)

%% Range of x values
%Found to need to go from 1-7 after testing with inital B matrix
x = 0:0.1:7;

%% For the first state
% Original...
y1 = normpdf(x,B(1,1),B(2,1));
plot(x,y1,'g')

hold on
% Reestimated...
y1_ml = normpdf(x,B_ml(1,1),B_ml(2,1));
plot(x,y1_ml,'g--')

%% For the second state
% Original...
y2 = normpdf(x,B(1,2),B(2,2));
plot(x,y2,'b')

% Reestimated...
y2_ml = normpdf(x,B_ml(1,2),B_ml(2,2));
plot(x,y2_ml,'b--')

%% For the third state
% Original...
y3 = normpdf(x,B(1,3),B(2,3));
plot(x,y3,'r')

% Reestimated...
y3_ml = normpdf(x,B_ml(1,3),B_ml(2,3));
plot(x,y3_ml,'r--')

%% Label graph
xlabel('Gaussian membership function')
legend('State 1', 'State 1 reestimated', 'State 2', 'State 2 reestimated', 'State 3', 'State 3 reestimated')


hold off
