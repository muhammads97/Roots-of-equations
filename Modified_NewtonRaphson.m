function [root,xi, arr, i, err, ex_time] = Modified_NewtonRaphson(eqn, x0, epsilon, iterations, plotMode, singleMode, handles)
  %UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%newton_gen find a root of a function using newton method

%   find a root of a fiunction using newton-raphson modified method

f = inline(eqn);  %FUNCTION
e1 = strrep(eqn, '.^', '^');
ftemp = sym(e1);
df  = diff(ftemp);
dfn = inline(df); %1ST DERVATIVE OF FUNCTION
df2 = diff(df);
ddfn = inline(df2);  %2ND DERVATIVE OF FUNCTION
tempx0 = x0;
root = 0;
arr = zeros(0, 4);
itr = zeros(0);
errors = zeros(0);
roots = zeros(0);

tic
for  i = 1 : iterations
    itr(i) = i;
    arr(i, 1) = i;
    
    if (dfn(x0)*dfn(x0)- f(x0)*ddfn(x0)) == 0
        disp('error');
    end
      
    xi = x0 - (f(x0)*dfn(x0)/(dfn(x0)*dfn(x0)- f(x0)*ddfn(x0)));
    
    roots(i) = xi;
    err = abs((xi-x0)/xi)*100;
    errors(i) = err;
    
    arr(i, 2) = x0;
    arr(i, 3) = xi;
    arr(i, 4) = err;
    
    x0 = xi;

    if err < epsilon
        root = arr(i, 3);
        break;

    end
    
end

arr

ex_time = toc;
if (plotMode)
    x = linspace(xi - 5, xi + 5);
    axes(handles.axes3);
    plot(arr(:,1), arr(:,3))
    xlabel('num of itr');
    ylabel('root');
    axes(handles.axes2);
    plot(arr(:,1), arr(:,4))
    xlabel('num of itr');
    ylabel('error');
    axes(handles.axes1);
    fx = f(x);
    plot(x,fx);
    xlabel('x')
    ylabel('f(X)');
   
end

if (singleMode)
    x = linspace(xi - 20, xi + 20);
    axes(handles.axes1);
    y = linspace(min(f(x))-100 , max(f(x)) + 100);
    plot(x, f(x),repmat(tempx0,[size(y) 1]), y,'g--', repmat(x1,[size(y) 1]) , y,'m--', 'LineWidth', 1);
    hold on;
    slope = dfn(tempx0);
    cuttenPart = f(tempx0) - slope*tempx0;
    x = linspace(tempx0 - 3,xi + 3, 50);
    y = slope*x+cuttenPart;
    plot(x,y);
    hold on;
    plot(tempx0,f(tempx0),'bo');
    hold on;
    slope2 = ddfn(tempx0);
    cuttenPart2 = f(tempx0) - slope2*tempx0;
    x2 = linspace(tempx0 - 3,xi + 3, 50);
    y2 = slope2*x2+cuttenPart2;
    plot(x2,y2);
    hold on;
    
end








end
