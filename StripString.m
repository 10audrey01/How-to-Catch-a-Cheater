% This function strips out whitespace and other unprintable characters and
% converts all characters to lowercase
% Input: ac = array of characters
% Output: s = stripped array
% Author: Audrey You

function [s] = StripString(ac)

% Initialise s as 0x0 empty array
s = [];

% Apply for loop if ac does not only contain whitespace or unprintable
% characters
for i = 1:length(ac)
    if (33 <= ac(i)) && (ac(i) <= 126)
        s(i) = ac(i);
    end
end

% Remove whitespace and unprintable characters
s(s < 33) = [];
s(s > 126) = [];
% Convert to character array
s = char(s);
% Change to all lowercase
s = lower(s);
end