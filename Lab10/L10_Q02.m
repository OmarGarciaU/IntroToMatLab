function[] = L10_Q02()
%Omar Garcia
%Generates two random matrices A and B, calculates their traces and the
%traces of AB' and A'B, then prints all results
    %Variables
    %aafA: random matrix A
    %aafB: random matrix B
    %fTraceA: trace of matrix A
    %fTraceB: trace of matrix B
    %fTraceABT: trace of A * B'
    %fTraceATB: trace of A' * B
    [aafA, aafB] = create_matrices();
    fTraceA = calc_trace(aafA);
    fTraceB = calc_trace(aafB);
    fTraceABT = calc_trace(aafA*aafB');
    fTraceATB = calc_trace(aafA'*aafB);
    print_results(aafA, aafB, fTraceA, fTraceB, fTraceABT, fTraceATB);
end

function[aafA, aafB] = create_matrices()
%Prompts user for min, max, and size, then generates two random n x n matrices
    %Variables
    %Input
    %nMinRNG: minimum value for random number generation
    %nMaxRNG: maximum value for random number generation
    %nRows: number of rows and columns for the matrices
    %Output
    %aafA: randomly generated n x n matrix A
    %aafB: randomly generated n x n matrix B
    nMinRNG = input("Enter the minimum random number: ");
    nMaxRNG = input("Enter the maximum random number: ");
    nRows = input("Enter the number of rows: ");

    aafA = rand(nRows,nRows) * (nMaxRNG - nMinRNG) + nMinRNG * ones(nRows, nRows);
    aafB = rand(nRows,nRows) * (nMaxRNG - nMinRNG) + nMinRNG * ones(nRows, nRows);
end

function[fTrace] = calc_trace(aafA)
%Calculates the trace of a matrix by summing its diagonal elements
    %Variables
    %Input
    %aafA: input matrix
    %Output
    %fTrace: sum of diagonal elements of aafA
    [nRows, ~] = size(aafA);
    fTrace = 0;
    for nRow = 1:nRows
        fTrace = fTrace + aafA(nRow,nRow);
    end
end

function[] = print_results(aafA, aafB, fTraceA, fTraceB, fTraceABT, fTraceATB)
%Prints both matrices and all four trace values
    %Variables
    %Input
    %aafA: matrix A
    %aafB: matrix B
    %fTraceA: trace of A
    %fTraceB: trace of B
    %fTraceABT: trace of A * B'
    %fTraceATB: trace of A' * B
    fprintf("Matrix A is: \n");
    print_matrix(aafA);
    fprintf("Matrix B is: \n");
    print_matrix(aafB);

    fprintf("The trace of A is %.2f \n", fTraceA);
    fprintf("The trace of B is %.2f \n", fTraceB);
    fprintf("The trace of A B' is %.2f \n", fTraceABT);
    fprintf("The trace of A' B is %.2f \n", fTraceATB);
end

function[] = print_matrix(aafA)
%Prints all elements of a matrix using loops, row by row
    %Variables
    %Input
    %aafA: matrix to be printed
    %nRows: number of rows in the matrix
    %nCols: number of columns in the matrix
    [nRows, nCols] = size(aafA);

    for nRow = 1:nRows
        for nCol = 1:nCols
            fprintf("%.2f  ", aafA(nRow, nCol))
        end
        fprintf("\n");
    end
    fprintf("\n");
end
