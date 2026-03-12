function[] = L08_Q06()
%Omar Garcia
%Get the users selection from 1-3 where each one calculates
%either the volume of a sphere, cylinder, or cuboid or an 
%invalid selection then print out the results 
    %Variables
    %nSelection: integer value for the user's selection

    %get input
    nSelection  = get_selection();

    if nSelection == 1
        calc_volume_sphere();
    elseif nSelection == 2
        calc_volume_cylinder();
    elseif nSelection == 3
        calc_volume_cuboid();
    else
        fprintf("Invalid selection %d \n", nSelection);
    end
end

function[nSelection] = get_selection()
%print menu and get integet selection from the user
    %Variables
    %Output
    %nSelection: integer value of user inputed selection
    fprintf("Menu: \n");
    fprintf("1: Volume of a sphere \n");
    fprintf("2: Volume of a cylinder \n");
    fprintf("3: Volume of a cuboid \n");
    nSelection = input("Enter a selection: ");
end

function[] = calc_volume_sphere()
%Calculate the volume of a sphere and print out the results
    %Variables
    %Local Variables
    %nRadius: radius of the sphere
    %fVolume: calculated volume of the sphere
    nRadius = input("Enter the radius: ");
    fVolume = (4 / 3) * (pi) * (nRadius^3);
    fprintf("The volume of a sphere with radius %.3f is %.3f \n", nRadius, fVolume);
end

function[] = calc_volume_cylinder()
%Calculate the volume of a cylinder and print out the results
    %Variables
    %Local Variables
    %nRadius: radius of the cylinder
    %fHeight: height of the cylinder
    %fVolume: calculated volume of the sphere
    nRadius = input("Enter the radius: ");
    fHeight = input("Enter the height: ");
    fVolume = (fHeight) * (pi) * (nRadius^2);
    fprintf("The volume of a cylinder with radius %.3f and height %.3f is %.3f \n", nRadius, fHeight,fVolume);
end

function[] = calc_volume_cuboid()
%Calculate the volume of a cuboid and print out the results
    %Variables
    %Local Variables
    %nLength: length of the cuboid
    %nHeight: height of the cuboid
    %nWidth: width of the cuboid
    %fVolume: calculated volume of the cuboid
    nLength = input("Enter the length: ");
    nWidth = input("Enter the width: ");
    nHeight = input("Enter the height: ");
    fVolume = nLength * nWidth * nHeight;
    fprintf("The volume of a cuboid with length %.3f, width %.3f, and height %.3f is %.3f \n", nLength, nWidth, nHeight, fVolume);
end
