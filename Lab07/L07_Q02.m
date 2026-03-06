function[] = L07_Q02()
%Omar Garcia

%Get a randomly filled n x m matrix where the user inputed 
%the values.

    %Variables
    %nMatrix: Matrix inputed from the user
    %nRow: Row number recieved from user
    %nC: scalar to multiply row by

    nMatrix = get_matrix();
    print_matrix(nMatrix);
    
end

function[nMatrix] = get_matrix()
%Get input matrix from User
    
    %Variables
    %Output
    %nMatrix
    
    %Local Variables 
    %nRows: number of rows
    %nCols: number of cols
    %nMin: random range minimum
    %nMax: random range maximum

    nRows = input("Enter the number of rows in the matrix: ");
    nCols = input("Enter the number of columns in the matrix: ");
    nMin = input("Enter the minumum random integer: ");
    nMax = input("Enter the maximum random integer: ");
    
    nMatrix = randi([nMin, nMax], nRows, nCols);
end

function[] = print_matrix(nMatrix)
%print the matrix that is passed in
    %Variables
    %Input
    %nMatrix: user defined matrix

    fprintf("The matrix is: \n");
    disp(nMatrix);
end

function[nRow, nC] = get_basic_row_op_data()
%Get which row to operate on from user and a scalar to 
%multiply the row

    %Variables
    %Output
    %nRow: number of row to do operation
    %nC: Scalar to multiply row
    nRow = input();
    nC = input();
    
end

function[nMatrix] = do_basic_row_op_data(nMatrix,nRow,nC)
%Get which row to operate on from user and a scalar to 
%multiply the row

    %Variables
    %Input
    %Output
    %nRow: number of row to do operation
    %nC: Scalar to multiply row

    nMatrix(nRow, :) = nC.*nMatrix(nRow, :);
end

function[nRowI, nRowJ, nS] = get_replacement_row_op_data()
%Get input for Row i, Row j, and scalar S
    nRowI = input("Enter the number i of the row for the row op: ");
    nRowJ = input("Enter the number i of the row for the row op: ");
    nS = input("Enter the scalar multiplier for the row op: ");
end

function[nRowI, nRowJ, nS] = do_replacement_row_op_data(nMatrix, nRowI, nRowJ, nS)
%Get input for Row i, Row j, and scalar S
end
