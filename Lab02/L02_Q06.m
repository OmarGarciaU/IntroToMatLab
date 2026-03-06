%Omar Garcia
%L02_Q06

%Get input for 3 points A,B,C then calculate the centroid G and print the
%result

%Variables 
%fXA: x value for point A
%fYA: y value for point A
%fXB: x value for point B
%fYB: y value for point B
%fXC: x value for point C
%fYC: y value for point C
%fXG: x value for point of the centroid
%fYG: y value for point of the centroid

%Clear all 

%Get input for points A,B,C
fXA = input("Enter x value for triangle point A: ");
fYA = input("Enter y value for triangle point A: ");
fXB = input("Enter x value for triangle point B: ");
fYB = input("Enter y value for triangle point B: ");
fXC = input("Enter x value for triangle point C: ");
fYC = input("Enter y value for triangle point C: ");

%Calculate centroid point
fXG = (fXA + fXB + fXC) / 3.00;
fYG = (fYA + fYB + fYC) / 3.00;

%print results 
fprintf("Point A of the triangle is (%8.2f,%8.2f )\n", fXA,fYA);
fprintf("Point B of the triangle is (%8.2f,%8.2f )\n", fXB,fYB);
fprintf("Point C of the triangle is (%8.2f,%8.2f )\n", fXC,fYC);
fprintf("The centroid of the triangle is (%8.2f, %8.2f )\n",fXG,fYG);
