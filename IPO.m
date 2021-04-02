function [worsts, meanfits, bests, bestfit, bestpop, Neval] = IPO(numofballs, numofdims, numofiterations, stallgenlimit, TolFun, c1, c2, shift1, shift2, scale1, scale2, Xmininit, Xmaxinit, fitnessfunc, glocal, localnum, plots)
%% Mechanical Motion Optimization function
%  By Hamed Mozaffari, Hamed Abdy, and Seyyed Hamid Zahiri
%  Revision 2012/01/03

%% Initialization

% glocal = 0: Global search, 1: Local search
% localdist: maximum distance used for choosing local balls within it

fitnessfunc = str2func(fitnessfunc);
% bestfit = Inf; % stores previous total best
Neval = 0; % number of evaluating fitness function

% expanding Xmin, Xmax to cover all balls
Xmin = repmat(Xmininit, numofballs, 1);
Xmax = repmat(Xmaxinit, numofballs, 1);

% generating initial balls
% an option to generate custom initial balls can be added later
X = Xmin + (Xmax - Xmin) .* rand(numofballs, numofdims);

% initializing balls acceleration
A = zeros(numofballs, numofdims);

% initializes some variables for displaying the results
meanfits = zeros(numofiterations, 1);
bests = zeros(numofiterations, 1);
worsts = zeros(numofiterations, 1);

heights = fitnessfunc(X);
Neval = Neval + numofballs;
[tmpbestfit, tmpbestfitidx] = min(heights);
bestfit = tmpbestfit;
bestpop = X(tmpbestfitidx, :);
stallgenctrl = 0;
t = 1;

if plots
    hold on;
end
%% Main loop
while ((t <= numofiterations) && (stallgenctrl <= stallgenlimit))
    % calculating the acceleration for each ball
    A(:, :) = 0;
    
    % Choosing global or local algorithm
    % glocal = 0: Global search, 1: Local search
    
    if glocal
        % local version
        for i = 1:numofballs
            dists = dist(X(i, :), X');
            [~, localind] = sort(dists);
            localind = localind(2:localnum + 1);
            
            for j = 1:localnum
                dheight = heights(localind(j)) - heights(i);
                
                % uses better balls to estimate the slope and calculate the
                % acceleration. In addition, it ensures (X(i, :) - X(j, :)) > 0
                % for all dimensions.
                if dheight < 0
                    A(i, :) = A(i, :) + sin(atan(dheight ./ (X(i, :) - X(localind(j), :))));
                end
            end
        end
    else
        % global version
        for i = 1:numofballs
            for j = 1:numofballs
                dheight = heights(j) - heights(i);
                
                % uses better balls to estimate the slope and calculate the
                % acceleration. In addition, it ensures (X(i, :) - X(j, :)) > 0
                % for all dimensions.
                if dheight < 0
                    A(i, :) = A(i, :) + sin(atan(dheight ./ (X(i, :) - X(j, :))));
                end
            end
        end
    end
    
    % sigmoid method for changing coefficient:
    % higher c1: faster convergence in first steps, worst local search
    % lower c1: slower convergence and better global search in first steps,
    % better local search
    % c2 results to better local search
    k1 = c1 ./ (1 + exp((t - shift1) .* scale1));
    k2 = c2 ./ (1 + exp(-(t - shift2) .* scale2));
    
    % updating balls
    besttoX = repmat(bestpop, numofballs, 1) - X;
    X = X + k1 .* rand(numofballs, numofdims) .* A + ...
        k2 .* rand(numofballs, numofdims) .* besttoX;

    % ensures that all balls lie in the problem's boundaries
    tmpmaxchk = X > Xmax;
    tmpminchk = X < Xmin;
    X = X .* ~(tmpmaxchk | tmpminchk) + Xmax .* tmpmaxchk + Xmin .* tmpminchk;
    
    % evaluates fitness of each ball
    heights = fitnessfunc(X);
    Neval = Neval + numofballs;

    % finding and storing the global best ball and its fitness
    [tmpbestfit, tmpbestfitidx] = min(heights);
    
    if abs(tmpbestfit - bestfit) < TolFun
        stallgenctrl = stallgenctrl + 1;
    else
        stallgenctrl = 0;
    end
    
    if tmpbestfit < bestfit
        bestfit = tmpbestfit;
        bestpop = X(tmpbestfitidx, :);
    end
    t = t + 1;
    % updating variables for displaying the results
    meanfits(t) = mean(heights);
    bests(t) = bestfit;
    worsts(t) = max(heights);
     
    if plots
        plot(t, bests(t), '.k');
        plot(t, meanfits(t), '.b');
        plot(t, worsts(t), '.r');
        figure(gcf);
    end
end
%% End of main loop
% if (stallgenctrl > stallgenlimit)
%     display('Halted for stallgen');
%     display(t);
% end
if plots
    hold off
end
end
