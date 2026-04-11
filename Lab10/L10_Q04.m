function[] = L10_Q04()
%Omar Garcia
%Prompts user for number of rows and prints Pascal's triangle
%using binomial coefficients if the input is valid
    %Variables
    %nNum: number of rows entered by user
    %bValidNum: boolean indicating if the input is valid
    [nNum, bValidNum] = get_num_rows();
    if bValidNum
        print_pascals_triangle(nNum);
    else
        fprintf("Invalid entry %d" , nNum);
    end
end

function[nNum, bValidNum] = get_num_rows()
%Prompts user for number of rows and validates it is a positive integer
    %Variables
    %Input
    %nNum: number of rows entered by user
    %fTolerance: tolerance used to test if input is an integer
    %Output
    %bValidNum: 1 if input is valid, 0 otherwise
    nNum = input("Enter the number of rows for Pascal's triangle: ");
    fTolerance = 1e-8;
    if nNum <= 0 || abs(nNum - round(nNum)) >= fTolerance
        bValidNum = 0;
    else
        bValidNum = 1;
    end
end

function[] = print_pascals_triangle(nNum)
%Prints Pascal's triangle row by row using binomial coefficients
    %Variables
    %Input
    %nNum: number of rows to print
    %nRow: current row index (0-based)
    %nK: current column index (0-based)
    %fProduct: binomial coefficient for current entry
    for nRow = 0:(nNum-1)
        for nK = 0:nRow
            fProduct = calc_binomial(nRow, nK);
            fprintf("%d ", fProduct);
        end
        fprintf("\n");
    end
end

function[fProduct] = calc_binomial(nRow, nK)
%Calculates the binomial coefficient for a given row and column
    %Variables
    %Input
    %nRow: the current row being calculated
    %nK: the column index within the row
    %nIndex: loop counter for the product formula
    %Output
    %fProduct: the calculated binomial coefficient
    fProduct = 1;
    if ~(nRow == nK || nK == 0)
        for nIndex = 1:nK
            fProduct = fProduct * (nRow + 1 - nIndex) / nIndex;
        end
    end
end
