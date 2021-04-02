function [out] = testfunc22(R)
% F22 (4-D) Shekel's Family m=7  benchmark function, a part of "CFOTool: a
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
% Global maximum = 10
% -------------------------------------------------------------------------

Np = size(R, 1);

Aji = [4, 4, 4, 4; 1, 1, 1, 1; 8, 8, 8, 8; 6, 6, 6, 6; 3, 7, 3, 7; ...
    2, 9, 2, 9; 5, 5, 3, 3];
Cj = [0.1, 0.2, 0.2, 0.4, 0.4, 0.6, 0.3];

Z = 0;
for jj = 1:7
    sum1 = sum((R - repmat(Aji(jj, :), Np, 1)) .^ 2, 2);
    Z = Z + 1 ./ (sum1 + Cj(jj));
end

out = -Z;

end

