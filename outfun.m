function [state, options, optchanged] = outfun(options, state, flag)
optchanged = false;
%switch flag
%     case 'init'
%         display(state.Best);
%case 'iter'
%if (state.Generation == 1)
%display(state.Best);
%end
%         display(state.Generation);
%     case 'done'
%         display('done!');
%         display(state.Best);
%     otherwise
%         display('what?!');
%end
if strcmp(flag, 'done')
    load('bests');
    GA_bests = GA_bests + state.Best';
    save('bests', 'GA_bests', 'PSO_bests', 'IPO_bests');
%     display('GA bests saved.');
end

end


