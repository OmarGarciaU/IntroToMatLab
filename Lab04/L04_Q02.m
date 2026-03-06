%Omar Garcia 
%L04_Q02

%Get 3 Letters which are the initials from the user and store them in an 
%array one at a time. Them you get the numerical value of the users birth
%month, day, and year

%Variables 
%chLetterOne: First Letter
%chLetterTwo: Second Letter
%chLetterThree: Third Letter
%nMonth: Birth month
%nDay: Birth day
%nYear: Birth year
%anBirthMDY: array containing birth month, day , and year


%Clear All 
clear all

chLetterOne = input("Enter the first letter of your first name: ", "s");
chLetterTwo = input("Enter your middle initial: ", "s");
chLetterThree = input("Enter the first letter of your last name: ", "s");

achInitials = [ chLetterOne chLetterTwo chLetterThree];

nMonth = input("Enter the number of your birth month: ");
nDay = input("Enter the number of your birth day: ");
nYear = input("Enter the number of your birth year: ");

anBirthMDY = [nMonth,nDay,nYear];

fprintf("Your Initials are: %s\n",achInitials);
fprintf("Your birth date is: \n");
disp(anBirthMDY);
