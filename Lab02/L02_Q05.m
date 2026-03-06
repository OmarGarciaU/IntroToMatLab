%Omar Garcia
%L02_Q05

%Get 5 inputed numbers and calculate and print the average 

%Variables 
%fnum1: first number inputed
%fnum2: second number inputed
%fnum3: third number inputed
%fnum4: fourth number inputed
%fnum5: fifth number inputed
%fAvg = calculated average 

%Clear all 
clear all

%Get input 
fnum1 = input("Enter number 1: ");
fnum2 = input("Enter number 2: ");
fnum3 = input("Enter number 3: ");
fnum4 = input("Enter number 4: ");
fnum5 = input("Enter number 5: ");

%Calculate the average
fAvg = (fnum1 + fnum2 + fnum3 + fnum4 + fnum5) / (5.00);

%print Average 
fprintf("The average is %.2f\n", fAvg);