%Omar Garcia
%L03_Q01

%Get non-negative input 5 times and get the running sum using a counter and
%display the result

%Variables 
%nInputOne: First stored intput
%nCounter: Counter 
%nSum: Current running sum

%clear all 
clear all

%Get input
nInputOne = input("Enter a non-negative integer value for a: ");

%Calculate and display 
nCounter = 1;
nSum = 0;
nSum = nSum + nCounter^(nInputOne);
fprintf("i is %d, Sum of i^%d so far is %8d \n",nCounter,nInputOne,nSum);

nCounter = nCounter + 1;
nSum = nSum + nCounter^(nInputOne);
fprintf("i is %d, Sum of i^%d so far is %8d \n",nCounter,nInputOne,nSum);

nCounter = nCounter + 1;
nSum = nSum + nCounter^(nInputOne);
fprintf("i is %d, Sum of i^%d so far is %8d \n",nCounter,nInputOne,nSum);

nCounter = nCounter + 1;
nSum = nSum + nCounter^(nInputOne);
fprintf("i is %d, Sum of i^%d so far is %8d \n",nCounter,nInputOne,nSum);

nCounter = nCounter + 1;
nSum = nSum + nCounter^(nInputOne);
fprintf("i is %d, Sum of i^%d so far is %8d \n",nCounter,nInputOne,nSum);
