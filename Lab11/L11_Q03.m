function[] = L11_Q03()
    fTolerance = 1e-8;
    len = input("Enter the vector length: ");
    if len < 2
        fprintf("Invalid length %4d \n", len);
    elseif abs(len - round(len)) >= fTolerance
        fprintf("Invalid length %4d \n", len);
    else
        anVector = generate_random_vector(len);
        print_vector(anVector, len, "The random vector is: ");
        nIndex = input("Enter the index of the value to remove: ");
        if nIndex < 1 || nIndex > len
            fprintf("Invalid index %4d \n", nIndex);
        elseif abs(nIndex - round(nIndex)) >= fTolerance
            fprintf("Invalid index %4d \n", nIndex);
        else
            anVectorNew = remove_element(anVector, len, nIndex);
            print_vector(anVectorNew, len-1, "The new vector is: ");
        end
    end
end

function[anVector] = generate_random_vector(len)
    nMin = input("Enter the minimum value: ");
    nMax = input("Enter the maximum value: ");
    anVector = rand(1,len) * (nMax-nMin) + nMin;
end

function[] = print_vector(aVector, len, achOutput)
    fprintf("%s \n", achOutput);
    for nIndex = 1:len
        fprintf("%.3f \n", aVector(1,nIndex));
    end
end

function[anVectorNew] = remove_element(anVector, len, nIndex)
    
    anVectorNew = zeros(1,len-1);
    nIndexNew = 1;
    for i = 1:len
        if i ~= nIndex
            anVectorNew(1,nIndexNew) = anVector(1,i);
            nIndexNew = nIndexNew + 1;         
        end
    end
    % OTher method mentioned where you use 2 for loops
end
