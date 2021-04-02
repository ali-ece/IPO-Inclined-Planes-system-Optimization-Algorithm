function [out] = testfunc19(R)
% F19 (3-D) Hartman's Family #1 benchmark function, a part of "CFOTool: a
% MATLAB toolbox for Central Force Optimization (CFO)" project
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
% Global maximum = 3.86 @ (0.114,0.556,0.852)
% -------------------------------------------------------------------------

Np = size(R, 1);

Aji = [3, 10, 30; 0.1, 10, 35; 3, 10, 30; 0.1, 10, 35];
Cj = [1, 1.2, 3, 3.2];
Pji = [0.36890, 0.1170, 0.2673; 0.46990, 0.4387, 0.7470; ...
    0.10910, 0.8732, 0.5547; 0.03815, 0.5743, 0.8828];

Z = 0;
for jj = 1:4
    sum1 = sum(repmat(Aji(jj, :), Np, 1) .* (R - repmat(Pji(jj, :), Np, 1)) .^ 2, 2);
    Z = Z + Cj(jj) .* exp(-sum1);
end

out = -Z;
end

