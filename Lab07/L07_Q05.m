function[] = L07_Q05()
%Omar Garcia
%Solve linear programming optimization problem
    %Variables
    %anCoeff: vector of coefficients
    %anX: vector for counter points X
    %anY: vector of corner point Y
    %anObjVals: objective function values at corner points
    %abIsBest: boolean vector of the best corner points

    anCoeff = get_coefficients();
    [anX, anY] = calc_corner_points(anCoeff);
    anObjVals = calc_obj_fun_values(anX, anY, anCoeff);
    abIsBest = calc_is_best_values(anObjVals);
    print_results(anX, anY, anObjVals, abIsBest);
end

function[anCoeff] = get_coefficients()
%Get vector of 7 coefficients from user
    %Variables
    %Output
    %anCoeff: vector of 7 LP coefficients
    anCoeff = input("Enter a vector of the 7 LP coefficients: ");
end

function[anX, anY] = calc_corner_points(anCoeff)
%Calculate x and y coordinates for each of the 5 corner points
    %Variables
    %Input
    %anCoeff: vector of coeefficients
    %Output
    %anX: vector of x coordinates
    %anY: vector of y coordinates
    %
    %nA1 coefficient 1
    %nA2 coefficient 2
    %nB1 coefficient 3
    %nB2 coefficient 4
    %nB3 coefficient 5

    nA1 = anCoeff(1);
    nA2 = anCoeff(2);
    nB1 = anCoeff(3);
    nB2 = anCoeff(4);
    nB3 = anCoeff(5);

    anX = [nB1, (-nA2*nB2/nA1)+(nB3/nA1), 0, 0, nB1];
    anY = [(-nA1*nB1/nA2)+(nB3/nA2), nB2, nB2, 0, 0];
end

function[anObjVals] = calc_obj_fun_values(anX, anY, anCoeff)
%Calculate objective function value at each corner point
    %Variables
    %Input
    %anX: vector of x coordinates
    %anY: vector of y coordinates
    %anCoeff: vector of coefficients
    %Output
    %anObjVals: vector of objective function values
    %Local Variables
    %nC1 = cooefficient of point C1
    %nC2 = cooefficient of point C2

    nC1 = anCoeff(6);
    nC2 = anCoeff(7);
    anObjVals = (nC1 .* anX) + (nC2 .* anY);
end

function[abIsBest] = calc_is_best_values(anObjVals)
%Determine which corner points have the best objective function value
    %Variables
    %Input
    %anObjVals: vector of objective function values
    %Output
    %abIsBest: boolean vector
    %Local Variables
    %nBest
    nBest = max(anObjVals);
    abIsBest = (anObjVals >= nBest);
end

function[] = print_results(anX, anY, anObjVals, abIsBest)
%Print coordinates, objective value, and whether best for each corner point
    %Variables
    %Input
    %anX: vector of x coordinates
    %anY: vector of y coordinates
    %anObjVals: vector of objective function values
    %abIsBest: boolean vector
    acLabels = {"A", "B", "C", "D", "E"};
    fprintf("Point A ( %.2f, %.2f ) has objective function value %.2f and is max? %d \n", anX(1), anY(1), anObjVals(1), abIsBest(1));
    fprintf("Point B ( %.2f, %.2f ) has objective function value %.2f and is max? %d \n", anX(2), anY(2), anObjVals(2), abIsBest(2));
    fprintf("Point C ( %.2f, %.2f ) has objective function value %.2f and is max? %d \n", anX(3), anY(3), anObjVals(3), abIsBest(3));
    fprintf("Point D ( %.2f, %.2f ) has objective function value %.2f and is max? %d \n", anX(4), anY(4), anObjVals(4), abIsBest(4));
    fprintf("Point E ( %.2f, %.2f ) has objective function value %.2f and is max? %d \n", anX(5), anY(5), anObjVals(5), abIsBest(5));
end
