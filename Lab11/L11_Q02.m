function[] = L11_Q02
%Omar Garcia
    [nM, nN, nP, bIsValid] = get_matrix_dimensions();
    if bIsValid
        [aaA, aaB] = generate_matrices(nM, nN, nP);
        aaC = multiply_matrices(aaA, aaB, nM, nN, nP);
        print_results(aaA, aaB, aaC);
    end
end

function[nM, nN, nP, bIsValid] = get_matrix_dimensions()

    fTolerance = 1e-8;
    bIsValid = 1;
    nN = -1;
    nP = -1;
    fprintf("This program will multiply a random m x n matrix by a random n x p matrix \n");

    nM = input("Enter a positive integer m: ");
    if nM <= 0 
        fprintf("Invalid entry %d \n", nM);
        bIsValid = 0;
    elseif abs(nM - round(nM)) >= fTolerance
        fprintf("Invalid entry %d \n", nM);
        bIsValid = 0;
    end

    if bIsValid ~= 0
        nN = input("Enter a positive integer n: ");
        if nN <= 0
            fprintf("Invalid entry %d \n", nN);
            bIsValid = 0;
        elseif abs(nN - round(nN)) >= fTolerance
            fprintf("Invalid entry %d \n", nN);
            bIsValid = 0;
        end
    end

    if bIsValid ~= 0
        nP = input("Enter a positive integer p: ");
        if nP <= 0 
            fprintf("Invalid entry %d \n", nP);
            bIsValid = 0;
        elseif abs(nP - round(nP)) >= fTolerance
            fprintf("Invalid entry %d \n", nP);
            bIsValid = 0;
        end
    end
end

function[aaA, aaB] = generate_matrices(nM, nN, nP)
    aaA = randi([-5, 5], nM, nN);
    aaB = randi([-5, 5], nN, nP);
end

function[aaC] = multiply_matrices(aaA, aaB, nM, nN, nP)
%Multiply two matrices using the linear algebra definition C = AB
    %Input
    %aaA: m x n matrix
    %aaB: n x p matrix
    %nM: number of rows in A
    %nN: number of columns in A / rows in B
    %nP: number of columns in B
    %Output
    %aaC: m x p result matrix

    %Initialize result matrix to zeros
    aaC = zeros(nM, nP);

    %Triple nested loop implementing cij = sum(aik * bkj) for k = 1 to n
    for nRow = 1:nM
        for nCol = 1:nP
            nSum = 0;
            for nK = 1:nN
                nSum = nSum + aaA(nRow, nK) * aaB(nK, nCol);
            end
            aaC(nRow, nCol) = nSum;
        end
    end
end

function[] = print_results(aaA, aaB, aaC)
    print_matrix(aaA, "Matrix A is: ");
    print_matrix(aaB, "Matrix B is: ");
    print_matrix(aaC, "The result of A times B is: ");
end

function[] = print_matrix(aaMatrix, achOutput)
    fprintf("%s \n", achOutput);
    [nRows, nCols] = size(aaMatrix);
    for nRow = 1:nRows
        for nCol = 1:nCols
            fprintf("%4d ", aaMatrix(nRow, nCol));
        end
        fprintf("\n");
    end
end
