function[] = L10_Q05()
%Omar Garcia
%Prompts user for a vector length, generates a random vector, then finds
%and prints the maximum and minimum values and their indices
    %Variables
    %nLength: vector length entered by user
    %fTolerance: tolerance used to test if input is an integer
    %vVector: randomly generated vector
    %fMax: maximum value found in the vector
    %nMaxIdx: index of the maximum value
    %fMin: minimum value found in the vector
    %nMinIdx: index of the minimum value
    nLength = input("Enter the vector length: ");
    fTolerance = 1e-8;
    if nLength <= 0 || abs(nLength - round(nLength)) >= fTolerance
        fprintf("Invalid length %d\n", nLength);
    else
        vVector = generate_random_vector(nLength);
        print_vector(vVector, nLength);
        [fMax, nMaxIdx] = find_max(vVector, nLength);
        [fMin, nMinIdx] = find_min(vVector, nLength);
        fprintf("The max is %.3f and occurs at index %d\n", fMax, nMaxIdx);
        fprintf("The min is %.3f and occurs at index %d\n", fMin, nMinIdx);
    end
end

function[vVector] = generate_random_vector(nLength)
%Prompts user for min and max values and generates a random vector of given length
    %Variables
    %Input
    %nLength: number of elements in the vector
    %fMin: minimum value for random number range
    %fMax: maximum value for random number range
    %Output
    %vVector: randomly generated vector of length nLength
    fMin = input("Enter the minimum value: ");
    fMax = input("Enter the maximum value: ");
    vVector = fMin + (fMax - fMin) * rand(1, nLength);
end

function[] = print_vector(vVector, nLength)
%Prints each element of the vector on its own line
    %Variables
    %Input
    %vVector: vector to be printed
    %nLength: number of elements in the vector
    %nIndex: loop counter for iterating through the vector
    fprintf("The vector is:\n");
    for nIndex = 1:nLength
        fprintf("%.3f\n", vVector(nIndex));
    end
end

function[fMax, nMaxIdx] = find_max(vVector, nLength)
%Finds the maximum value in the vector and the index of its first occurrence
    %Variables
    %Input
    %vVector: vector to search
    %nLength: number of elements in the vector
    %nIndex: loop counter for iterating through the vector
    %Output
    %fMax: maximum value found in the vector
    %nMaxIdx: index of the first occurrence of the maximum value
    fMax = vVector(1);
    nMaxIdx = 1;
    for nIndex = 2:nLength
        if vVector(nIndex) > fMax
            fMax = vVector(nIndex);
            nMaxIdx = nIndex;
        end
    end
end

function[fMin, nMinIdx] = find_min(vVector, nLength)
%Finds the minimum value in the vector and the index of its first occurrence
    %Variables
    %Input
    %vVector: vector to search
    %nLength: number of elements in the vector
    %nIndex: loop counter for iterating through the vector
    %Output
    %fMin: minimum value found in the vector
    %nMinIdx: index of the first occurrence of the minimum value
    fMin = vVector(1);
    nMinIdx = 1;
    for nIndex = 2:nLength
        if vVector(nIndex) < fMin
            fMin = vVector(nIndex);
            nMinIdx = nIndex;
        end
    end
end
