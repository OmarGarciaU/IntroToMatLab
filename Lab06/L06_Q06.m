function[] = L06_Q06()
%Omar Garcia
%Get input from the user for a n x 3 matrix. Then shift 
%the columns to the right by one. Then select a row and
%print the row 
    %Variables
    %aanMatrix: inputed matrix 
    %nRow: row number to select
    %aanShiftedMatrix: matrix after cyclic shift
    %anSelectedRow: the selected row vector
    [aanMatrix, nRow] = get_input();
    
    aanShiftedMatrix = cyclic_shift_right(aanMatrix);
    
    fprintf("After shifting, the matrix is: \n");
    disp(aanShiftedMatrix);
    
    anSelectedRow = aanShiftedMatrix(nRow, :);
    
    fprintf("After shifting, row %d is: \n", nRow);
    disp(anSelectedRow);
end

function [aanMatrix, nRow] = get_input()
%Get input from the user for a n x 3 matrix
    %Variables
    %Output
    %aanMatrix: the inputted n x 3 matrix
    %nRow: the row number to select
    aanMatrix = input("Enter an n x 3 matrix: ");
    nRow = input("Enter a row number to select: ");
end

function [aanShiftedMatrix] = cyclic_shift_right(aanMatrix)
%Cyclically shift columns of matrix one position to the right
%The rightmost column becomes the new leftmost column
    %Variables

    %Input
    %nMatrix: the matrix to be shifted (n x 3)

    %Output 
    %aanShiftedMatrix

    %Local Variables
    %anColOrder: index vector to reorder columns [3, 1, 2]
    anColOrder = [3, 1, 2];
    aanShiftedMatrix = aanMatrix(:, anColOrder);
end
