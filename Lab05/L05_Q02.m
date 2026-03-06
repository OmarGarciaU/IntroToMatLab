%Omar Garcia
%L05_Q02

%Get user input for number of rows and columns for a square matrix. Get
%input for range of random numbers. Generate a Frobenius Matrix then get
%input numnber for which column to populate

%Varibales
%nDim: Dimension of the matrix (mxm)
%nCol: Column to Populate
%fMin: Minumum number of the randomizer range
%fMax: Maximum number of the randomizer range
%aafData: Forbenius Matrix

%Clear All 
clear all

%Get input
nDim = input("Enter the number of rows in the square matrix: ");
nCol = input("Enter the column to populate: ");
fMin = input("Enter the minimum random number: ");
fMax = input("Enter the maximum random number: ");

%Generate Matrix
aafData = eye(nDim);

aafData((nCol+1):nDim,nCol) = rand((nDim-nCol),1) * (fMax-fMin) + fMin;
fprintf("The resulting Frobenius matrix is: \n");
disp(aafData);