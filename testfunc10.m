function [out] = testfunc10(R)
% (n-D) F10 [Ackley's Function] benchmark function, a part of "CFOTool: a
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
% MAXIMUM = ZERO (n-D CASE).
%
% Reference:
%
% Yao, X., Liu, Y., and Lin, G., "Evolutionary Programming Made Faster,"
% IEEE Trans. Evolutionary Computation, Vol. 3, No. 2, 82-102, Jul. 1999.
% -------------------------------------------------------------------------
Nd=size(R,2);
sum1 = sum(R .^ 2, 2);
sum2 = sum(cos((2 * pi) .* R), 2);
out = (-20 * exp(-0.2 .* sqrt(sum1 ./ Nd)) - exp(sum2 ./ Nd) + 20 + exp(1));

end

