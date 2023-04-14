% This function finds values from array 1 that are also in array 2 and
% returns the index positions of these values in array 1
% Author: Audrey You
% Inputs: array 1 = first array that second array will be compared to 
%         array 2 = second array
% Outputs: indices = array of index positions in array 1 that had matches
%                    with array 2

function [indices] = FindMatchIndices(array1, array2)

% Initialise the index (of array 1) and indices
index = 0;
indices = [];

% Nested for loop that takes a value of array 1 and compares it to all the
% values of array 2, before moving onto the next index position
for i = array1
    index = index + 1;
    for j = array2
        if i == j
            indices(index) = index;
        end
    end
end

% Resulting array may include zeros for index positions with no matches, so
% remove zeros from the array
indices(indices==0) = [];

end