function[] = L08_Q01()
%Omar Garcia
%Prompt the user to for an integer that chekcs 13,31,3, or anything between 113 and 131
%which makes the number lucky
%print if the number is lucky or not 

    %Get input
    nNumber = input("Enter an integer: ");
    bIsLucky = check_if_lucky(nNumber);

    %Chekc if luckt and print
    if(bIsLucky)
        fprintf("%d is a lucky number \n",nNumber);
    else
        fprintf("%d is not a lucky number \n",nNumber);
    end
end

function[bIsLucky] = check_if_lucky(nNumber)
%Checks if a number is lucky by returning a boolean whether or not 
%It is equal to 13,31,3 or in between 113 and 131
    %Variables
    %Input
    %nNumber: Integer inputed by User
    %Output
    %bIsLucky: Boolean returns 1 if number is lucky

    %Check if number is lucky
    if(nNumber == 13 || nNumber == 31 || nNumber == 3 || (nNumber >= 113 && nNumber <= 131))
       bIsLucky = 1;
    else
        bIsLucky = 0;
    end
end
