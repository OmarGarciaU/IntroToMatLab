function[] = L09_Q06()
%Omar Garcia
%Calculate and print Taylor series approximations of sin(x) then plot
    %Variables
    %afXValues: vector of x values
    %afN1: vector of Taylor approximation values for n=1
    %afN2: vector of Taylor approximation values for n=2
    %afN3: vector of Taylor approximation values for n=3
    %afN4: vector of Taylor approximation values for n=4
    [afXValues, afN1, afN2, afN3, afN4] = calc_taylor_approx_of_sin();
    %plot_taylor_approx_of_sin(afXValues, afN1, afN2, afN3, afN4);
end

function[afXValues, afN1, afN2, afN3, afN4] = calc_taylor_approx_of_sin()
%Prompt user for x range, compute Taylor approximations for n=1 through 4
    %Variables
    %Input (from user)
    %nXMin: minimum x value
    %nXMax: maximum x value
    %nNumOfX: number of x values
    %Output
    %afXValues: vector of x values from nXMin to nXMax
    %afN1: Taylor approximation vector for n=1
    %afN2: Taylor approximation vector for n=2
    %afN3: Taylor approximation vector for n=3
    %afN4: Taylor approximation vector for n=4
    nXMin = input("Enter the minimum x value: ");
    nXMax = input("Enter the maximum x value: ");
    nNumOfX = input("Enter the number of x values: ");
    afXValues = linspace(nXMin, nXMax, nNumOfX);

    % Taylor series: sum of (-1)^(k-1) * x^(2k-1) / (2k-1)! for k=1..n
    afN1 = (-1).^(1-1) .* afXValues.^(2*1-1) ./ factorial(2*1-1);

    afN2 = afN1 + (-1).^(2-1) .* afXValues.^(2*2-1) ./ factorial(2*2-1);

    afN3 = afN2 + (-1).^(3-1) .* afXValues.^(2*3-1) ./ factorial(2*3-1);

    afN4 = afN3 + (-1).^(4-1) .* afXValues.^(2*4-1) ./ factorial(2*4-1);

    fprintf("For n = 1 the Taylor approximation of sin gives values:\n");
    disp(afN1);
    fprintf("For n = 2 the Taylor approximation of sin gives values:\n");
    disp(afN2);
    fprintf("For n = 3 the Taylor approximation of sin gives values:\n");
    disp(afN3);
    fprintf("For n = 4 the Taylor approximation of sin gives values:\n");
    disp(afN4);
end

function[] = plot_taylor_approx_of_sin(afXValues, afN1, afN2, afN3, afN4)
%Plot all four Taylor approximations and the true sin curve
    %Variables
    %Input
    %afXValues: vector of x values
    %afN1: Taylor approximation vector for n=1
    %afN2: Taylor approximation vector for n=2
    %afN3: Taylor approximation vector for n=3
    %afN4: Taylor approximation vector for n=4
    figure(1);
    clf;
    plot(afXValues, afN1, '-r');
    hold on;
    plot(afXValues, afN2, '-b');
    plot(afXValues, afN3, '-g');
    plot(afXValues, afN4, '-m');
    plot(afXValues, sin(afXValues), '-k');
    hold off;
    xlabel('x');
    ylabel('Approximation or True sin( x )');
    legend('nMax = 1', 'nMax = 2', 'nMax = 3', 'nMax = 4', 'True', 'Location', 'northwest');
    theme(gcf, 'light');
    print('-dpng', 'L09_Q06.png');
end
