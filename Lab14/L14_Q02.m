function[] = L14_Q02()
    nRows = get_num_of_rows();
    print_pascals_triangle(nRows);
end

function[nRows] = get_num_of_rows()
    nRows = input('Enter the number of rows for Pascal''s triangle: ');
    while nRows <= 0 || abs(nRows - round(nRows)) >= 1e-8
        fprintf("Invalid entry %d \n", nRows);
        nRows = input('Enter the number of rows for Pascal''s triangle: ');
    end
end

function[] = print_pascals_triangle(nRows)
    for nRow = 0:(nRows-1)
        for nK = 0:nRow
            nEntry = calc_binomial_recursive(nRow, nK);
            fprintf("%d ", nEntry);
        end
        fprintf("\n");
    end
end

function[nEntry] = calc_binomial_recursive(nRow, nK)
    if nK == 0 || nRow == nK
        nEntry = 1;
    else 
       nEntry = calc_binomial_recursive(nRow - 1, nK - 1) + calc_binomial_recursive(nRow - 1, nK);
    end
end
