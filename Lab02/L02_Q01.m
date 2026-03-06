%Omar Garcia
%L02_Q01

%Prompts the user for a real number and stores it in a variable and prints the value of this variable using 2 decimal places

%Variables 
%fNum: Number that stores the input 

%clear data 
clear all

%store number from user input
fNum = input("Enter a number: ");

%print out fNum
fprintf("%.2f is a great number\n",fNum);

