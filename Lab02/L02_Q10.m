%Omar Garcia
%L02_Q10

% get an h and Xo as an input and print three different differential
% definitoins, forward, backward, and central as well as the absolute errors

%Variables
%fH: shift of h in the definition of a derivative 
%fX0 = initial X point
%fForward: Forwards difference approximation
%fBackward: Backwards difference approximation
%fCentral: Central difference approximation
%fAbsErrorF: Forwards difference approximation absolute error 
%fAbsErrorB: Backwards difference approximation absolute error 
%fAbsErrorC: Central difference approximation absolute error


%Clear all 
clear all

%Get input
fH = input("Enter a value for h: ");
fX0 = input("Enter a value for x0: ");

%Calculations 
fForward  = (sin(fX0 + fH) - sin(fX0)) / fH;
fBackward = (sin(fX0) - sin(fX0 - fH)) / fH;
fCentral   = (sin(fX0 + fH) - sin(fX0 - fH)) / (2 * fH);
fAbsErrorF = abs(cos(fX0) - fForward);
fAbsErrorB = abs(cos(fX0) - fBackward);
fAbsErrorC = abs(cos(fX0) - fCentral);

fprintf("The forward difference approximation of sin'(%.2f) is %.6f\n",fX0,fForward);
fprintf("The backward difference approximation of sin'(%.2f) is %.6f\n",fX0,fBackward);
fprintf("The central difference approximation of sin'(%.2f) is %.6f\n",fX0,fCentral);
fprintf("The true value of sin'( %.2f ) is %.6f\n",fX0, cos(fX0));
fprintf("The absolute error in the forward difference approximation is %.6f\n",fAbsErrorF);
fprintf("The absolute error in the backward difference approximation is %.6f\n",fAbsErrorB);
fprintf("The absolute error in the central difference approximation is %.6f\n",fAbsErrorC);