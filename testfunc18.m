function [out] = testfunc18(R)
% Goldstein-Price 2-D  benchmark function, a part of "CFOTool: a MATLAB
% toolbox for Central Force Optimization (CFO)" project
%
% Copyright (C) 2011  Hamed Abdy, Richard A. Formatto, Seyyed Hamid Zahiri
% 
% CFOTool is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% CFOTool is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
% MATLAB is a registered trademark of The MathWorks, Inc.
%
% For more information please see "README.txt" file that you recieved with
% this code.
% -------------------------------------------------------------------------
%
% Global maximum = -3 @ (0,-1)
% -------------------------------------------------------------------------

x1 = R(:, 1);
x2 = R(:, 2);

t1 = 1 + (x1 + x2 + 1) .^2 .* ...
    (19 - 14 .* x1 + 3 .* x1 .^ 2 - 14 .* x2 + 6 .* x1 .* x2 + 3 .* x2 .^ 2);
t2 = 30 + (2 .* x1 - 3 .* x2) .^ 2 .* ...
    (18 - 32 .* x1 + 12 .* x1 .^ 2 + 48 .* x2 - 36 .* x1 .* x2 + 27 .* x2 .^ 2);
Z  = t1 .* t2;

out = Z;
end

