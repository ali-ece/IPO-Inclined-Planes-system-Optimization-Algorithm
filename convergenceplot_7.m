clear all;
GA_bests = 0;
PSO_bests = 0;
IPO_bests = 0;
save('bests');

Na = 'testfunc';
funcnum = 7;
numofruns = 30;
bestfit = zeros(23, numofruns);
%meanfit = bestfit;

cont = num2str(funcnum);
fitnessfunc = [Na, cont];
[c1, c2, shift1, shift2, scale1, scale2,numofballs, numofdims, ...
    numofiterations, Xmininit, Xmaxinit] = initialization(fitnessfunc);


for j = 1:numofruns

    % generating initial particles
    Xmin = repmat(Xmininit, numofballs, 1);
    Xmax = repmat(Xmaxinit, numofballs, 1);
    
    X = Xmin + (Xmax - Xmin) .* rand(numofballs, numofdims);
    
    options = gaoptimset('Generations', numofiterations, 'PopulationSize', ...
        numofballs, 'StallGenLimit', numofiterations, ...
        'UseParallel', 'always', 'PopInitRange', [Xmininit; Xmaxinit], ...
        'OutputFcns', @outfun, 'InitialPopulation', X);%, 'PlotFcns', @gaplotbestf);
    ga(str2func(fitnessfunc), numofdims, [], [], [], [], Xmininit, Xmaxinit, [], options);
    
    load('bests');
    [~, ~, tmpIPO_bests, ~, ~, ~] = ...
        IPO(numofballs, numofdims, numofiterations, 1000, 1e-6, ...
        c1, c2, shift1, shift2, scale1, scale2, Xmininit, Xmaxinit, fitnessfunc, 0, 5);
    IPO_bests = IPO_bests + tmpIPO_bests;
    
    [~, ~, tmpPSO_bests, ~, ~] = ...
        PSO(numofballs, numofdims, numofiterations, 1000, 1e-6, 2, 2, ...
        Xmininit, Xmaxinit, fitnessfunc, 0, 5);
    PSO_bests = PSO_bests + tmpPSO_bests;
    
    
    save('bests', 'GA_bests', 'PSO_bests', 'IPO_bests');
%     display('GA, PSO and IPO bests saved.');
end

% save('bests1', 'GA_bests', 'PSO_bests', 'IPO_bests');

p1 = plot(1:numofiterations, GA_bests ./ numofruns, '-.k');
hold on;
p2 = plot(1:numofiterations, PSO_bests ./ numofruns, '--k');
p3 = plot(1:numofiterations, IPO_bests ./ numofruns, '-k');
xlabel('Iteration');
ylabel('Average of best fitnesses for 30 runs');
legnd1 = legend([p1, p2, p3], 'GA', 'PSO', 'IPO');
set(legnd1,'Location','SouthWest')
set(gca, 'YScale', 'log');


