function[] = L10_Q01()
%Omar Garcia
%Enter a non negative integer and return the factorial else print that 
%the inputted number is invalid
    %Variables 
    %nNum: input non negative number
    %fTolerance: tolerance value used to test for integer
    %nFactorial: value of factorial 
    nNum = input("Enter a nonnegative integer: ");
    fTolerance = 1e-8;
    if nNum < 0
        fprintf("Invalid input %d \n", nNum);
    elseif abs(nNum - round(nNum)) >= fTolerance
        fprintf("Invalid input %d \n", nNum);
    else
        nFactorial = my_factorial(nNum);
        fprintf("%d! is %d \n",nNum, nFactorial);
    end

end

function[nFactorial] = my_factorial(nNum)
%Calculate the factorial of a given number 
    %Variables
    %Input 
    %nNum: number inputed by user
    %Output
    %nFactorial: calculated factorial with the given input
    nFactorial = 1;
    for nIndex = 1:nNum
        nFactorial = nFactorial * nIndex;
    end
end

