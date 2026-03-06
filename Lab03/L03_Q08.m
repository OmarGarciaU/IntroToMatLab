%Omar Garcia
%L03_Q08

%Get an input of max and min range to get random number between the range
%then calcuate the running sum, the mean, and the standard deviation and
%print the results

%Varibles 
%fMin: Get input minimum of random range
%fMax: Get input maximum of random range
%fMean: Calculated Mean
%fSD: Calculated Standard Deviation
%fSum: Total sum of x integers
%fX: x element


%Clear all 
clear all 

%Get Range 
fMin = input("Enter Minimum number: ");
fMax = input("Enter Maximum number: ");

fSum = 0;
fSumSq = 0;
fXi = 0;
fXiSq = 0;
iCounter = 0;

fXi = rand() * (fMax - fMin) + fMin;
fXiSq = fXi^2;
fSum = fSum + fXi;
fSumSq = fSumSq + fXiSq;

fprintf("Random number 1 is %8.2f, Sum of xi so far is %8.2f, Sum of xi^2 so far is %8.2f\n",fXi, fSum,fSumSq);

fXi = rand() * (fMax - fMin) + fMin;
fXiSq = fXi^2;
fSum = fSum + fXi;
fSumSq = fSumSq + fXiSq;
fprintf("Random number 2 is %8.2f, Sum of xi so far is %8.2f, Sum of xi^2 so far is %8.2f\n",fXi, fSum,fSumSq);

fXi = rand() * (fMax - fMin) + fMin;
fXiSq = fXi^2;
fSum = fSum + fXi;
fSumSq = fSumSq + fXiSq;
fprintf("Random number 3 is %8.2f, Sum of xi so far is %8.2f, Sum of xi^2 so far is %8.2f\n",fXi, fSum,fSumSq);

fXi = rand() * (fMax - fMin) + fMin;
fXiSq = fXi^2;
fSum = fSum + fXi;
fSumSq = fSumSq + fXiSq;
fprintf("Random number 4 is %8.2f, Sum of xi so far is %8.2f, Sum of xi^2 so far is %8.2f\n",fXi, fSum,fSumSq);

fXi = rand() * (fMax - fMin) + fMin;
fXiSq = fXi^2;
fSum = fSum + fXi;
fSumSq = fSumSq + fXiSq;
fprintf("Random number 5 is %8.2f, Sum of xi so far is %8.2f, Sum of xi^2 so far is %8.2f\n",fXi, fSum,fSumSq);

fMean = fSum / 5;
fSD = sqrt( ((5 * fSumSq) - (fSum ^ 2))/ (20) );

fprintf("The mean is %.2f\n",fMean);
fprintf("The standard deviation is %.2f \n", fSD);
