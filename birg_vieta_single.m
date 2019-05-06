function [ root, iter, ex_time, err, all_iter ] = birg_vieta_single( eqn, x0, p )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    if ~exist('p', 'var')
        p = true;
    end
    tic;
    symbolic = sym(eqn);
    polyCoeff = fliplr(sym2poly(symbolic));
    root = zeros(1,size(polyCoeff,2)-1);
    iter = root;
    err = root;
    order = size(polyCoeff,2) - 1;
    
    for i = 1 : order
        [root(i) err(i) iter(i) b t] = birgeVietaOneRoot(polyCoeff, x0, num_iter, eps);
        x0 = root(i);
        polyCoeff = b(2:size(b,2));
        all_iter(i, 1:size(t,1),1:size(t,2),:) = t;
        
    end
    ex_time = toc;
    if p == true
        s = min(root);
        e = max(root);
        X = s-5:0.01:e+5;
        polyCoeff =(sym2poly(symbolic))
        Y = polyval(polyCoeff, X);
        plot(X, Y);
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
    end
    

end

