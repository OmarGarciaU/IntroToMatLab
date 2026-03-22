function[] = L09_Q02()
%Omar Garcia
%Get input from user then calculate three function values and put the values in 
%a vector then plot the values.
    %Variables
    %anAmplitude: amplitude vector inputed by user
    %anFrequency: frequency vector inputed by user
    %anPhaseShift: phaseshift vector inputed by user
    %anTimes: time values vector inputed  by user
    %aafF: vector of function values
    [anAmplitude, anFrequency, anPhaseShift, anTimes] = get_all_input();
    aafF = calc_fun_values(anAmplitude, anFrequency, anPhaseShift, anTimes);
    print_fun_values(aafF, anTimes);
    %plot_sins(aafF, anTimes);
end
 
function[anAmplitude, anFrequency, anPhaseShift, anTimes] = get_all_input()
%Get a vector input and return call get input three times and store the those values
%three vectors then return times and the three vectors
    %Variables
    %Output
    %anTimes: vector of times from inputed from user
    %anAmplitude: vector of amplitude values inputed from get input 
    %anFrequency: vector of frequency values inputed from get input 
    %anPhaseShift: vector of pahse shift values inputed from get input 

    anTimes = input("Enter a vector of time values: ");
    [anAmplitude(1), anFrequency(1), anPhaseShift(1)] = get_input(1);
    [anAmplitude(2), anFrequency(2), anPhaseShift(2)] = get_input(2);
    [anAmplitude(3), anFrequency(3), anPhaseShift(3)] = get_input(3);
end
 
function[nAmplitude, nFrequency, nPhaseShift] = get_input(nFunctionNum)
%Get three input values and print whhich funciton youre working with
    %Variable
    %Input
    %nFunctionNum: number of function getting input for
    %Output
    %nAmplitude: amplitude value inputed by user
    %nFrequency: frequency value inputed by user
    %nPhaseShift: phase shift value inputed by user
    fprintf("Data input for function %d \n", nFunctionNum);
    nAmplitude = input("Enter the amplitude: ");
    nFrequency = input("Enter the frequency: ");
    nPhaseShift = input("Enter the phase shift: ");
end
 
function[aafF] = calc_fun_values(anAmplitude,anFrequency,anPhaseShift,anTimes)
%Create an anonymous function that calculated the Asin(ft - phaseshift) then return
%The three function in a matrix
    %Variables
    %Input
    %anAmplitude: vector of amplitude values
    %anFrequency: vector of frequency values
    %anPhaseShift: vector of pahse shift values
    %Output
    %aafF: matrix that contains all three function values

    %anonymous function
    fSin = @(A, freq, t, phi) A.* sin(freq.* t + phi);
 
    %calcaulte values
    aafF(1,:) = fSin(anAmplitude(1), anFrequency(1), anTimes, anPhaseShift(1));
    aafF(2,:) = fSin(anAmplitude(2), anFrequency(2), anTimes, anPhaseShift(2));
    aafF(3,:) = fSin(anAmplitude(3), anFrequency(3), anTimes, anPhaseShift(3));
end
 
function[] = print_fun_values(aafF,anTimes)
%print all values in the function matrix at a specific time
    %Variables
    %Input
    %aadF: function matrix
    %anTimes: Values of Time vector

    %print values
    fprintf("Function 1 has value %.2f at time %.2f \n", aafF(1,1), anTimes(1));
    fprintf("Function 2 has value %.2f at time %.2f \n", aafF(2,1), anTimes(1));
    fprintf("Function 3 has value %.2f at time %.2f \n", aafF(3,1), anTimes(1));
end
 
function[] = plot_sins(aafF, anTimes)
%Plot values 
    %Variables
    %Input
    %aafF: function matrix
    %anTImes: vector of time values
    figure(1);
    clf;
    plot(anTimes, aafF(1,:), '-k');
    hold on;
    plot(anTimes, aafF(2,:), '-g');
    plot(anTimes, aafF(3,:), '-b');
    hold off;
    xlabel('Time');
    ylabel('Function Value');
    legend('f_1', 'f_2', 'f_3');
    theme(gcf, 'light');
    print('-dpng','L09_Q02.png');
end
