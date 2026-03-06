%Omar Garcia
%L05_Q01

%Get input from the user for the row number and column number and creast an
%nxm matrix with the given values. Also get min and max range input from
%the user and generate the m x n matrix filled with random number from the
%range given. Then prompt the user for a row to exract, then print that
%row. Finally, pronpt the user for a column, then fill that column with
%random integers.

%Variables
%aanData: Matrix to fill with integers
%nRows: Number of rows 
%nCols: Number of Columns
%nMin: Lowest random number
%nMax: Highest random number 
%aExtRow: vector of extracted Row
%nRowExt: number of row to extract
%nColRep: number of column to replace

%Clear all
clear all

%Get input for rows cols min and max
nRows = input("Enter the number of rows: ");
nCols = input("Enter the number of columns: ");
nMin = input("Enter the minimum random number: ");
nMax = input("Enter the maximum random number: ");

%Create the matrix
aanData = randi([nMin, nMax], nRows, nCols);

%print Matrix
fprintf("The original random matrix is: \n");
disp(aanData);

%Extract Row
nRowExt = input("Enter the number of the row to extract: ");
anExtRow = aanData(nRowExt, :);

%Print Extracted row
fprintf("The extracted row is: \n");
disp(anExtRow);

%Replace Column
nColRep = input("Enter the number of the column to replace: ");
aanData(: , nColRep) = randi([nMin,nMax],nRows,1);

%print new matrix
fprintf("The new random matrix is: \n");
disp(aanData);


