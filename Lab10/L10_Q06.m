function[] = L10_Q06()
%Omar Garcia
%Prompts user for a positive integer and determines whether it is prime,
%printing the result and the largest factor if not prime
    %Variables
    %nNum: positive integer entered by user
    %bValidNum: boolean indicating if the input is valid
    %bIsPrime: boolean indicating if nNum is prime
    %nFactor: largest factor of nNum other than itself, or -1 if prime
    [nNum, bValidNum] = get_input();
    if bValidNum
        [bIsPrime, nFactor] = is_prime(nNum);
        if bIsPrime
            fprintf("%d is prime\n", nNum);
        else
            fprintf("%d is not prime as it is divisible by %d\n", nNum, nFactor);
        end
    end
end

function[nNum, bValidNum] = get_input()
%Prompts user for a positive integer and validates the input
    %Variables
    %Input
    %nNum: value entered by user
    %fTolerance: tolerance used to test if input is an integer
    %Output
    %bValidNum: 1 if input is valid, 0 otherwise
    nNum = input("Enter a positive integer: ");
    fTolerance = 1e-8;
    if nNum < 1 || abs(nNum - round(nNum)) >= fTolerance
        fprintf("Invalid entry %d\n", nNum);
        bValidNum = 0;
    else
        bValidNum = 1;
    end
end

function[bIsPrime, nFactor] = is_prime(nNum)
%Determines if a positive integer is prime and finds its largest factor
    %Variables
    %Input
    %nNum: positive integer to test for primality
    %nIndex: loop counter for testing divisors
    %Output
    %bIsPrime: 1 if nNum is prime, 0 otherwise
    %nFactor: largest factor of nNum other than itself, or -1 if prime
    if nNum == 1
        bIsPrime = 0;
        nFactor = 1;
    else
        bIsPrime = 1;
        nFactor = -1;
        for nIndex = 2:floor(nNum / 2)
            if mod(nNum, nIndex) == 0
                bIsPrime = 0;
                nFactor = nNum / nIndex;
                break;
            end
        end
    end
end
