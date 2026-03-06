%Omar Garcia
%L05_Q08

%Get input for rows columns min and max to generate a matrix of random
%integers. Then get input for a row and a column to delete

%Varables 
%nRows: inputed row amount of random matrix
%nCols: inputed col amount of random matrix
%fMin: minimum value of random range
%fMax: maximum value of random range
%aanRngMatrix: generated matrix with random integers


%Clear all
clear all 

% Remove Row and Column Script
% Prompt user for matrix dimensions and value range
nRows = input("Enter the number of rows: ");
nCols = input("Enter the number of columns: ");
fMin = input("Enter the minimum random integer: ");
fMax = input("Enter the maximum random integer: ");

% Generate random matrix
aanRngMatrix = randi([fMin,fMax],nRows,nCols);

fprintf("The random matrix is: \n");
disp(aanRngMatrix);

% Prompt for row and column to remove
nRow = input("Enter the number of the row to remove: ");
nCol = input("Enter the number of the column to remove: ");

%Remove row and col
aanNewMatrix = aanRngMatrix([1:nRow-1,nRow+1:nRows], [1:nCol-1, nCol+1:nCols]);


fprintf("The new matrix is: \n");
disp(aanNewMatrix);