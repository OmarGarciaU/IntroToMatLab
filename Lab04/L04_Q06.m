%Omar Garcia
%L04_Q06

%Get two column vectors inputed by the user. Using the transpose function
%and multiply each vector calculate the dot product, magnitude of each 
%vector, the angle between the vectors, and the cross product. 

%Variables 
%afCVectorA: First Column inputed by the User (Vector A)
%afCVectorB: Second Column inputed by the User (Vector B)
%nDot: The resultant Dot product
%afCross: The resultant Cross product 
%fLenA: Magnitude of vector A
%fLenB: Magnitude of vector B
%fAngle: Angle between the two vectors
%fC1: Cross product part A
%fC2: Cross product part B
%fC3: Cross product part C

%Clear all 
clear all

afCVectorA = input("Enter column vector A: ");
afCVectorB = input("Enter column vector B: ");

%Calculate the Dot product
fDot = afCVectorA' * afCVectorB;
fprintf("The dot product of A and B is %.4f\n",fDot);

fLenA = sqrt(afCVectorA' * afCVectorA);
fprintf("The length of A is %.4f\n", fLenA);

fLenB = sqrt(afCVectorB' * afCVectorB);
fprintf("The length of B is %.4f\n", fLenB);

fAngle = acos((fDot) / (fLenA * fLenB));
fprintf("The angle between A and B is %.4f\n",fAngle);

%Calculate the cross product
fC1 = (afCVectorA(2) * afCVectorB(3)) - (afCVectorA(3) * afCVectorB(2));
fC2 = (afCVectorA(3) * afCVectorB(1)) - (afCVectorA(1) * afCVectorB(3));
fC3 = (afCVectorA(1) * afCVectorB(2)) - (afCVectorA(2) * afCVectorB(1));
afCross = [ fC1; fC2; fC3 ];
fprintf("The cross product between A and B is: \n");
disp(afCross);
