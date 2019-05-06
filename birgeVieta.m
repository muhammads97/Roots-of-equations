function [ root, iter, ex_time, err, all_iter ] = birgeVieta(eqn, x0, num_iter, eps, p, handles)
    if ~exist('p', 'var')
        p = true;
    end
    eqn = strrep(eqn, '.^', '^');
    eqn = strrep(eqn, '.*', '*');
    eqn= strrep(eqn, './', '/');
    tic;
    symbolic = sym(eqn);
    polyCoeff = fliplr(sym2poly(symbolic));
    %disp(polyCoeff);
    root = zeros(1,size(polyCoeff,2)-1);
    iter = root;
    err = root;
    order = size(polyCoeff,2) - 1;
    all_iter = zeros(size(polyCoeff,2)-1, num_iter,size(polyCoeff, 2), 4);
    %disp(x0);
    for i = 1 : order
        [root(i) err(i) iter(i) b t] = birgeVietaOneRoot(polyCoeff, x0, num_iter, eps);
        x0 = root(i);
        %disp(x0);
        polyCoeff = b(2:size(b,2));
        all_iter(i, 1:size(t,1),1:size(t,2),:) = t;
        
    end
    ex_time = toc;
    if p == true
        if exist('handles', 'var')
            axes(handles.axes1);
        end
        s = min(root);
        e = max(root);
        X = s-5:0.01:e+5;
        polyCoeff =(sym2poly(symbolic));
        Y = polyval(polyCoeff, X);
        plot(X, Y);
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        for i=1:order
            hold on;
            fx = polyval(polyCoeff, root(i));
            plot(root(i), fx, 'rx');
        end
    end
    

end