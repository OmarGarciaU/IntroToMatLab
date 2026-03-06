%Omar Garcia
%L02_Q09

% Get an xp input to calculate sin(x) using the truncated Taylor Series and
% calculate and print the absolute error 

%Variables 
%fXP: value of x
%fTaylorApprox: result of the Taylor approximation 
%fAbsError: Absolute error

%clear all 
clear all

%Get input for xp
fXP = input("Enter a value for xp: ");

%Calculate Taylor Approximation and Absolute Error
fTaylorApprox = fXP - ((fXP^3) / factorial(3)) + ((fXP^5) / factorial(5));
fAbsError = abs(sin(fXP) - fTaylorApprox);

%print results 
fprintf("A Taylor Series approximation of sin( %0.2f ) is %.6f\n",fXP,fTaylorApprox);
fprintf("The true value of sin( %.2f ) is %.6f\n",fXP, sin(fXP));
fprintf("The absolute approximation error is %.6f\n",fAbsError);