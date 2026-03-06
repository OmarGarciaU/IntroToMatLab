function[] = L06_Q05()
%Omar Garcia

%Get input matrix. Extract a random column and print it. 

    %Variables
    %aanMatrix: inputed matrix 
    %nCol: Column that was randomnly picked

    aanMatrix = get_matrix();
    anCol = pick_random_column(aanMatrix);
    print_column(anCol);
end

function[aanMatrix] = get_matrix()
%Get an inputed matrix from the user
    %Variables
    %Outout
    %aanMatrix: return the matrix

    %Get a matrix from the user
    aanMatrix = input("Enter a matrix of integers: ");
end

function[anCol] = pick_random_column(aanMatrix)
%Pick a random column from a given matrix and return that column 
    %Variables
    %Input:
    %aanMatrix
    %Output:
    %anCol: column to return 

    %Local Variables:
    %nRng: random integer generated 
    %nRows: number of rows stored in matrix
    %nCols: number of cols stored in matrix

    [~, nCols] = size(aanMatrix);
    nRng = randi([1,nCols]);

    anCol = aanMatrix(:,nRng);

end

function[] = print_column(anCol)
%print the column passed into the function
    %Variables
    %Input
    %anCol: Column of a matrix passed into the function
    fprintf("The randomly chosen column is: \n");
    disp(anCol);
end
