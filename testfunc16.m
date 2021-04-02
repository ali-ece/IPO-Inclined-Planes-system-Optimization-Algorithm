function [out] = testfunc16(R)
% F16 (2-D) 6-Hump Camel-Back benchmark function, a part of "CFOTool: a
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

x1 = R(:, 1);
x2 = R(:, 2);

Z = 4 .* x1 .^ 2 - 2.1 .* x1 .^ 4 + x1 .^ 6 ./ 3 + x1 .* x2 - 4 .* x2 .^ 2 + 4 .* x2 .^ 4;

out = Z;

end

