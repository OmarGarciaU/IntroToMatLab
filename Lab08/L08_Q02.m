function[] = L08_Q02()
%Omar Garcia

%Get an number and tolerance from the user and find out
%if it is an integer by checking if the absolute difference 
%is less than the tolerance
    %Variables
    %fNumber: inputed number by user
    %fTolerance: tolerance amount inputed by the user

    %Get input
    [fNumber, fTolerance] = get_input();

    %call function that checks if number is an integer
    check_if_integer(fNumber, fTolerance);

end

function[fNumber, fTolerance] = get_input()
%Get a number and a tolerance amount from the user
    %Variables
    %Output
    %fNumber: number inputed by the user
    %fTolerance: tolerance inputed by the user

    %Get input
    fNumber = input("Enter a number: ");
    fTolerance = input("Enter a tolerance: ");
end

function[] = check_if_integer(fNumber, fTolerance)
%check if a number inputed by the user is an integer by checking 
%If the absolute difference is less than the tolerance 
%Print the results
    %Variables
    %Input
    %fNumber: number inputed by the user
    %fTolerance: tolerance inputed by the yser

    %Checl if number is an integer
    if abs(fNumber - round(fNumber)) < fTolerance
        fprintf("%d is an integer \n", fNumber);
    else
        fprintf("%.6f is not an integer \n",fNumber);
    end
end
