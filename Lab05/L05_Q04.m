%Omar Garcia
%L05_Q04

%Get three matrices inputed by users named A, B, and C determine and print 
%an indication of the elements of the matrices for which values C is both
%greater than A and B

%Variables 
%aanA: inputed matrix for A
%aanB: inputed matrix for B
%aanC: inputed matrix for C

%Clear all 

aanA = input("Enter matrix A: ");
aanB = input("Enter matrix B: ");
aanC = input("Enter matrix C: ");

aanC = aanC > aanA & aanC > aanB;
fprintf("The elements for which C is greater than A and B are: \n");
disp(aanC);
