function[] = L09_Q03()
%Omar Garcia
%get input calculate a function and its derivative the plot the values
    %Variable
    %nExponent: exponent inputed by user
    %nA: number A which is a coefficient
    %nMinX: number of x minimum
    %nMaxX: number of x maximum
    %anXValues: vector of x values
    %anF: vector of calculated function values
    %anFPrime: vector of calculated derivative values
    [nExponent, nA, nMinX, nMaxX] = get_input();
    [anXValues, anF, anFPrime] = calc_plot_data(nExponent, nA, nMinX, nMaxX);
    print_plot_data(anXValues, anF, anFPrime);
    %plot_poly_and_derv(anXValues, anF, anFPrime);
end

function[nExponent, nA, nMinX, nMaxX] = get_input()
%Get input values
    %Variables
    %Output
    %nExponent: inputed value for the exponent
    %nA: inputed value for A
    %nMinX: inputed value for X min
    %nMaxX: inputed value for X max

    %Get input
    nExponent = input("Enter the exponent of x: ");
    nA = input("Enter the coefficient of x: ");
    nMinX = input("Enter the minimum x value: ");
    nMaxX = input("Enter the maximum x value: ");
end

function[anXValues, anF, anFPrime] = calc_plot_data(nExponent, nA, nMinX, nMaxX)
%Calculate the values for the function and its derivative
    %Variables
    %Input
    %nExponent: inputed value for the exponent
    %nA: inputed value for A
    %nMinX: inputed value for X min
    %nMaxX: inputed value for X max
    %Output
    %anXValues: vector of values from nMinX to nMaxX
    %anF: vector of values for function
    %anFPrime: vector of values for the derivative
    %Local Variable
    %f: anonymous function
    %fprime: anonymous function for derivative
    anXValues = nMinX:0.01:nMaxX;
    f = @(a, x, n) a .* x .^ n;
    fprime = @(a, x, n) a .* n .* x .^ (n - 1);
    anF = f(nA, anXValues, nExponent);
    anFPrime = fprime(nA, anXValues, nExponent);
end

function[] = print_plot_data(anXValues, anF, anFPrime)
%print values 
    %Variables
    %Input
    %anXValues: vector of x values
    %anF:vector of function outputs
    %anFPrime: vector of derivative outputs
    fprintf("For x values\n");
    disp(anXValues(1:100:end));
    fprintf("the function values are\n");
    disp(anF(1:100:end));
    fprintf("and the derivative values are\n");
    disp(anFPrime(1:100:end));
end

function[] = plot_poly_and_derv(anXValues, anF, anFPrime)
%Plot data
    %Variables
    %Input
    %anXValues: vector of x values
    %anF:vector of function outputs
    %anFPrime: vector of derivative outputs
    figure(1);
    clf;
    plot(anXValues, anF, '-k');
    hold on;
    plot(anXValues, anFPrime, '--b');
    hold off;
    xlabel('x');
    ylabel('Function Value');
    legend('f(x)', "f'(x)");
    theme(gcf, 'light');
    print('-dpng', 'L09_Q03.png');
end
