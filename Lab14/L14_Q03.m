function[] = L14_Q03()
%Omar Garcia 
    f = @(x) x^4 - x^3 - 7 * x^2 + x + 6;
    [nEndPointA, nEndPointB, nEpsilon] = get_input(f);
    n = 1;
    [fFinalRoot, nAtRootN, fFinalErr] = bisection_method(f,nEndPointA, nEndPointB, nEpsilon, n);
    fprintf("An approximation of the root is x( %d ) = %.4f \n", nAtRootN, fFinalRoot);
    fprintf("An approximation of the absolute error is %.4e \n", fFinalErr)
end

function[nEndPointA, nEndPointB, nEpsilon] = get_input(f)
    nEndPointA = input("Enter a value for a: ");
    nEndPointB = input("Enter a value for b: ");
    while nEndPointB < nEndPointA
        fprintf("Invalid entry %.4f \n", nEndPointB);
        nEndPointB = input("Enter a value for b: ");
    end

    while sign(f(nEndPointA)) == sign(f(nEndPointB))
        fprintf("Invalid a %.4f and invalid b %.4f as sign(f(a)) == sign(f(b)) \n", nEndPointA, nEndPointB);
        nEndPointA = input("Enter a value for a: ");
        nEndPointB = input("Enter a value for b: ");
    end
    nEpsilon = input("Enter a value for epsilon: ");
    while nEpsilon <= 0
        fprintf("Invalid epsilon %.4f\n", nEpsilon);
        nEpsilon = input("Enter a value for epsilon: ");
    end
end

function[fFinalRoot, nAtRootN, fFinalErr] = bisection_method(f,nEndPointA, nEndPointB, nEpsilon, n)
    fprintf("bisection method: Enter with a = %.4f, b = %.4f, n = %d \n", nEndPointA, nEndPointB,n);
    fC = (nEndPointA + nEndPointB) / 2;
    nWidth = nEndPointB - nEndPointA;
    if nWidth < nEpsilon 
        fFinalRoot = fC;
        nAtRootN = n;
        fFinalErr = nWidth;
    else
        if sign(f(nEndPointA)) ~= sign(f(fC))
            n = n + 1;
            nEndPointB = fC;
            [fFinalRoot, nAtRootN, fFinalErr] = bisection_method(f,nEndPointA, nEndPointB, nEpsilon, n);
        else
            n = n + 1;
            nEndPointA = fC;
            [fFinalRoot, nAtRootN, fFinalErr] = bisection_method(f,nEndPointA, nEndPointB, nEpsilon, n);
        end
    end
end
