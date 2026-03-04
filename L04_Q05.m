%Omar Garcia
%L04_Q05

%Get a vector input from the User where the first element is the lenth
%second is width and third is height and it repeats for the entire vector.
%Get the total volume of each item being length width and height. Then save
%the volumes into a new vector and display the vector

%Variables:
%anLuggageData: User inputed data for their luggage dimensions 
%anVolumes: Total Volumes of all the luggage
%anLen: Length
%anWid: Width
%anHgt: Height

%clear all 
clear all

anLuggageData = input("Enter a vector of box lengths, widths, and heights: ");

anLen = anLuggageData(1:3:length(anLuggageData));
anWid = anLuggageData(2:3:length(anLuggageData));
anHgt = anLuggageData(3:3:length(anLuggageData));

anVolumes = anLen.* anWid.* anHgt;
fprintf("The volume of each box is: \n");
disp(anVolumes);
