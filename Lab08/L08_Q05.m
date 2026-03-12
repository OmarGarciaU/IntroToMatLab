function[] = L08_Q05()
%Omar Garcia
%Get character input from user in menu style
%print if the user selected Y to continue, N to 
%stop or an invalid input
    %Variables
    %chChoice: character for users choice 

    %check and print choices 
    chChoice = input("Would you like to continue? (Y/N): ", "s");
    if chChoice == 'Y' || chChoice == 'y'
        fprintf("Selected continue \n");
    elseif chChoice == 'N' || chChoice == 'n'
        fprintf("Selected stop \n");
    else
        fprintf("Invalid entry %c \n",chChoice);
    end
end
