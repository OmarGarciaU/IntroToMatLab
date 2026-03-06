function[] = L06_Q02()
%Omar Garcia

%Write a program that gets 3 positive integer inputed from the user namely a,b, and c 
%Then check if those values make a pythogrean triple through a^2 + b^2 =
%c^2. print the result

    %Variables
    %nA: integer input A
    %nB: integer input B
    %nC: integer input C
    %bIsTriple: given A, B, and C, stores if A^2+B^2=C^2 is true

    %Get a positive integer input A from the user
    nA = input("Enter a positive integer a: ");

    %Get a positive integer input B from the user
    nB = input("Enter a positive integer b: ");

    %Get a positive integer input C from the user
    nC = input("Enter a positive integer c: ");

    %Check if a^2+b^2=c^2
    bIsTriple = is_pythagorean_triple(nA,nB,nC);

    %print result
    fprintf("a = %d, b = %d, c = %d is a Pythagorean triple? %d\n",nA,nB,nC,bIsTriple);

end

function[bIsTriple] = is_pythagorean_triple(nA,nB,nC)
%Determine if three positive integers are a pythagorean triple by checking
%if a^2+b^2=c^2 is true and returning if it is true

    %Input
    %nA: positive integer input A from user
    %nB: positive integer input B from user
    %nC: positive integer input C from user

    %Output
    %bIsTriple: boolean variables stores true if a^2+b^2=c^2
    
    %Check if a^2_b^2=c^2
    bIsTriple = (nA^2 + nB^2) == nC^2;
end
