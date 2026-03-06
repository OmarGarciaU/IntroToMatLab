%Omar Garcia
%L04_Q01

%Get input for a vector of radii values and another vector of height values
%Then calculate the area of each cylinder using the formula of the volume of
%a cylinder store them in a vector and display the result

%Variables 
%afRadii: vector of radii inputted by User
%afHeight: vector of height inputted by User
%afArea: vector containing all the resultant area

%Clear all
clear all

afRadii = input("Enter a vector of radius data: ");
afHeight = input("Enter a vector of height data: ");

afArea = afRadii.^2;

afArea = afArea.* afHeight;

afArea = afArea.* pi;

fprintf("The volume for each trial is: \n");
disp(afArea);
