%Omar Garcia
%L02_Q02

%clears previous data 
clear all

%Prompts the user for the number of liters of water used in a given month.
%Print total cost of liters used

%Variables 
%fCostPerLiterWaterUsed: Cost in dollars per Liter of water used.
%fLiterAmount: Amount of Water in Liter used 
%fTotalCostCents: The overall total cost in cents
%fTotalCostDollars: The overall total cost in dollars


%set initial variable values
fCostPerLiterWaterUsed = 10.5;
fCostPerLiterWaterSewageUse = 2.75;

%CGet input
fLiterAmount = input("Enter the number of liters this month: ");
%Calculate total cost in cents and dollars
fTotalCostCents = (fCostPerLiterWaterSewageUse + fCostPerLiterWaterUsed) * fLiterAmount;
fTotalCostDollars = fTotalCostCents / 100;
%print results
fprintf("Cost for %.2f liters is $%.2f\n", fLiterAmount, fTotalCostDollars);
