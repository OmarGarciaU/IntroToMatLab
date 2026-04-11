function[] = L10_Q03()
%Omar Garcia
%Prompts user for geometric series parameters and prints the truncated
%series sum and whether the infinite series converges or diverges
    %Variables
    %fA: scalar value for a in the geometric series
    %fR: scalar value for r (common ratio)
    %fK: upper limit of summation
    %bValidInt: boolean indicating if K is a valid nonnegative integer
    [fA, fR, fK, bValidInt] = get_input();
    if bValidInt
        sum_series(fA, fR, fK);
        print_convergence(fA, fR);
    end
end

function[fA, fR, fK, bValidInt] = get_input()
%Prompts user for a, r, and K and validates that K is a nonnegative integer
    %Variables
    %Input
    %fA: value for a entered by user
    %fR: value for r entered by user
    %fK: value for K entered by user
    %fTolerance: tolerance used to test if K is an integer
    %Output
    %bValidInt: 1 if K is valid, 0 otherwise
    fA = input("Enter a value for a: ");
    fR = input("Enter a value for r: ");
    fK = input("Enter a value for K: ");
    fTolerance = 1e-8;
    if fK < 0
        fprintf("Invalid entry %d \n", fK);
        bValidInt = 0;
    elseif abs(fK - round(fK)) >= fTolerance
        fprintf("Invalid entry %d \n", fK);
        bValidInt = 0;
    else
        bValidInt = 1;
    end
end

function[] = sum_series(fA, fR, fK)
%Calculates and prints the sum of the truncated geometric series from 0 to K
    %Variables
    %Input
    %fA: scalar a in the geometric series
    %fR: common ratio r
    %fK: upper limit of summation
    %fSum: accumulated sum of the series
    %nIndex: loop counter for each term
    fSum = 0;
    for nIndex = 0:fK
        fSum = fSum + (fA * fR^nIndex);
    end
    fprintf("The sum of terms 0 to %d of the geometric series with a = %.2f and r = %.2f is %.2f\n", fK, fA, fR, fSum)
end

function[] = print_convergence(fA, fR)
%Prints whether the infinite geometric series converges or diverges
%and calculates the convergent sum if applicable
    %Variables
    %Input
    %fA: scalar a in the geometric series
    %fR: common ratio r
    %fSum: convergent sum if series converges
    fSum = 0;
    if abs(fR) < 1
        fSum = fA / (1 - fR);
        fprintf("The series converges to %.2f \n", fSum);
    else
        fprintf("The series diverges \n")
    end
end
