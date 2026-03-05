%Omar Garcia 
%L04_Q04

% Get a vector of data from the user. Split up the vector into a first half
% and second half. If the vector has odd amount of elements then include
% the extra middle element into the second hald then print both halfs.

%Variables
%anUserVec: Vector inputed by thwe user
%anFirstHalf: First Half of the inputed vector
%anSecondHalf: Second Hald of the inputed vector
%nlen: half the length of the vector

%Clear all
clear all

anUserVec = input("Enter a vector of data to split: ");
nlen = floor(length(anUserVec) / 2);
anFirstHalf = anUserVec(1:nlen);
anSecondHalf = anUserVec(nlen + 1:length(anUserVec));

fprintf("The first half of the vector is: \n");
disp(anFirstHalf);
fprintf("The second half of the vector is: \n");
disp(anSecondHalf);
