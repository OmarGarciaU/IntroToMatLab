function[] = L06_Q04()
%Omar Garcia

% get x value from the user and calculate the taylor series at x 
% approximation as well as calculating the error in the approximation
    %Variables
    %fX: x input from the user
    %fCosApprox: stores the value of the cos approximation of X 
    %fErrApprox: stores the value of the error in the approximation

    %Calculate the taylor approximation with the absolute error in the 
    %approx then print the results. repeat twice 
    [fX] = get_X();
    [fCosApprox, fErrApprox] = taylor_approx_of_cos(fX);
    fprintf("A Taylor series approximation of cos( %.4f ) is %.4f which has absolute error %.4f \n", fX, fCosApprox, fErrApprox);

    [fX] = get_X();
    [fCosApprox, fErrApprox] = taylor_approx_of_cos(fX);
    fprintf("A Taylor series approximation of cos( %.4f ) is %.4f which has absolute error %.4f \n", fX, fCosApprox, fErrApprox);

    [fX] = get_X();
    [fCosApprox, fErrApprox] = taylor_approx_of_cos(fX);
    fprintf("A Taylor series approximation of cos( %.4f ) is %.4f which has absolute error %.4f \n", fX, fCosApprox, fErrApprox);
end

function[fX] = get_X()
%Ask the user to input a value for x
    %Variables:
    %Output:
    %fX: Value of x

    %Get input for x
    fX = input("Enter a value for x: ");
end

function[fCosApprox, fErrApprox] = taylor_approx_of_cos(fX)
%Using input X calculate the approximation of cos and the error in the 
%approximation. print the results 
    %Variables

    %Input
    %fX: value of X from user

    %Output
    %fCosApprox: returns Cos aproximation 
    %fErrApprox: returns the absolute error int the approximation

    fCosApprox = 1 - ((fX^2) / 2) + ((fX^4) / factorial(4));
    fErrApprox = abs(cos(fX) - (fCosApprox));
end
