function [r, err, arr, eTime, l, u ,Expected_no_of_iters] = bisection(eqn, l, u, n, tol, isPlot, isSingle, handles)
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
f = inline(eqn);
arr = zeros(1, 5);
itr = zeros(n, 1);
roots = zeros(n, 1);
errors = zeros(1, 1);
tempxl = l;
tempxu = u;
Expected_no_of_iters = floor((log(u-l)  - log(tol) )/log(2));
tic
for i = 1 : n
    arr(i, 2) = l;
    arr(i, 3) = u;
    arr(i, 1) = i;
    r = (l + u) / 2;
    ev = f(l) * f(r);
    if (ev < 0)
        u = r;
    elseif (ev > 0)
        l = r;
    else
        l = r;
        u = r;
    end
    if(l == 0)
        l = l + 0.000001;
    end
    err = abs(u - l) / l;
    arr(i, 4) = r;
    arr(i, 5) = err;
    if (err < tol)
        break;
    end
end
eTime = toc;
for i = 1 : size(arr, 1)
    roots(i) = arr(i, 4);
    errors(i) = arr(i, 5);
    itr(i) = arr(i, 1);
end
if (isPlot && ~isSingle)
    x = linspace(r - 5, r + 5);
    %figure
    axes(handles.axes3);
    %title('Bisection method');
    %subplot(2, 2, 1);
    plot(arr(:, 1), arr(:, 4))
    xlabel('num of itr');
    ylabel('root');
    %subplot(2, 2, 2);
    axes(handles.axes2);
    plot(arr(:, 1), arr(:, 5))
    xlabel('num of itr');
    ylabel('error');
    %subplot(2, 2, 3)
    axes(handles.axes1);
    plot(x, f(x));
    xlabel('x');
    ylabel('f(x)')
end

if (isSingle)
    x = linspace(r - 3, r + 3);
    axes(handles.axes1);
    %title('Bisection method');
    y = linspace(min(f(x))-100 ,max(f(x))+ 100);
    plot(x, f(x),repmat(tempxl,[size(y) 1]), y,'g--', repmat(tempxu,[size(y) 1]) , y,'r--', repmat(r, [size(y) 1]), y, 'm--', 'LineWidth', 1);
end
%write_file1(r, err, arr, eTime, 'Bisection Method');
end
