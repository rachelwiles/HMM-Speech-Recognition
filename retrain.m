%% Retrain model
%% Assignment 2 - Speech and Audio Processing and Recognition EEEM030
%% Rachel Wiles MSc Computer Vision, Robotics and Machine Learning
%% Jan 2019 

% Need to change B_ml in reestimate_meanvariance to B, 
% and A_ml in reestimate_A to A before running.

%% Retrain
calc_B;
calc_forward;
calc_backward;
get_occupationlikelihoods;
reestimate_meanvariance
get_transitionlikelihoods;
reestimate_A

