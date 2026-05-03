function[] = L14_Q01
    nA = get_integer();
    n = get_nonnegative_integer();
    nExp = exponential_function(nA, n);
    fprintf("The result of %dˆ%d is %d\n", nA,n,nExp);
end

function[nA] = get_integer()
    nA = input("Enter an integer: ");

    while abs(nA - round(nA)) >= 1e-8
        fprintf("Invalid entry %d \n",nA);
        nA = input("Enter an integer: ");
    end
end

function[n] = get_nonnegative_integer()
    n = input("Enter a nonnegative integer: ");

    while n < 0 || abs(n - round(n)) >= 1e-8
        fprintf("Invalid entry %d \n",n);
        n = input("Enter a nonnegative integer: ");
    end
end

function[nExp] = exponential_function(nA, n)
    nExp = 0;
    if n == 0
        nExp = 1;
    elseif n > 0         
        nExp = nA * (exponential_function(nA,n-1));
    end
end
