function[] = L08_Q04()
%Omar Garcia
%Check wether an inputed vector of points is inside a circle 
%with an inputed radius and an inputed vector points representing 
%The circle's center
    %Variables
    %anCircleCenter: circle center point as column vector
    %nRadius: radius of circle (integer)
    %anPoint: point as a column vector

    %Get input
    [anCircleCenter, nRadius, anPoint] = get_circle_and_point();
    %Check if point is inside the circle
    bIsInside = is_in_circle(anCircleCenter, nRadius, anPoint);
    %print results
    if bIsInside
        fprintf("The point ( %.2f, %.2f ) is in the circle with center ( %.2f, %.2f ) and radius %.2f \n", anPoint(1), anPoint(2), anCircleCenter(1), anCircleCenter(2), nRadius);
    else

        fprintf("The point ( %.2f, %.2f ) is not in the circle with center ( %.2f, %.2f ) and radius %.2f \n", anPoint(1), anPoint(2), anCircleCenter(1), anCircleCenter(2), nRadius);
    end
end

function[anCircleCenter, nRadius, anPoint] = get_circle_and_point()
%Get input for points, a radius and the circles center
    %Variables
    %Output
    %anCircleCenter: circle center point as column vector
    %nRadius: radius of circle (integer)
    %anPoint: point as a column vector

    %Get input
    anCircleCenter = input("Enter the circle center as a column vector: ");
    nRadius = input("Enter the circle radius: ");
    anPoint = input("Enter the point as a column vector: ");
end

function[bIsInside] = is_in_circle(anCircleCenter, nRadius, anPoint)
%Check if a given vector of points x and y are inside a given circle with radius 
%and the circle center x and y
    %Variables
    %Output
    %anCircleCenter: circle center point as column vector
    %nRadius: radius of circle (integer)
    %anPoint: point as a column vector
    %bIsInside: returns true if the point is inside the circle

    %Check if the point is inside the circle
    bIsInside = 0;
    if anPoint(1) >= (anCircleCenter(1) - nRadius) && anPoint(1) <= (anCircleCenter(1) + nRadius)
        if abs(anPoint(2) - anCircleCenter(2)) <= (nRadius * acos((anPoint(1)) / nRadius))
            bIsInside = 1;
        end
    end
end
