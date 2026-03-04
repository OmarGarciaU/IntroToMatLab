%Omar Garcia
%L04_Q08

%Get a vector from User containing X center, Y center, and the radius. Then
%another vector containging the x values. Calculate the y values into a
%vector and display the y values.

%Variables 
%afGiven: The vector with the origin and radius
%afXVals: X values 
%afYVals: Y values

afGiven = input("Enter a vector for the circle x center, y center, and radius: ");
afXVals = input("Enter a vector of x values: ");

afYVals = afGiven(2) + sqrt(afGiven(3)^2 - (afXVals(1:length(afXVals)) - afGiven(1)).^2 );

fprintf("The corresponding y values for the top half of the circle are: \n");
disp(afYVals);
