function[] = L14_Q05()
%Omar Garcia
    n = get_positive_integer();    
    fprintf("The digits of %d are: \n", n);
    print_digits(n);
end

function[n] = get_positive_integer()
    n = input("Enter a positive integer: ");
    while n <=0 || abs(n - round(n)) >= 1e-8
        fprintf("Invalid entry %d \n", n);
        n = input("Enter a positive integer: ");
    end
end

function[] = print_digits(n)
    if n < 10
        fprintf("%d \n", n);
    else
        print_digits(n / 10);
    end
end
