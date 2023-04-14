% This function calculates a similarity score by taking a list of matched
% positions for a string and determining what proportion of character in a
% string matched
% Inputs: a = 1D array containing a list of indices which correspond to
%             position matched
%         k = indicates the length of each match
%         ssl = stripped string length (total length of the string that was
%               converted into k-grams)
% Output: score = percentage of the string that matched, returned as a
%                 decimal
% Author: Audrey You

function [score] = SimilarityScore(a, k, ssl)

% Create a temporary array that represents the total number of characters
temp = zeros(1, ssl);

% For each matching indices, the next k elements are 'highlighted' via changing the
% value from 0 to a 1
for i = a
    temp(i:i+k-1) = 1;
end

% Remove the elements that are not 'highlighted' (remove all zeros)
temp(temp==0) = [];
% The length of temp represents the number of characters that matched, now
% find the proportion of characters matched by dividing by total length.
score = length(temp)/ssl;

end