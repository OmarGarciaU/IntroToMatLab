function[] = L08_Q03()
%Omar Garcia
%Get an integer input for a month value then check if it between 1-12. if
%it is not then an error message is printed. If it is then ask for the the 
%day as integet input and check if the day matches the month
    %Variables
    %nMonth: Month value inputed by the user
    %nDay: Day value inputed by user 
    %bValidDau: boolean of whether or not the day inputed was valid
    %bValidMonth: boolean of whether or not the month inputed was valid

    %Get Month
    [nMonth, bValidMonth] = get_month();

    %Check if month and day are valid then print the next day
    if(bValidMonth)
        [nDay,bValidDay] = get_day(nMonth);
        if bValidDay 
            if (nMonth == 4) || (nMonth == 6) || (nMonth == 9) || (nMonth == 11)
                if nDay == 30 
                    nMonth = nMonth + 1;
                    nDay = 1;
                    fprintf("The next day is %d with month %d \n",(nDay), nMonth);
                else
                    fprintf("The next day is %d with month %d \n",(nDay + 1), nMonth);
                end
            elseif nMonth == 2
                if nDay == 28
                    nMonth = nMonth + 1;
                    nDay = 1;
                    fprintf("The next day is %d with month %d \n",(nDay), nMonth);
                else 
                    fprintf("The next day is %d with month %d \n",(nDay + 1), nMonth);
                end
            else
                if nDay == 31
                    nDay = 1;
                    if nMonth == 12
                        nMonth = 1;
                    else
                        nMonth = nMonth + 1;
                    end
                    fprintf("The next day is %d with month %d \n",(nDay), nMonth);
                else
                    fprintf("The next day is %d with month %d \n",(nDay + 1), nMonth);
                end
            end
        end
    end
end

function[nMonth, bValidMonth] = get_month()
%function to get input for the month number and returns if it is a 
%valid month number 
    %Variables
    %Output
    %nMonth: month integer value 
    %bVaidMonth: boolean that returns true if month is valid 

    %Get input
    nMonth = input("Enter the current month (between 1 and 12): ");

    %Check if month is Valid
    bValidMonth = nMonth >=1 && nMonth <=12;
    if ~bValidMonth
        fprintf("%d is an invalid month \n",nMonth);
    end
end

function[nDay, bValidDay] = get_day(nMonth)
%function that checks if in a given month the day inputed is valid day value
%within that passed in nMonth
    %Variables
    %Input
    %nMonth: month integer value
    %Output
    %nDay: day integer value
    %bValidDay: boolean returns true if day is valid within the month

    %Get day input
    nDay = input("Enter the current day (between 1 and 31): ");

    %Check if day is valid 
    if (nMonth == 1) || (nMonth == 3) || (nMonth == 5) || (nMonth == 7) || (nMonth == 8) || (nMonth == 10) || (nMonth == 12)
        bValidDay = nDay >=1 && nDay <=31;
    elseif (nMonth == 4) || (nMonth == 6) || (nMonth == 9) || (nMonth == 11)
        bValidDay = nDay >=1 && nDay <= 30;
    else
        bValidDay = nDay >= 1 && nDay <= 28;
    end

    %test if day is not valid
    if ~bValidDay
        fprintf("%d is an invalid day for month %d \n",nDay,nMonth);
    end
end

