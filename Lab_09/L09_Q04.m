function[] = L09_Q04()
%Omar Garcia
%Get input, generate polar flower data, convert to rectangular, then plot
    %Variables
    %nK: value for k entered by user
    %nMaxTheta: maximum theta value entered by user
    %nNumOfTheta: number of theta points entered by user
    %anX: vector of rectangular x values
    %anY: vector of rectangular y values
    [nK, nMaxTheta, nNumOfTheta] = get_input();
    [anX, anY] = make_flower_data(nK, nMaxTheta, nNumOfTheta);
    %plot_flower_data(anX, anY);
end

function[nK, nMaxTheta, nNumOfTheta] = get_input()
%Get input values from user
    %Variables
    %Output
    %nK: inputted value for k
    %nMaxTheta: inputted maximum theta value
    %nNumOfTheta: inputted number of theta points
    nK = input("Enter a value for k: ");
    nMaxTheta = input("Enter the maximum theta value: ");
    nNumOfTheta = input("Enter the number of points: ");
end

function[anX, anY] = make_flower_data(nK, nMaxTheta, nNumOfTheta)
%Generate polar flower data and convert to rectangular coordinates
    %Variables
    %Input
    %nK: value for k
    %nMaxTheta: maximum theta value
    %nNumOfTheta: number of theta points
    %Output
    %anX: vector of rectangular x values
    %anY: vector of rectangular y values
    %Local Variables
    %anTheta: vector of theta values from 0 to nMaxTheta
    %anR: vector of radius values computed from cos(k*theta)
    anTheta = linspace(0, nMaxTheta, nNumOfTheta);
    anR = cos(nK .* anTheta);
    [anX, anY] = polar_to_rectangular(anR, anTheta);
    fprintf("Every 100th x value is:\n");
    disp(anX(1:100:end));
    fprintf("Every 100th y value is:\n");
    disp(anY(1:100:end));
end

function[anX, anY] = polar_to_rectangular(anR, anTheta)
%Convert polar coordinates to rectangular coordinates
    %Variables
    %Input
    %anR: vector of radius values
    %anTheta: vector of angle values in radians
    %Output
    %anX: vector of rectangular x values
    %anY: vector of rectangular y values
    anX = anR .* cos(anTheta);
    anY = anR .* sin(anTheta);
end

function[] = plot_flower_data(anX, anY)
%Plot the flower data in rectangular coordinates
    %Variables
    %Input
    %anX: vector of rectangular x values
    %anY: vector of rectangular y values
    figure(1);
    clf;
    plot(anX, anY, '-g');
    theme(gcf, 'light');
    print('-dpng', 'L09_Q04.png');
end
