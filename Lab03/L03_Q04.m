%Omar Garcia
%L03_Q04

%Get input for first middle and last initial and a shift amount then Create a Ceaser 
%Cypher that shifts Each Character then print the cypher

%Varibales 
%charFI: First Intial (char)
%charMI: Middle Intial (char)
%charLI: Last Intial (char)
%nShiftAmount: Shift amount (int)

%clear all 
clear all 

%Get input 
charFI = input("Enter the first initial: ", 's');
charMI = input("Enter the middle initial: ", 's');
charLI = input("Enter the last initial: ", 's');
nShiftAmount = input("Enter the shift amount: ");

%Calculate Cypher
nLetter1 = (charFI - 65); 
nLetter2 = (charMI - 65); 
nLetter3 = (charLI - 65);

charCypherLetter1 = mod((nLetter1 + nShiftAmount), 26);
charCypherLetter2 = mod((nLetter2 + nShiftAmount), 26);
charCypherLetter3 = mod((nLetter3 + nShiftAmount), 26);

charCypherLetter1 = charCypherLetter1 + 65;
charCypherLetter2 = charCypherLetter2 + 65;
charCypherLetter3 = charCypherLetter3 + 65;

%Print results
fprintf("The encrypted initials are  %c %c %c \n",charCypherLetter1, charCypherLetter2, charCypherLetter3);


