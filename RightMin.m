% This function finds the rightmost minimum value froma 1D array of values
% and returns the minimum value and its position in the array
% Input: a = 1D array of values
% Outputs: m = minimum value
%          pos = rightmost position of minimum value
% Author: Audrey You

function [m, pos] = RightMin(a)

% Find the minimum value (leftmost)
m = min(a);
% Find pos by finding the maximum index in which m occurs
pos = max(find(a == m));

end