% function bestfit = testmain(x)
clc
c1 = 0.685;
c2 = 0.653;
shift1 = 527.392;
shift2 = 380.811;
scale1 = 0.423;
scale2 = 0.571;

stallgenlimit = 500;
TolFun = 1e-6;
Na = 'testfunc4';
localnum = 1;
glocal = 0;
cont = num2str(17);
fitnessfunc = [Na, cont];
plots = 1;

[c1, c2, shift1, shift2, scale1, scale2, numofballs, numofdims, ...
numofruns, Xmininit, Xmaxinit] = initialization(fitnessfunc);

Xmin = repmat(Xmininit, numofballs, 1);
Xmax = repmat(Xmaxinit, numofballs, 1);

[worsts, meanfits, bests, bestfit, bestpop, Neval] = IPO(numofballs,...
numofdims, numofruns, stallgenlimit, TolFun, c1, c2, shift1,...
    shift2, scale1, scale2, Xmininit, Xmaxinit, fitnessfunc, glocal, localnum, plots);

display(bestfit)