function[] = L09_Q01()
%Omar Garcia
%Get input ad print vectors of squares
    %Variables
    %anX: vector of x values
    %anY: vector of y values calculated by squaring x
    [anX, anY] = create_and_print_vector_of_squares();
    %plot_vector_of_squares(anX, anY);
end

function[anX, anY] = create_and_print_vector_of_squares()
%get input from from user and display x and y values
    %Variables:
    %Output
    %anX: vector of x values
    %anY: vector of y values
    %Local variables
    %nX: amount of x values

    %Get input 
    nX = input("Enter an integer between 3 and 100, inclusive: ");
    %generate x values
    anX = 0:2:nX;
    %calculate y values
    anY = anX.^2;
    fprintf("Plotting x values: \n");
    disp(anX);
    fprintf("Plotting y values: \n");
    disp(anY);
end

function[] = plot_vector_of_squares(anX, anY)
%plot function
    %Variables
    %Input
    %anX: vector of x values
    %anY vector of y values
    figure(1);
    clf;
    plot(anX,anY,'--sm');
    xlabel('n');
    ylabel('n^2');
    title('The plot');
    grid on;
    theme(gcf, "light");
    print('-dpng','L09_Q01.png');
end
