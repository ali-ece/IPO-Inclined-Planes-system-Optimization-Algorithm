function [out] = testfunc13(R)
% (n-D) F13, Penalized #2 benchmark function, a part of "CFOTool: a MATLAB
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
% Ref: Yao(1999).  Max=0 @ (1,1,...,1), -50=<Xi=<50.
% -------------------------------------------------------------------------

Nd = size(R, 2);

X1 = R(:, 1);
Xn = R(:, Nd);

sum1 = sum((R(:, 1:(Nd - 1)) - 1) .^ 2 .* (1 + (sin(3 .* pi .* R(:, 2:Nd))) .^ 2), 2);
sum1 = sum1 + (sin(3 .* pi .* X1)) .^ 2 + (Xn - 1) .^ 2 .* (1 + sin(2 .* pi .* Xn)) .^ 2;

sum2 = sum(u(R, 5, 100, 4), 2);

Z = sum1 ./ 10 + sum2;
out = Z;

end

