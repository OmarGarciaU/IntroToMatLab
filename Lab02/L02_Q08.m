%Omar Garcia
%L02_Q08

%Get input for 2 charges and their distance set value of the electric
%constant and calculate the electric force then print the result

%Variables 
%fQ1: Charge for particle one in Coulombs
%fQ2: Charge for particle two in Coulombs
%fR: distance between the two particles in meters 
%fKe: Electric constant 
%fElectricForce: Electric Force

%Clear all 
clear all

%Get input and initialize constants
fQ1 = input("Enter the charge in C of particle 1: ");
fQ2 = input("Enter the charge in C of particle 2: ");
fR = input("Enter the distance in m between the particles: ");
fKe = 9.988e9;

%Claculate The Electric Force
fElectricForce = (fKe * fQ1 * fQ2) / (fR^2);
%print result
fprintf("The electric force between particle 1 with charge %.2f C and particle 2 with charge %.2f C at a distance of %.2f m is %.2e N\n",fQ1,fQ2,fR,fElectricForce);
