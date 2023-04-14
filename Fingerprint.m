% This function takes a set of windows (in the form of a 2D array) and calculates a document 
% fingerprint using the winnowing algorithm (i.e., we select the rightmost minimum from 
% each window). It will return the document fingerprint as a 2D array in which each 
% column contains a winnowed value and its corresponding position
% Input: windows = A n x w 2D array representing a set of windows, where each window has w values in it
% Output: f = A 2 row 2D array representing a fingerprint, which consists of a set of winnowed values 
% (the first row) and the relative positions of those values (the second row). Each column 
% of the output, therefore, contains a hash value/position pair. 
% Author: Audrey You

function [f] = Fingerprint(windows)

% rw = the number of rows in the windows array
% cw = the number of columns of the windows array/the window size
[rw, cw] = size(windows);

% Find the minimum value (m) and its position for each individual row
for i = 1:rw
    [m, pos] = RightMin(windows(i,:));
    f(1, i) = m;
    f(2, i) = pos;
end

% cf = the length of f
[~, c1] = size(f); 

% Determines whether the final output f will contain the same hash values in a
% different position - if a hash value with index i is the same as another hash 
% value with index cw (window size) + 1, then f will contain same hash values with
% different postions. The position of the second same hash value will be cw
% (window size) + its position in its individual row from windows (input).
for i = 1:c1-cw
    if f(1, i) == f(1, cw+i-1) && f(1, i) == f(1, cw+i)
       f(2, cw+i) = cw + f(2, cw+i);
    end
end

% If the following hash value is not the same as the previous hash value,
% the following hash value is unique. With a similar concept as the previous
% loop the position of the unique hash value will be its index position i
% in the current f + its position in its individual row from windows
% (input).
for i = 1:c1-1
    if f(1, i) ~= f(1, i+1)
        f(2, i+1) = i + f(2, i+1);
    end
end

% Remove the irrelevant hash values that correspond to the same index
% position as the original hash sequence by removing all columns that have 
% hash values that have a position lower or equal to its previous hash value
% i.e we want an f output where row 2 (the positions) are in ascending
% order.
% A for loop was implemented to repeat the while loop as c2 (length of
% current f) changes as columns are removed.
for j = 1:50
    i = 1;
    [~, c2] = size(f);
    while i < c2
        if f(2, i) >= f(2, i+1)
            % Remove the column by first changing all elements to a unique 
            % number 0.12345, than removing all columns that contain
            % 0.12345
            f(1:2, i+1) = 0.12345;
            f(:, any(f==0.12345)) = [];
        end
        i = i + 1;
        [~, c2] = size(f);
    end
end

% If position exceeds the number of columns in original hash sequence,
% remove the last column
if f(2, c2) > c1 + cw -1
    f(:, c2) = [];
end

end