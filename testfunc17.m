function [out] = testfunc17(R)
% F17, (2-D) Branin benchmark function, a part of "CFOTool: a MATLAB
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
% Global maximum = -0.398 @ (-3.142.12.275), (3.142,2.275), (9.425,2.425)
% -------------------------------------------------------------------------

x1 = R(:, 1);
x2 = R(:, 2);

out = (x2 - 5.1 .* x1 .^ 2 ./ (4 .* pi .^ 2) + 5 .* x1 ./ pi - 6) .^ 2 + 10 .* ...
    (1 - 1 ./ (8 .* pi)) .* cos(x1) + 10;

end

