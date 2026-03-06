function[] = L06_Q03
%Omar Garcia

%Write a program that gets a vectors of x,y, and z input and it turns the point x,y,z 
%into spherical coordinates 

    %Variables 
    %anX: vector of integer x values
    %anY: vector of integer y values
    %anZ: vector of integer z values

    %anR: vector of integer x values
    %anTheta: vector of integer y values
    %anPhi: vector of integer z values

    %Get input and convert cartesian to spherical and print results
    [anX, anY, anZ] = get_cartesian();
    [anR, anTheta, anPhi] = cartesian_to_spherical(anX, anY, anZ);

    print_spherical(anR, anTheta, anPhi);

end

function[anX, anY, anZ] = get_cartesian()
%Get input from user for x, y, and z values
    %Variables
    %Output:
    %anX: value(s) for x inputed from the user
    %anY: value(s) for y inputed from the user
    %anZ: value(s) for z inputed from the user

    %Getting x,y,z from user
    anX = input("Enter a vector of values for x: ");
    anY = input("Enter a vector of values for y: ");
    anZ = input("Enter a vector of values for z: ");
    
end

function[anR, anTheta, anPhi] = cartesian_to_spherical(anX, anY, anZ)
%given rectanglular x,y,z coordinates convert these values into spherical
%coordinated with the appropiate formula
    %Input
    %anX: vector of x value(s) 
    %anY: vector of y value(s) 
    %anZ: vector of z value(s) 

    %Output
    %anR: vector of radius value(s)
    %anTheta: vector of theta value(s)
    %anPhi: vector of phi value(s)
    
    %Calculate spherical coordinates
    anR = sqrt((anX.^2) + (anY.^2) + (anZ.^2));
    anTheta = acos(anZ./ anR);
    anPhi = atan(anY./ anX);
end

function[] = print_spherical(anR, anTheta, anPhi)
%Print the values of the vectos r, theta, phi
    %Variables 
    
    %Input
    %anR: vector of radius value(s)
    %anTheta: vector of theta value(s)
    %anPhi: vector of phi value(s)

    %Print values R, Theta, and Phi
    fprintf("The r spherical coordinates are: \n");
    disp(anR);

    fprintf("The theta spherical coordinates are: \n");
    disp(anTheta);

    fprintf("The phi spherical coordinates are: \n");
    disp(anPhi);
end
