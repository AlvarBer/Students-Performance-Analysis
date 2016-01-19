%source("data/getData.m");
source('logReg/logReg.m');
source('neuralNetwork/neuralNetwork.m');
source('svm/svm.m');

%{
source("machineLearning/logReg.m");
source("machineLearning/neuralNewtork.m");
source("machineLearning/svm.m");	
%}

% Preprocess the input file so Octave/MATLAB can parse input
%system('../data/octavize.sh');

% Data Load
%data = csvread('../data/student-mat.csv');
data = csvread('../data/student-mat-oct.csv');

% Data feature pick
X = data(:, 1:32);
y = data(:, 33);

% Normalization
y = y/20;

% Options
lCurves = false; % Set this to true to see learning curves
%ignore_function_time_stamp ('all'); % Black Magic Optimization tricks

% Logistic Regression Analysis
theta = logReg(X, y, lCurves);

% Neural Network Analysis
%theta = neuralNetwork(X, y, lCurves);

% Support Vector Machine Analysis
% model = svm(X, y);