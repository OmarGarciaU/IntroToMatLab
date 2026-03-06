%Omar Garcia
%L05_Q07

%Get input of rows cols min and max to generate a matrix with random
%integers. Then get input for i and j and S where Ri <- S*Rj + Ri where R
%is the row. Calculate the new Ri and display the modified matrix.

%Variables
%nRow: inputed row
%nCol: inputed column
%fMin: inputed min value for random range
%fMax: inputed max value for random range
%anRngMatrix: randomized matrix
%nI: input for i in rref operation formala
%nJ: input for j in rref operation formala
%nS: scalar to multiply row



% Row Operation Script
% Prompt user for matrix dimensions and value range
nRow = input("Enter the number of rows: ");
nCol = input("Enter the number of columns: ");
fMin = input("Enter the minimum random integer: ");
fMax = input("Enter the maximum random integer: ");

% Generate random integer matrix of size m x n between minVal and maxVal
aanRngMatrix = randi([fMin, fMax], nRow, nCol);

fprintf("The random matrix is: \n");
disp(aanRngMatrix);

% Prompt for row operation parameters
nI = input("Enter the number i of the row for the row op: ");
nJ = input("Enter the number j of the row for the row op: ");
nS = input("Enter the scalar multiplier for the row op: ");

% Perform row operation: R_i <- s*R_j + R_i
% Replace row i with s * row j + row i
aanRngMatrix(nI, :) = nS * aanRngMatrix(nJ, :) + aanRngMatrix(nI, :);

fprintf("The matrix after the row op is: \n");
disp(aanRngMatrix);