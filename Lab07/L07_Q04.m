function[] = L07_Q04()
%Omar Garcia
%Calculate course grade based on best of 3 grading methods
    %Variables
    %fMethod1: anonymous function for grading method 1
    %fMethod2: anonymous function for grading method 2
    %fMethod3: anonymous functions for grading method 3
    %anScores: vector of five scores
    %bBest1: boolean for which method is best
    %bBest2: boolean for which method is best
    %bBest3: boolean for which method is best
    %fBestScore: highest score
    [fMethod1, fMethod2, fMethod3, anScores] = get_input();
    [fBestScore, bBest1, bBest2, bBest3] = calculate_score(fMethod1, fMethod2, fMethod3, anScores);
    fprintf("Method 1 is best? %d \n", bBest1);
    fprintf("Method 2 is best? %d \n", bBest2);
    fprintf("Method 3 is best? %d \n", bBest3);
    fprintf("The best score is %.2f \n", fBestScore);
end

function[fMethod1, fMethod2, fMethod3, anScores] = get_input()
%Get anonymous functions and scores from user
    %Variables
    %Output
    %fMethod1: anonymous function for grading method 1
    %fMethod2: anonymous function for grading method 2
    %fMethod3: anonymous functions for grading method 3
    %anScores: vector of five scores
    fMethod1 = input("Enter an anonymous function for method 1: ");
    fMethod2 = input("Enter an anonymous function for method 2: ");
    fMethod3 = input("Enter an anonymous function for method 3: ");
    anScores = input("Enter a vector of 5 scores: ");
end

function[fBestScore, bBest1, bBest2, bBest3] = calculate_score(fMethod1, fMethod2, fMethod3, anScores)
%Calculate final score using each method and return highest
    %Variables
    %Input
    %fMethod1: anonymous function for grading method 1
    %fMethod2: anonymous function for grading method 2
    %fMethod3: anonymous functions for grading method 3
    %anScores: vector of five scores
    %Output
    %bBest1: boolean for which method is best
    %bBest2: boolean for which method is best
    %bBest3: boolean for which method is best
    %fBestScore: highest score
    fScore1 = fMethod1(anScores(1), anScores(2), anScores(3), anScores(4), anScores(5));
    fScore2 = fMethod2(anScores(1), anScores(2), anScores(3), anScores(4), anScores(5));
    fScore3 = fMethod3(anScores(1), anScores(2), anScores(3), anScores(4), anScores(5));
    fBestScore = max([fScore1, fScore2, fScore3]);
    bBest1 = (fScore1 == fBestScore);
    bBest2 = (fScore2 == fBestScore);
    bBest3 = (fScore3 == fBestScore);
end
