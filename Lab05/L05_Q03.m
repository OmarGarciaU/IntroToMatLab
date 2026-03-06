%Omar Garcia
%L05_Q03

%Get an input of 5 x variables in the form a column vector with 5 elements
%in it. Calculate the coresponding Vandermonde Matrix.

%Variables
%anVals: X values for the column vector matrix
%aanVMatrix: The Vandermonde matrix.

%Clear all 
clear all

%Get input
anVals = input("Enter a column vector of 5 x values: ");

%Generate Vandermonde Matrix
aanVMatrix = ones(5);
aanVMatrix(:,2:5) = [anVals anVals.^2 anVals.^3 anVals.^4];

%Print Matrix
fprintf("The corresponding Vandermonde matrix is: \n")
disp(aanVMatrix);
