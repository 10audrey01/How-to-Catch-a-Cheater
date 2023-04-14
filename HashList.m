% This function calculates the hash31 value for every string stored in a
% cell array to generate a sequence of integer hashed values
% Input: cell_string = a 1xn cell array where each element is a string
% Output: hashes = a 1xn array containing hash values for the corresponding
%                  elements of the cell array
% Author: Audrey You

function [hashes] = HashList(cell_string)

% Create a for loop where each iteration considers the next element of
% cell_string
for i = 1:length(cell_string)
    % Convert each string into it hash31 value, calling the function Hash31
    hashes(i) = Hash31(cell_string{i});
end
end