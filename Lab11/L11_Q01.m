function[] = L11_Q01()
%Omar Garcia
    %Get input
    [nNumOfVerts, bIsNumValid] = get_number_of_vertices();

    %Generate Adjacency matrix and call functions only if input is valid
    if bIsNumValid
        aaA = randi([0, 1], nNumOfVerts, nNumOfVerts);
        print_matrix(aaA, "The random adjacency matrix is: ");
        calc_size(aaA, nNumOfVerts);
        calc_degrees(aaA, nNumOfVerts);
    end
end

function[nNumOfVerts, bIsNumValid] = get_number_of_vertices()
%Take an integer input check if it is an integer and greater or equal to 2
% return the integer and if it is true as a boolean value
    %Variables
    %Output
    %bIsNumValid: boolean if number is integer and greater than 2
    %nNumOfVerts: integer inputed by user
    %Local Variables
    %fTolerance: float value used to determine if nNumOfVerts is an integer

    %Instantiate Variables
    bIsNumValid = 1;
    fTolerance = 1e-8;

    %Get input
    nNumOfVerts = input("Enter the number of vertices: ");

    %Check if inputed number is valid
    if nNumOfVerts < 2
        fprintf("invalid entry %d \n", nNumOfVerts);
        bIsNumValid = 0;
    elseif abs(nNumOfVerts - round(nNumOfVerts)) >= fTolerance
        fprintf("Invalid entry %d \n", nNumOfVerts);
        bIsNumValid = 0;
    end
end

function[] = print_matrix(aaA, achOutput)
%Print adjacency matrix passed in
    %Input
    %aaA: randomized Adjacency Matrix
    %achOutput: String to display message with the matrix
    %Local
    %nRows: number of rows in the matrix
    %nCols: number of columns in the matrix

    fprintf("%s \n", achOutput);
    [nRows, nCols] = size(aaA);
    for nRow = 1:nRows
        for nCol = 1:nCols
            fprintf("%4d ", aaA(nRow, nCol));
        end
        fprintf("\n");
    end
end

function[] = calc_size(aaA, nNumOfVerts)
%Calculate the size of the graph by checking how many edges there are
    %Variables
    %Input
    %aaA: Randomized Adjacency Matrix
    %nNumOfVerts: Total amount of vertices
    %Local
    %nTotal: value of running sum counting edges
    %nRow: row of the matrix
    %nCol: column of the matrix

    nTotal = 0;

    for nRow = 1:nNumOfVerts
        for nCol = 1:nNumOfVerts
            if aaA(nRow, nCol) == 1
                nTotal = nTotal + 1;
            end
        end
    end

    fprintf("The size of the graph is %d \n", nTotal);
end

function[] = calc_degrees(aaA, nNumOfVerts)
%Calculate and print in-degree, out-degree, and degree of each vertex
    %Input
    %aaA: Randomized Adjacency Matrix
    %nNumOfVerts: Total amount of vertices
    %Local
    %aIndegree: vector storing in-degree of each vertex
    %aOutdegree: vector storing out-degree of each vertex
    %aDegree: vector storing degree of each vertex
    %nTotal: running sum for degree calculations

    aIndegree = ones(1, nNumOfVerts);
    aOutdegree = ones(1, nNumOfVerts);
    aDegree = ones(1, nNumOfVerts);

    %Calculate out-degrees (sum of each row)
    for nRow = 1:nNumOfVerts
        nTotal = 0;
        for nCol = 1:nNumOfVerts
            if aaA(nRow, nCol) == 1
                nTotal = nTotal + 1;
            end
        end
        aOutdegree(1, nRow) = nTotal;
    end

    %Calculate in-degrees (sum of each column)
    for nCol = 1:nNumOfVerts
        nTotal = 0;
        for nRow = 1:nNumOfVerts
            if aaA(nRow, nCol) == 1
                nTotal = nTotal + 1;
            end
        end
        aIndegree(1, nCol) = nTotal;
    end

    %Calculate degrees (in-degree + out-degree)
    for nRow = 1:nNumOfVerts
        aDegree(1, nRow) = aIndegree(1, nRow) + aOutdegree(1, nRow);
    end

    %Print out-degrees
    for nRow = 1:nNumOfVerts
        fprintf("Vertex %2d has out-degree %2d \n", nRow, aOutdegree(1, nRow));
    end

    %Print in-degrees
    for nRow = 1:nNumOfVerts
        fprintf("Vertex %2d has in-degree %2d \n", nRow, aIndegree(1, nRow));
    end

    %Print degrees
    for nRow = 1:nNumOfVerts
        fprintf("Vertex %4d has degree %4d \n", nRow, aDegree(1, nRow));
    end

end
