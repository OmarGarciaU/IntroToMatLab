%Omar Garcia 
%L05_Q06

%Get input of User using company A, B, or none and place it into a vector
%for each. Calculate who switched and who is using each item/vector.
%Display the values. 

%Variables
%anDataA: How many people are using company A
%anDataB: How many people are using company B
%anDataC: How many people are using none
%T: probality value matrix
%p1: Month One
%p2: Month Two
%p3: Month three
%p4: Month four
%p5: Month five
%aanData: Matrix of p1-p5


%Clear All 
clear all 

% Markov Chain ISP Problem
% Prompt user for initial households in each state
afDataA = input("Enter number of people using ISP A: ");
afDataB = input("Enter number of people using ISP B: ");
afDataC = input("Enter number of people with no ISP: ");

% Initial state vector
p0 = [afDataA; afDataB; afDataC];

% State transition matrix
T = [0.6  0.2  0.4; 0.35 0.7  0.4; 0.05 0.1  0.2];

% Calculate state vectors for months 1 through 5
p1 = T * p0;
p2 = T * p1;
p3 = T * p2;
p4 = T * p3;
p5 = T * p4;

% Print each month's results
fprintf("Number of people at each ISP after 1 month(s) is: \n")
disp(p1)

fprintf("Number of people at each ISP after 2 month(s) is: \n")
disp(p2)

fprintf("Number of people at each ISP after 3 month(s) is: \n")
disp(p3)

fprintf("Number of people at each ISP after 4 month(s) is: \n")
disp(p4)

fprintf("Number of people at each ISP after 5 month(s) is: \n")
disp(p5)

% Build and print the full matrix (each column = one month)
aanData = [p1, p2, p3, p4, p5];
fprintf("Number of people at each ISP after each month is: \n");
disp(aanData)