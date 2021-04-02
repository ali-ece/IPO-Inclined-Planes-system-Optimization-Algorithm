function [out] = testfunc6(R)
% F6 (n-D STEP) benchmark function, a part of "CFOTool: a MATLAB toolbox
% for Central Force Optimization (CFO)" project
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
% MAXIMUM VALUE = 0 @ [Offset]^n.
%
% Reference:
%
% Yao, X., Liu, Y., and Lin, G., "Evolutionary Programming Made Faster,"
% IEEE Trans. Evolutionary Computation, Vol. 3, No. 2, 82-102, Jul. 1999.
% -------------------------------------------------------------------------

Z = (floor(R + 0.5)) .^ 2;
out = sum(Z, 2);

end

