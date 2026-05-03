function[] = L14_Q04()
%Omar Garcia
    n = get_positive_integer();    
    [nFib,nCount] = fibonacci(n,1);
    fprintf("It took %d calls to determine that Fibonacci number %d is %d\n", nCount, n, nFib);
end

function[n] = get_positive_integer()
    n = input("Enter a positive integer: ");
    while n <=0 || abs(n - round(n)) >= 1e-8
        fprintf("Invalid entry %d \n", n);
        n = input("Enter a positive integer: ");
    end
end

function[nFib,nCount] = fibonacci(n,nCount)
    fprintf("Fibonacci: Enter on call %4d to compute Fibonacci( %d ) \n", nCount, n);
    if n == 1        
        nFib = 0;
    elseif n == 2        
        nFib = 1;
    else        
        [nFibOne,nCount] = fibonacci(n-1, nCount+1);        
        [nFibTwo,nCount] = fibonacci(n-2, nCount+1);        
        nFib = nFibOne + nFibTwo;
    end
end
