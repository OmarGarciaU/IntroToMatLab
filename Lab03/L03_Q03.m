%Omar Garcia
%L03_Q03

%Get First letter of first and last name then print the ascii code equivalent 

%Variables 
%chFNLetter: First Letter of First Name (char)
%chLNLetter: First Letter of Last Name (char)

%Clear All
clear all

charFNLetter = input("Enter the first letter of your first name: ", 's');
charLNLetter = input("Enter the first letter of your last name: ", 's');

fprintf("The ASCII code for %c is %d\n",charFNLetter,charFNLetter);
fprintf("The ASCII code for %c is %d\n",charLNLetter,charLNLetter);
