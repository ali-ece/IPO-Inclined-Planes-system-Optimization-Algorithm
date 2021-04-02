function [out] = testfunc20(R)
% F20 (6-D) Hartman's Family #2 benchmark function, a part of "CFOTool: a
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
% Global maximum = 3.32 @ (0.201,0.150,0.477,0.275,0.311,0.657)
% -------------------------------------------------------------------------

Np = size(R, 1);

Aji = [10, 3, 17, 3.5, 1.7, 8; 0.05, 10, 17, 0.1, 8, 14; ...
    3, 3.5, 1.7, 10, 17, 8; 17, 8, 0.05, 10, 0.1, 14];
Cj = [1, 1.2, 3, 3.2];
Pji = [0.13120, 0.1696, 0.5569, 0.01240, 0.8283, 0.5886; ...
    0.23290, 0.4135, 0.8307, 0.37360, 0.1004, 0.9991; ...
    0.23480, 0.1415, 0.3522, 0.28830, 0.3047, 0.6650; ...
    0.40470, 0.8828, 0.8732, 0.57430, 0.1091, 0.0381];

Z = 0;
for jj = 1:4
    sum1 = sum(repmat(Aji(jj, :), Np, 1) .* (R - repmat(Pji(jj, :), Np, 1)) .^ 2, 2);
    Z = Z + Cj(jj) .* exp(-sum1);
end

out = -Z;

end

