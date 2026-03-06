function[] = L06_Q07()
%Omar Garcia
%Particle swarm optimization to find a signal source
%Robot updates velocity and position to converge on source

    % Get source info
    [aanS, nP] = get_input();
    
    % Initialize robot
    [x, v, Px, xb, Pb] = initialize_robot(aanS, nP);
    
    % Display iteration 0
    iter = 0;
    fprintf("Iter %d: Curr vel ( %.2f, %.2f ), Curr pos ( %.2f, %.2f ), Best pos ( %.2f, %.2f ), Curr signal %.2f, Best signal %.2f\n", ...
        iter, v(1), v(2), x(1), x(2), xb(1), xb(2), Px, Pb);
    
    % Main algorithm - iteration 1
    iter = 1;
    v = update_velocity(x, v, xb);
    x = update_position(x, v);
    Px = receive_signal(x, aanS, nP);
    [xb, Pb] = update_best(xb, x, Px, Pb);
    fprintf("Iter %d: Curr vel ( %.2f, %.2f ), Curr pos ( %.2f, %.2f ), Best pos ( %.2f, %.2f ), Curr signal %.2f, Best signal %.2f\n", ...
        iter, v(1), v(2), x(1), x(2), xb(1), xb(2), Px, Pb);
    
    % Iteration 2
    iter = 2;
    v = update_velocity(x, v, xb);
    x = update_position(x, v);
    Px = receive_signal(x, aanS, nP);
    [xb, Pb] = update_best(xb, x, Px, Pb);
    fprintf("Iter %d: Curr vel ( %.2f, %.2f ), Curr pos ( %.2f, %.2f ), Best pos ( %.2f, %.2f ), Curr signal %.2f, Best signal %.2f\n", ...
        iter, v(1), v(2), x(1), x(2), xb(1), xb(2), Px, Pb);
    
    % Iteration 3
    iter = 3;
    v = update_velocity(x, v, xb);
    x = update_position(x, v);
    Px = receive_signal(x, aanS, nP);
    [xb, Pb] = update_best(xb, x, Px, Pb);
    fprintf("Iter %d: Curr vel ( %.2f, %.2f ), Curr pos ( %.2f, %.2f ), Best pos ( %.2f, %.2f ), Curr signal %.2f, Best signal %.2f\n", ...
        iter, v(1), v(2), x(1), x(2), xb(1), xb(2), Px, Pb);
    
    % Iteration 4
    iter = 4;
    v = update_velocity(x, v, xb);
    x = update_position(x, v);
    Px = receive_signal(x, aanS, nP);
    [xb, Pb] = update_best(xb, x, Px, Pb);
    fprintf("Iter %d: Curr vel ( %.2f, %.2f ), Curr pos ( %.2f, %.2f ), Best pos ( %.2f, %.2f ), Curr signal %.2f, Best signal %.2f\n", ...
        iter, v(1), v(2), x(1), x(2), xb(1), xb(2), Px, Pb);
    
    % Iteration 5
    iter = 5;
    v = update_velocity(x, v, xb);
    x = update_position(x, v);
    Px = receive_signal(x, aanS, nP);
    [xb, Pb] = update_best(xb, x, Px, Pb);
    fprintf("Iter %d: Curr vel ( %.2f, %.2f ), Curr pos ( %.2f, %.2f ), Best pos ( %.2f, %.2f ), Curr signal %.2f, Best signal %.2f\n", ...
        iter, v(1), v(2), x(1), x(2), xb(1), xb(2), Px, Pb);

end

function [aanS, nP] = get_input()
%Prompt user for source position and transmission power
    %Output
    %s: source position (2x1 column vector)
    %P: transmission power (scalar)
    aanS = input("Enter position of source as a column vector: ");
    nP = input("Enter transmission power: ");
end

function [x, v, Px, xb, Pb] = initialize_robot(aanS, nP)
%Initialize robot with random position and velocity
    %Input
    %s: source position
    %P: transmission power
    %Output
    %x:  initial robot position (2x1)
    %v:  initial robot velocity (2x1)
    %Px: initial signal strength at x
    %xb: best position so far (initialized to x)
    %Pb: best signal so far (initialized to Px)
    x = -5 + 10 * rand(2, 1);
    v = -0.25 + 0.5 * rand(2, 1);
    Px = receive_signal(x, aanS, nP);
    xb = x;
    Pb = Px;
end

function [Px] = receive_signal(x, aanS, nP)
%Calculate received signal strength at position x
    %Input
    %x: robot position (2x1)
    %s: source position (2x1)
    %P: transmission power
    %Output
    %Px: received signal power
    d = sqrt((x(1) - aanS(1))^2 + (x(2) - aanS(2))^2);
    n = -0.05*nP + 0.1*nP * rand();
    Px = nP / (1 + d)^2 + n;
end

function [v] = update_velocity(x, v, xb)
%Update robot velocity using PSO rule
    %Input
    %x:  current robot position (2x1)
    %v:  current robot velocity (2x1)
    %xb: best position so far (2x1)
    %Output
    %v: updated velocity (2x1)
    r = 2 * rand(2, 1);
    v = v + r .* (xb - x);
end

function [x] = update_position(x, v)
%Update robot position
    %Input
    %x: current position (2x1)
    %v: current velocity (2x1)
    %Output
    %x: updated position (2x1)
    x = x + v;
end

function [xb, Pb] = update_best(xb, x, Px, Pb)
%Update best position and signal if current is better
    %Input
    %xb: current best position (2x1)
    %x:  current position (2x1)
    %Px: current signal strength
    %Pb: current best signal strength
    %Output
    %xb: updated best position
    %Pb: updated best signal
    xb = xb .* (Pb >= Px) + x .* (Px > Pb);
    Pb = Pb * (Pb >= Px) + Px * (Px > Pb);
end
