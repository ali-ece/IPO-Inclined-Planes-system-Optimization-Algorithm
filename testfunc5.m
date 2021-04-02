function [out] = testfunc5(R)
% F5 (n-D) benchmark function, a part of "CFOTool: a MATLAB toolbox for
% Central Force Optimization (CFO)" project
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
% MAXIMUM = ZERO (n-D CASE).
% -------------------------------------------------------------------------

Nd = size(R, 2);

Xi = R(:, 1:(Nd - 1));
XiPlus1 = R(:, 2:Nd);
Z = 100 .* (XiPlus1 - Xi .^ 2) .^ 2 + (Xi - 1) .^ 2;
out = sum(Z, 2);

end

