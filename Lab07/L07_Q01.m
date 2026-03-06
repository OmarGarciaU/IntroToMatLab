function[] = L07_Q01()
%Omar Garcia

%Get input from user 

    %Variables
    %nNumber: input number from User
    %fStirNum: number for Sterlings factorial approximation
    %nFactorial: factorial result calculated by the program
    %f: Stirlings Approximation function
    %fErr: Absolute error approximation

    %get input for n
    nNumber = input("Enter an integer to approximate the factorial of: ");

    %Sterling's Approximation formula
    f = @(x) sqrt(2 * pi * x)*((x / exp(1))^x);

    %calculate Sterlings approximation
    fStirNum = f(nNumber);
    %Calculate the real factorial
    nFactorial = factorial(nNumber);

    %Calculate absolute error
    fErr = abs(nFactorial - fStirNum);

    %print results
    fprintf("An approximation of %d! is %.5f \n", nNumber, fStirNum);
    fprintf("The true value of %d! is %d \n", nNumber, nFactorial);
    fprintf("The absolute error in the approximation is %.4f \n", fErr);
end
