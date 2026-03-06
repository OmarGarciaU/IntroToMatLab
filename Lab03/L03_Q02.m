%Omar Garcia 
%L03_Q02

%Get input for a max and min real number then generate a random number
% from the min max range
%Repeat or integer values 

%Variables 
%fInputMax: Max range (float)
%fInputMin: Min Range (float)
%nInputMax: Max range (int)
%nInputMin: Min Range (int)
%frng: Random number (float)
%rng: Random number (int)

%Clear All
clear all

fInputMin = input("Enter a minimum real value: ");
fInputMax = input("Enter a maximum real value: ");
fRng = rand() * (fInputMax - fInputMin) + fInputMin;
fprintf("A random number in the range ( %.4f, %.4f ) is %.4f\n",fInputMin, fInputMax, fRng);


nInputMin = input("Enter a minimum integer value: ");
nInputMax = input("Enter a maximum integer value: ");
nRng = randi([nInputMin, nInputMax]);
fprintf("A random integer in the range [ %d, %d ] is %d \n",nInputMin, nInputMax, nRng);
