function[] = L09_Q05()
%Omar Garcia
%Get input then generate and plot random data across 5 point counts
    %Variables
    %nMin: minimum random number entered by user
    %nMax: maximum random number entered by user
    %anPoints: vector of 5 point counts entered by user
    [nMin, nMax, anPoints] = get_input();
    %make_and_plot_random_data(nMin, nMax, anPoints);
end

function[nMin, nMax, anPoints] = get_input()
%Get input values from user
    %Variables
    %Output
    %nMin: inputted minimum random number
    %nMax: inputted maximum random number
    %anPoints: inputted vector of 5 counts of points
    nMin = input("Enter the minimum random number: ");
    nMax = input("Enter the maximum random number: ");
    anPoints = input("Enter a vector of 5 counts of points: ");
end

function[] = make_and_plot_random_data(nMin, nMax, anPoints)
%Generate random x and y data for each of the 5 point counts and plot
    %Variables
    %Input
    %nMin: minimum random number
    %nMax: maximum random number
    %anPoints: vector of 5 counts of points
    %Local Variables
    %anX1-anX5: vectors of random x values for each slot
    %anY1-anY5: vectors of y values (slot index) for each slot
    figure(1);
    clf;

    anX1 = nMin + (nMax - nMin) .* rand(1, anPoints(1));
    anY1 = 1 .* ones(1, anPoints(1));

    anX2 = nMin + (nMax - nMin) .* rand(1, anPoints(2));
    anY2 = 2 .* ones(1, anPoints(2));

    anX3 = nMin + (nMax - nMin) .* rand(1, anPoints(3));
    anY3 = 3 .* ones(1, anPoints(3));

    anX4 = nMin + (nMax - nMin) .* rand(1, anPoints(4));
    anY4 = 4 .* ones(1, anPoints(4));

    anX5 = nMin + (nMax - nMin) .* rand(1, anPoints(5));
    anY5 = 5 .* ones(1, anPoints(5));

    plot(anX1, anY1, 'ob');
    hold on;
    plot(anX2, anY2, 'ob');
    plot(anX3, anY3, 'ob');
    plot(anX4, anY4, 'ob');
    plot(anX5, anY5, 'ob');
    hold off;

    theme(gcf, 'light');
    print('-dpng', 'L09_Q05.png');
end
