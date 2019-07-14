function [xi, arr, i, err, ex_time, x1, x0] = Secant(x0, x1, epsilon, iterations, eqn, plotMode, singleMode, handles)
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
tic;
f = inline(eqn);
x = linspace(x0-1, x1+1);
arr = zeros(iterations, 5);
itr = zeros(iterations);
errors = zeros(iterations);
roots = zeros(iterations);

if (singleMode)
    axes(handles.axes1);
    y = f(x);
    plot(x,y);
    hold on;
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    slope = (f(x0) - f(x1)) / (x0 - x1);
    cuttenPart = f(x0) - slope*x0;
    x = linspace(x0,x1,50);
    y = slope*x+cuttenPart;
    plot(x,y);
    hold on;
    plot(x0,f(x0),'bo');
    hold on;
    plot(x1,f(x1),'bo');
    hold on;
    y = 0;
    x = (y - cuttenPart)/slope;
    plot(x,y,'r*');
    hold on;
    y = linspace(0, f(x));
    plot(repmat(x,size(y)), y, 'r');
    plot(x, f(x), 'bo');
end


for  i = 1 : iterations
    itr(i) = i;
    arr(i, 1) = i;
    xi = x1 - (f(x1)*(x1 - x0)/(f(x1) - f(x0)));
    roots(i) = xi;
    err = abs((xi-x1)/xi)*100;
    errors(i) = err;
    arr(i, 2) = x0;
    arr(i, 3) = x1;
    arr(i, 4) = xi;
    arr(i, 5) = err;
    x0 = x1;
    x1 = xi;
    if err < epsilon
        root = arr(i, 4);
        break;
    end
end

ex_time = toc;
if (plotMode)
    x = linspace(xi - 5, xi + 5);
    %title('Secant Method');
    %subplot(2, 2, 1);
    axes(handles.axes3);
    plot(arr(:,1), arr(:,4))
    xlabel('num of itr');
    ylabel('root');
    %subplot(2, 2, 2);
    axes(handles.axes2);
    plot(arr(:,1), arr(:,5))
    xlabel('num of itr');
    ylabel('error');
    %subplot(2, 2, 3);
    axes(handles.axes1);
    fx = f(x);
    plot(x,fx);
    xlabel('x')
    ylabel('f(X)');
    hold on
    plot( [x0 , x1 , xi  ],  [ f(x0) , f(x1) , 0 ] , '--or' ,'Color', [0 0.7 0])
    plot(  [xi , xi  ],  [ 0 , f(xi)] , '--or', 'Color' , [1 0 0])
end


end
