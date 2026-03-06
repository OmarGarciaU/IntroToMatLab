function [] = L06_Q01()
%Omar Garcia

%Get an integer input and check if that number is
%divisible by 4

    %Variables 
    %nNumber: integer input 
    %bIsDivisible: boolean that determines if a number is divisible by four

    %Get integer from user
    nNumber = input("Enter an integer: ");

    %Check if Divisible by 4
    bIsDivisible = is_divisble_by_4(nNumber);

    %print if divisible
    fprintf("%d is divisible by 4? %d\n",nNumber, bIsDivisible);
end


function[bIsDivisible] = is_divisble_by_4(nNumber)
     %Check if divisible by 4

     %Input
     %%nNumber: integer input

     %Output
     %bIsDivisible: boolean that determines if a number is divisible by four

    bIsDivisible = mod(nNumber, 4) == 0;
end

