function [out] = testfunc15(R)
% F15 (4-D) Kowalik's  benchmark function, a part of "CFOTool: a MATLAB
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
% MATLAB is a registered trademark of The MathWorks, Inc.
%
% For more information please see "README.txt" file that you recieved with
% this code.
% -------------------------------------------------------------------------
%
% Global maximum = -0.0003075 @ (0.1928,0.1908,0.1231,0.1358)
% -------------------------------------------------------------------------

Aj = [0.1957, 0.1947, 0.1735, 0.1600, 0.0844, 0.0627, 0.0456, ...
    0.0342, 0.0323, 0.0235, 0.0246];
Bj = [1 / 0.25, 1 / 0.5, 1 / 1, 1 / 2, 1 / 4, 1 / 6, 1 / 8, ...
    1 / 10, 1 / 12, 1 / 14, 1 / 16];

x1 = R(:, 1);
x2 = R(:, 2);
x3 = R(:, 3);
x4 = R(:, 4);

Z = 0;
for jj = 1:11
    Num = x1 .* (Bj(jj) .^ 2 + Bj(jj) .* x2);
    Denom = Bj(jj) .^ 2 + Bj(jj) .* x3 + x4;
    Z = Z + (Aj(jj) - Num ./ Denom) .^ 2;
end

out = Z;

end

