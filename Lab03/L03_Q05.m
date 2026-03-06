%Omar Garcia
%L03_Q05

% Get grade input from user then print out all 5 grades 

%Varibles 
%fGrade: grade inputed by user (float)
%bA: is grade an A (boolean)
%bA: is grade an B (boolean)
%bA: is grade an C (boolean)
%bA: is grade an D (boolean)
%bA: is grade an F (boolean)

%clear all 
clear all 

%Get Grade 
fGrade = input("Enter your score between 0 and 100: ");

%Calculate Grade Scale
bA = (fGrade >= 90) && (fGrade <= 100);
bB = (fGrade >= 80) && (fGrade < 90);
bC = (fGrade >= 70) && (fGrade < 80);
bD = (fGrade >= 60) && (fGrade < 70);
bF = fGrade < 60;

%Print Results
fprintf("Your score was an A? %d \n", bA);
fprintf("Your score was a B? %d \n", bB);
fprintf("Your score was a C? %d \n", bC);
fprintf("Your score was a D? %d \n", bD);
fprintf("Your score was an F? %d \n", bF);
