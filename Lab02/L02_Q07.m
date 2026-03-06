%Omar Garcia 
%L02_Q07

% Get input for a divisor and a numerator and print the resulting quotient.
% DO this three times

%Variables 
%fdivisor: Divisor 
%fIn: Numerator
%fOut: Quotient 

%Clear all 
clear all

%Get input for divisor and number calculate result and print result
fDivisor = input("Enter a divisor: ");
fIn = input("Enter a number: ");
fOut = fIn / fDivisor;
fprintf("The result of %8.4f / %8.4f is %8.4f\n", fIn, fDivisor,fOut);

%Get input for number calculate and print result
fIn = input("Enter a number: ");
fOut = fIn / fDivisor;
fprintf("The result of %8.4f / %8.4f is %8.4f\n", fIn, fDivisor,fOut);

%Get input for number calculate and print result
fIn = input("Enter a number: ");
fOut = fIn / fDivisor;
fprintf("The result of %8.4f / %8.4f is %8.4f\n", fIn, fDivisor,fOut);