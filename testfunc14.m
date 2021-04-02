function [out] = testfunc14(R)
% F14 (2-D) Shekel's Foxholes (INVERTED...) benchmark function, a part of
% "CFOTool: a MATLAB toolbox for Central Force Optimization (CFO)" project
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

Np=size(R,1);
Aij = FillArrayAij();

sum1 = 0;
for jj = 1:25
    sum1 = sum1 + 1 ./ (jj + sum(((R - repmat(Aij(:, jj)',Np,1)).^6),2));
end

Z = 1 ./ (0.002 + sum1);
out = Z;

end