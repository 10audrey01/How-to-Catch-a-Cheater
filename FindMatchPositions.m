% This function compares two fingerprints and determines which positions in
% fingerprint 1 have a value that is also found in string 2, and which
% positions in fingerprint 2 have a value that is also found in string 1
% Inputs: f1 = fingerprint for string 1
%         f2 = fingerpring for string 2
% Outputs: p1 = 1D array containing a list of index positions in string 1
%               of all values that are also found in string 2
%          p2 = 1D array containing a list of index positions in string 2
%               of all values that are also found in string 1
% Author: Audrey You

function [p1, p2] = FindMatchPositions(f1, f2)

% Find the indices where hash values (row 1) match in f1 and f2 and vice
% versa, by calling function FindMatchIndices
p1 = FindMatchIndices(f1(1, :), f2(1, :));
p2 = FindMatchIndices(f2(1, :), f1(1, :));

% Find the equivalent position (row 2) using the the matching indices. 
% E.g with a matching index of 2, the equivalent position will be the value
% at row 2 index 2 in the fingerprint.
for i = 1:length(p1)
    p1(i) = f1(2, p1(i));
end

% Repeat loop but for f2
for j = 1:length(p2)
    p2(j) = f2(2, p2(j));
end

end