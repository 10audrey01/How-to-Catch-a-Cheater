% This function takes a string and divides it into a sequence of k-grams,
% where each element is k characters long
% Inputs: k = positive integer greater than 0
%         s = string in the form of a character array
% Output: kg = 1xn array where each element is one of the k-grams
% Author: Audrey You

function [kg] = Kgram(k, s)

% Determine if k is greater than length of string and return 1x1 cell array
% if so
if k >= length(s)
    kg = {s};
else
    % i represents the number of elements in the cell array (depending on
    % k)
    for i = 1:length(s) - k + 1
        % kg will equal the next k values in the string, moving positions one by one
        kg{i} = s(i:i + k - 1);
    end
end

end