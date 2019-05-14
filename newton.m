function [x1, err, arr, eTime] = newton(eqn, x0, n, tol, isPlot, isSingle, handles)
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
f = inline(eqn);
e = strrep(eqn, '.^', '^');
ftemp = sym(e);
df  = diff(ftemp);
fd = inline(df); %1ST DERVATIVE OF FUNCTION
df2 = diff(df);
ddfn = inline(df2);  %2ND DERVATIVE OF FUNCTION
%disp(fd(2));
x1 = 0;
arr = zeros(1, 5);
tempx0 = x0;
err = inf;
tic
for i = 1 : n
    arr(i, 1) = i;
    arr(i, 2) = x0;
    if fd(x0) == 0
        x0 = x0 + 0.00001
    end
    x1 = x0 - (f(x0) / fd(x0));
    err = abs((x1 - x0) / x1);
    theoritical_error = ddfn(x1)/2*fd(x1);  %THEORETICAL ERROR IN EACH ITERATE
    arr(i, 3) = x1;
    arr(i, 4) = err;
    arr(i ,5) =theoritical_error;
    x0 = x1;
    if (err < tol)
        break;
    end
end
eTime = toc;
%disp(arr);
if (isPlot && isSingle == false)
    x = linspace(x1-50, x1+50);
    %figure
    %title('Newton-Raphson method');
    %subplot(2, 2, 1);
    axes(handles.axes3);
    plot(arr(:,1), arr(:, 3));
    disp(arr(:, 3));
    xlabel('num of itr');
    ylabel('root');
    %subplot(2, 2, 2);
    axes(handles.axes2);
    plot(arr(:, 1), arr(:, 4));
    xlabel('num of itr');
    ylabel('error');
    %subplot(2, 2, 3)
    axes(handles.axes1);
    plot(x, f(x));
    xlabel('x');
    ylabel('f(x)');
end

if (isSingle)
    x = linspace(x1 - 20, x1 + 20);
    axes(handles.axes1);
    y = linspace(min(f(x))-100 , max(f(x)) + 100);
    plot(x, f(x),repmat(tempx0,[size(y) 1]), y,'g--', repmat(x1,[size(y) 1]) , y,'m--', 'LineWidth', 1);
    hold on;
    slope = fd(tempx0);
    cuttenPart = f(tempx0) - slope*tempx0;
    x = linspace(tempx0 - 3,x1 + 3, 50);
    y = slope*x+cuttenPart;
    plot(x,y);
    hold on;
    plot(tempx0,f(tempx0),'bo');
    hold on;
end

end
