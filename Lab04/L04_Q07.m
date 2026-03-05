%Omar Garcia
%L04_Q07

%Get a vector of real numbers from the User, then get an increments amount
%from the user. Every element starting at index 1 to the following
%multiples of the increement amount index should be multiplied by -1.
%Display the new vector

%Varibales
%afVec: Inputed Vector 
%nInc: Increment amount

afVec = input("Enter a vector of real numbers: ");
nInc = input("Enter the index increment: ");
afVec(1:nInc:length(afVec)) = afVec(1:nInc:length(afVec)) * -1;
fprintf("The new vector is: \n");
disp(afVec);
