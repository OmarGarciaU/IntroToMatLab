%Omar Garcia
%L02_Q04

%Get input of 2 lines then calculate the point of intersection print the
%result

%Variables
%fm1: slope one 
%fb1: shift one
%fm2: slope two
%fb2: shift two 
%fx: x point intercept
%fy: y point intercept

%clear all
clear all

%Get input
fm1 = input("Enter value for m1: ");
fb1 = input("Enter value for b1: ");
fm2 = input("Enter value for m2: ");
fb2 = input("Enter value for b2: ");

%Calculate intercept point
fx = (fb2 - fb1) / (fm1 - fm2);
fy = (fm1 * fx) + fb1;

%print results
fprintf("Lines y = %0.2f x + %.2f and y = %.2f x + %.2f intersect at (%.2f, %.2f) \n",fm1, fb1, fm2, fb2,fx,fy);
