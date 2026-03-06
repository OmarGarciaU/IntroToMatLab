%Omar Garcia
%L03_Q06

%Get input for how many minutes. Calculate cost of phone bill. $30.00 for
%500 min, $0.25 per min for 500-750 min, and $0.50 for anything over
%display the cost 

%Variables 
%nMinutes:   Get amount of minutes    (int)
%fPhoneBill: Total cost of phone bill (float)
%fFlatRate:  Flat rate of $30         (float)
%fMidRate:   Rate from 600-750 min    (float)
%fFinalRate: ratr from 750 min and on (float)

%Clear all 
clear all

%Instantiate Constants
fFlatRate = 30.00;
fMidRate = 0.25;
fFinalRate = 0.50;
fPhoneBill = fFlatRate;

%Get input
fMinutes = input("Enter the number of minutes: ");

%Calculate phone bill
fPhoneBill = fPhoneBill + ((fMinutes>500 && fMinutes <= 750) * fMidRate * (fMinutes - 500)) + ( (250 * fMidRate * (fMinutes > 750)) + ((fMinutes > 750) * fFinalRate * (fMinutes-750)));

%Print Phone bill
fprintf("The Phone bill is $%.2f \n",fPhoneBill);
