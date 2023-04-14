% This function calculates a hash value from an array of values
% Input: a = 1D array of values
% Output: h = an integer value calculated using the hash31 algorithm
% Author: Audrey You

function [h] = Hash31(a)

% Initialise iteration value and h output
h = 0;
i = 1;

% Use hash31 algorithm
while i <= length(a)
    h = a(i) + 31*h;
    h = mod(h, 2^20);
    i = i + 1;
end
end