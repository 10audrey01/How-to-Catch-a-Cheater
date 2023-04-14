% This function takes a sequence of integer values and creates a 2D array
% of windows for a specified window size w
% Inputs: w = window size
%         a = 1D array of integer values
% Output: windows = 2D array of integer values where each row of the array 
%                   is a window containing w integer values.
% Author: Audrey You

function [windows] = Window(w, a)

% If w is greater that the length of the array, return the array
if w >= length(a)
    windows = a;
end

% i corresponds to the number of rows the 2D array windows will have
for i = 1:length(a)-w+1
    windows(i, 1:w) = a(i:w+i-1);
end

end