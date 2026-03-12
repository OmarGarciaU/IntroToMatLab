function[] = L07_Q03()
%Omar Garcia
%Get input from the user for the amount of green red and blue balls. Then 
%Calculate the probability of getting 4 green balls in a row. Then print 
%The results.
    %Variables
    %nRedBalls:   amount of red balls in the urn
    %nGreenBalls: amount of green balls in the urn
    %nBlueBalls:  amount of blue balls in the urn
    %fProb:       Probability score of drawing 4 green balls
    
    [nRedBalls, nGreenBalls, nBlueBalls] = get_ball_counts();
    fProb = calc_prob_of_all_green(nRedBalls, nGreenBalls, nBlueBalls);
    fprintf("The urn contains %d red balls, %d green balls, and %d blue balls \n", nRedBalls, nGreenBalls, nBlueBalls);
    fprintf("The probability of drawing 4 green balls from the urn is %.8f \n",fProb);
end

function[nRedBalls, nGreenBalls, nBlueBalls] = get_ball_counts()
%Get input from user for the amount of green, red, and blue balls in the urn

    %Variables
    %Output
    %nRedBalls:   amount of red balls in the urn
    %nGreenBalls: amount of green balls in the urn
    %nBlueBalls:  amount of blue balls in the urn

    nRedBalls   = input("Enter the number of red balls in the urn: ");
    nGreenBalls = input("Enter the number of green balls in the urn: ");
    nBlueBalls  = input("Enter the number of blue balls in the urn: ");
end

function[fProb] = calc_prob_of_all_green(nRedBalls, nGreenBalls, nBlueBalls)
%Calculate the probablity of the amount of green balls to be taken out 
    %Variables
    %input
    %nRedBalls:   amount of red balls in the urn
    %nGreenBalls: amount of green balls in the urn
    %nBlueBalls:  amount of blue balls in the urn
    %Output
    %fProb: Probability score of drawing green balls 
    %Local Variables
    %nTotal: sum of the total balls 

    nTotal = nRedBalls + nGreenBalls + nBlueBalls;
    fProb = (nGreenBalls / nTotal) * ((nGreenBalls - 1) / (nTotal - 1)) * ((nGreenBalls - 2) / (nTotal - 2)) * ((nGreenBalls - 3) / (nTotal - 3));
    
end
