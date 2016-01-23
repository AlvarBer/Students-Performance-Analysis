source('../data/getData.m');
source('logReg/logReg.m');
source('neuralNetwork/neuralNetwork.m');
source('svm/svm.m');


% Data Load
[X, y] = getData('../data/student-por.csv');

% Normalization
X(:, 3) = (X(:, 3) - 15) / 7;
%X(:, 31) = X(:, 31) / 20;
%X(:, 32) = X(:, 32) / 20;
y(find(y < 10)) = 0;
y(find(y >= 10)) = 1;

% Options
lCurves = false; % Set this to true to see learning curves
ignore_function_time_stamp ('all'); % Black Magic Optimization tricks

% Logistic Regression Analysis
%theta = logReg(X, y, lCurves);

% Neural Network Analysis
theta = neuralNetwork(X, y, lCurves);

% Support Vector Machine Analysis
%model = svm(X, y);
