%Omar Garcia
%L05_Q05

%Get input for a 3x3 matrix. Calculate the determinant. Then display
%matrix on the console.

%Variables 
%aanData: Matrix inputed
%fDet: Determinate


%Clear all 
clear all 

aafData = input("Enter a 3 x 3 matrix: ");
fDet = (aafData(1,1) * ((aafData(2,2) * aafData(3,3)) - (aafData(2,3) * aafData(3,2))))- (aafData(1,2) * ((aafData(2,1) * aafData(3,3)) - (aafData(2,3) * aafData(3,1))))+ (aafData(1,3) * ((aafData(2,1) * aafData(3,2)) - (aafData(2,2) * aafData(3,1))));
fprintf("The determinant of the 3 x 3 matrix is %.4f\n",fDet);