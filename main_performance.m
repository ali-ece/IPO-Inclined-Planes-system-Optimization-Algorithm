
clear all;

numofiterations = 1000;
stallgenlimit = 1000;
TolFun = 1e-6;
Na = 'testfunc';
numofruns = 30;
localnum = 5;
avgtimecosts_GA = zeros(23, 1);
avgtimecosts_PSO = zeros(23, 1);
avgtimecosts_IPO = zeros(23, 1);
bestfit_GA = zeros(23, numofruns);
meanfit_GA = zeros(23, numofruns);
bestfit_PSO = zeros(23, numofruns);
meanfit_PSO = zeros(23, numofruns);
bestfit_IPO = zeros(23, numofruns);
meanfit_IPO = zeros(23, numofruns);
Neval_GA = zeros(23, numofruns);
Neval_PSO = zeros(23, numofruns);
Neval_IPO = zeros(23, numofruns);

% load('results_performance');

for i=1:23
    cont = num2str(i);
    fitnessfunc = [Na, cont];
    [c1, c2, shift1, shift2, scale1, scale2,numofparticles, numofdims, ...
        numofiterations, Xmininit, Xmaxinit] = initialization(fitnessfunc);
    Xmin = repmat(Xmininit, numofparticles, 1);
    Xmax = repmat(Xmaxinit, numofparticles, 1);
    
    %    'CreationFcn', 'Uniform', 'SelectionFcn', 'Roulette');%, 'MutationFcn', 'Uniform');%, ...
    %        'StallGenLimit', 1000);
    
    tic
    for j = 1:numofruns
        %        [worsts, meanfits, bests, bestfit(i, j), bestpop] = ...
        %            PSO(numofparticles, numofdims, numofiterations, c1, c2, ...
        %            Xmininit, Xmaxinit, fitnessfunc);
        initpop = Xmin + (Xmax - Xmin) .* rand(numofparticles, numofdims);
        options = gaoptimset('Generations', numofiterations,  'PopulationSize', ...
            numofparticles, 'StallGenLimit', stallgenlimit, ...
            'PopInitRange', [Xmininit; Xmaxinit], 'InitialPopulation', initpop, ...
            'TolFun', TolFun);
        %'OutputFcns', @outfun);%, 'PlotFcns', @gaplotbestf);
        
        [x, bestfit_GA(i, j), exitflag, output, population, scores] = ...
            ga(str2func(fitnessfunc), numofdims, [], [], [], [], Xmininit, Xmaxinit, [], options);
        meanfit_GA(i, j) = mean(scores);
        Neval_GA(i, j) = output.funccount;
    end
    avgtimecosts_GA(i) = toc / numofruns;
    fprintf('GA: F%d: Average-bestfits: %d     Average-meanfits: %d     Average runtime:%d\n', i, ...
        mean(bestfit_GA(i, :)), mean(meanfit_GA(i, :)), avgtimecosts_GA(i));
%     medianfit(i) = median(bestfit(i, :));
    save('results_performance', 'avgtimecosts_GA', 'avgtimecosts_PSO', 'avgtimecosts_IPO', ...
        'bestfit_GA', 'bestfit_PSO', 'bestfit_IPO', ...
        'meanfit_GA', 'meanfit_PSO', 'meanfit_IPO', ...
        'Neval_GA', 'Neval_PSO', 'Neval_IPO');
end

for i=1:23
    cont=num2str(i);
    fitnessfunc = [Na,cont];
    [~, ~, shift1, shift2, scale1, scale2,numofparticles, numofdims, ...
        numofiterations, Xmininit, Xmaxinit] = initialization(fitnessfunc);

    c1 = 2;
    c2 = 2;

    tic
    for j = 1:numofruns
        [worsts, meanfits, bests, bestfit_PSO(i, j), bestpop, Neval_PSO(i, j)] = ...
            PSO(numofparticles, numofdims, numofiterations, stallgenlimit, ...
            TolFun, c1, c2, Xmininit, Xmaxinit, fitnessfunc, 0, localnum);

        meanfit_PSO(i, j) = meanfits(numofiterations);
    end
    avgtimecosts_PSO(i) = toc / numofruns;
    fprintf('PSO: F%d: Average-bestfits: %d     Average-meanfits: %d     Average runtime:%d\n', i, ...
        mean(bestfit_PSO(i, :)), mean(meanfit_PSO(i, :)), avgtimecosts_PSO(i));
    save('results_performance', 'avgtimecosts_GA', 'avgtimecosts_PSO', 'avgtimecosts_IPO', ...
        'bestfit_GA', 'bestfit_PSO', 'bestfit_IPO', ...
        'meanfit_GA', 'meanfit_PSO', 'meanfit_IPO', ...
        'Neval_GA', 'Neval_PSO', 'Neval_IPO');
end

for i=1:23
    cont=num2str(i);
    fitnessfunc = [Na,cont];
    [c1, c2, shift1, shift2, scale1, scale2,numofparticles, numofdims, ...
        numofiterations, Xmininit, Xmaxinit] = initialization(fitnessfunc);
    
    tic
    for j = 1:numofruns
        [worsts, meanfits, bests, bestfit_IPO(i, j), bestpop, Neval_IPO(i, j)] = ...
            IPO(numofparticles, numofdims, numofiterations, stallgenlimit, TolFun, ...
            c1, c2, shift1, shift2, scale1, scale2, Xmininit, Xmaxinit, ...
            fitnessfunc, 0, localnum);
%         [worsts, meanfits, bests, bestfit(i, j), bestpop] = ...
%             PSO(numofparticles, numofdims, numofiterations, c1, c2, ...
%             Xmininit, Xmaxinit, fitnessfunc);
        
        meanfit_IPO(i, j) = meanfits(numofiterations);
    end
    avgtimecosts_IPO(i) = toc / numofruns;
    fprintf('IPO: F%d: Average-bestfits: %d     Average-meanfits: %d     Average runtime:%d\n', i, ...
        mean(bestfit_IPO(i, :)), mean(meanfit_IPO(i, :)), avgtimecosts_IPO(i));
    save('main_results', 'avgtimecosts_GA', 'avgtimecosts_PSO', 'avgtimecosts_IPO', ...
        'bestfit_GA', 'bestfit_PSO', 'bestfit_IPO', ...
        'meanfit_GA', 'meanfit_PSO', 'meanfit_IPO', ...
        'Neval_GA', 'Neval_PSO', 'Neval_IPO');
end
