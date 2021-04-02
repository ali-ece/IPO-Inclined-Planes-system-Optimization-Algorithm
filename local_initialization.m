function [c1, c2, shift1, shift2, scale1, scale2, numofparticles, numofdims, numofiterations, Xmininit, Xmaxinit]=initialization(fitnessfunc)
%%---------------  initializations -------
% for manual feeding go enumofdims of mfile anumofdims uncommenumofiterations the parameters
% c1=1;
% c2=1;
numofiterations = 1000;
numofdims = 30;
numofparticles = 50;

switch fitnessfunc
    %================================
    case 'testfunc1'
        c1 = 1;
        c2 = 1;
        shift1 = 500;
        shift2 = 500;
        scale1 = 0.02;
        scale2 = 0.02;
        %numofdims=1000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-100, 1, numofdims);
        Xmaxinit = repmat(100, 1, numofdims);
        %================================
    case 'testfunc2'
        c1 = 0.2248273331;
        c2 = 2.2829730221;
        shift1 = 121.0439751601;
        shift2 = 149.6747546522;
        scale1 = 0.0558110177;
        scale2 = 0.5248145911;
        %numofdims=1000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-5, 1, numofdims);
        Xmaxinit = repmat(5, 1, numofdims);
        %================================
    case 'testfunc3'
        c1 = 1;
        c2 = 1;
        shift1 = 500;
        shift2 = 500;
        scale1 = 0.02;
        scale2 = 0.02;
        %numofdims=1000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-100, 1, numofdims);
        Xmaxinit = repmat(100, 1, numofdims);
        %================================
    case 'testfunc4'
        c1 = 0.9283;
        c2 = 0.2399;
        shift1 = 260.077;
        shift2 = 81.4612;
        scale1 = 0.0183;
        scale2 = 0.0307;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-100, 1, numofdims);
        Xmaxinit = repmat(100, 1, numofdims);
        %================================
    case 'testfunc5'
        c1 = 0.3893179174;
        c2 = 2.9512227061;
        shift1 = 534.5566231873;
        shift2 = 367.0491333246;
        scale1 = 0.1452857433;
        scale2 = 0.900190043;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-30, 1, numofdims);
        Xmaxinit = repmat(30, 1, numofdims);
        %================================
    case 'testfunc6'
        c1 = 1;
        c2 = 1;
        shift1 = 500;
        shift2 = 500;
        scale1 = 0.02;
        scale2 = 0.02;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-100, 1, numofdims);
        Xmaxinit = repmat(100, 1, numofdims);
        %================================
    case 'testfunc7'
        c1 = 0.3587816973;
        c2 = 2.486421098;
        shift1 = 238.5462869893;
        shift2 = 480.7562380559;
        scale1 = 0.0140936403;
        scale2 = 0.7163056081;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-1.28, 1, numofdims);
        Xmaxinit = repmat(1.28, 1, numofdims);
        %================================
    case 'testfunc8'
        c1 = 1.3;
        c2 = 3.4;
        shift1 = 500;
        shift2 = 570;
        scale1 = 0.86;
        scale2 = 0.52;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-500, 1, numofdims);
        Xmaxinit = repmat(500, 1, numofdims);
        %================================
    case 'testfunc9'
        c1 = 0.1024;
        c2 = 3.6577;
        shift1 = 300;
        shift2 = 300;
        scale1 = 0.035;
        scale2 = 0.035;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-5.12, 1, numofdims);
        Xmaxinit = repmat(5.12, 1, numofdims);
        %================================
    case 'testfunc10'
        c1 = 1;
        c2 = 1;
        shift1 = 500;
        shift2 = 500;
        scale1 = 0.02;
        scale2 = 0.02;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-32, 1, numofdims);
        Xmaxinit = repmat(32, 1, numofdims);
        %================================
    case 'testfunc11'
        c1 = 12;
        c2 = 1.9667;
        shift1 = 300;
        shift2 = 300;
        scale1 = 0.035;
        scale2 = 0.035;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-600, 1, numofdims);
        Xmaxinit = repmat(600, 1, numofdims);
        %================================
    case 'testfunc12'
        c1 = 1;
        c2 = 1;
        shift1 = 500;
        shift2 = 500;
        scale1 = 0.02;
        scale2 = 0.02;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-50, 1, numofdims);
        Xmaxinit = repmat(50, 1, numofdims);
        %================================
    case 'testfunc13'
        c1 = 0.4457588092;
        c2 = 2.6128227908;
        shift1 = 475.5510893685;
        shift2 = 602.8512489222;
        scale1 = 0.0386207254;
        scale2 = 0.0463913141;
        %numofdims=2000; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-50, 1, numofdims);
        Xmaxinit = repmat(50, 1, numofdims);
        %================================
    case 'testfunc14'
        c1 = 0.6067109875;
        c2 = 0.5513162156;
        shift1 = 424.2936079461;
        shift2 = 203.6016969817;
        scale1 = 0.6053868306;
        scale2 = 0.2927474231;
        numofiterations = 500;
        numofdims=2; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-65.536, 1, numofdims);
        Xmaxinit = repmat(65.536, 1, numofdims);
        %================================
    case 'testfunc15'
        c1 = 1;
        c2 = 1;
        shift1 = 500;
        shift2 = 500;
        scale1 = 0.02;
        scale2 = 0.02;
        numofiterations = 500;
        numofdims=4; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-5, 1, numofdims);
        Xmaxinit = repmat(5, 1, numofdims);
        %================================
    case 'testfunc16'
        c1 = 0.3704623402;
        c2 = 0.5896931155;
        shift1 = 271.7383641023;
        shift2 = 139.6428464249;
        scale1 = 0.0479090932;
        scale2 = 0.8402630116;
        numofiterations = 500;
        numofdims=2; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-5, 1, numofdims);
        Xmaxinit = repmat(5, 1, numofdims);
        %================================
    case 'testfunc17'
        c1 = 0.2;
        c2 = 0.3442396293;
        shift1 = 295.8356021196;
        shift2 = 222.2255564118;
        scale1 = 0.4207851579;
        scale2 = 0.514060893;
        numofiterations = 500;
        numofdims=2; numofparticles=50;
        %%----------------------------------------
        Xmininit = [-5 0];
        Xmaxinit = [10 15];
        %================================
    case 'testfunc18'
        c1 = 0.9334076851;
        c2 = 0.5137045256;
        shift1 = 181.2489549307;
        shift2 = 162.5827579071;
        scale1 = 0.0690932841;
        scale2 = 0.4748618899;
        numofiterations = 500;
        numofdims=2; numofparticles=50;
        %%----------------------------------------
        Xmininit = repmat(-2, 1, numofdims);
        Xmaxinit = repmat(2, 1, numofdims);
        %================================
    case 'testfunc19'
        c1 = 0.200186488;
        c2 = 2.4839788737;
        shift1 = 1.0005606711;
        shift2 = 436.8690950903;
        scale1 = 0.9998779297;
        scale2 = 0.4905483213;
        numofiterations = 500;
        numofdims=3; numofparticles=50;
        %%----------------------------------------
        Xmininit = zeros(1, numofdims);
        Xmaxinit = ones(1, numofdims);
        %================================
    case 'testfunc20'
        c1 =0.2;
        c2 =1.7;
        shift1 =1;
        shift2 =80;
        scale1 =0.1;
        scale2 =0.73;
        numofiterations = 500;
        numofdims=6; numofparticles=50;
        %%----------------------------------------
        Xmininit = zeros(1, numofdims);
        Xmaxinit = ones(1, numofdims);
        %================================
    case 'testfunc21'
        c1 =1.5;
        c2 =1.5;
        shift1 =240;
        shift2 =290;
        scale1 =0.13;
        scale2 =0.9;
        numofiterations = 500;
        numofdims=4; numofparticles=50;
        %%----------------------------------------
        Xmininit = zeros(1, numofdims);
        Xmaxinit = repmat(10, 1, numofdims);
        %================================
    case 'testfunc22'
        c1 = 0.708612679;
        c2 = 1.200222981;
        shift1 = 354.5792520181;
        shift2 = 219.8028855917;
        scale1 = 0.1432749189;
        scale2 = 0.0365018736;
        numofiterations = 500;
        numofdims=4; numofparticles=50;
        %%----------------------------------------
        Xmininit = zeros(1, numofdims);
        Xmaxinit = repmat(10, 1, numofdims);
        %================================
    case 'testfunc23'
        c1 = 1;
        c2 = 1;
        shift1 = 500;
        shift2 = 500;
        scale1 = 0.02;
        scale2 = 0.02;
        numofiterations = 500;
        numofdims=4; numofparticles=50;
        %%----------------------------------------
        Xmininit = zeros(1, numofdims);
        Xmaxinit = repmat(10, 1, numofdims);
        %================================
end