%Omar Garcia 
%L04_Q03

%Get an input vector for the chicken denominations and another input
%vector for the quantity of denominations purchased. Calculate the sum of
%the producs of each element of the vectors

%Variables
%anDenominations: chicken nuggets in various denomination
%anQuantity: quantities of each denomination to be purchased
%nTotal: Total number of chicken nuggets recieved from purchase

%clear all
clear all

anDenomination = input("Enter the denominations in which chicken nuggets are available: ");
anQuantity = input("Enter the quantity of each denomination to be purchased: ");


nTotal = anDenomination * anQuantity';

fprintf("The total number of chicken nuggets purchased is %d\n", nTotal);
