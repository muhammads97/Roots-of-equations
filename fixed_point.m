function [i,xi,presion,arr,elapsed_time ,gx] = fixed_point(eqn,x0,iter,epsilon,plot_mode , single_mode, handles)
cla(handles.axes1);
cla(handles.axes2);
cla(handles.axes3);
tic;
eqn = strcat(eqn , ' + x') ;
e = strrep(eqn, '.^', '^');
dif = sym(e);
df  = diff(dif);
df_dx = inline(df); % fisrt derivative
f = inline(eqn);
presion = 0;
xi = 0;
arr = zeros(1,4);
gx = df_dx(x0); % g`(x) 

% drawing single mood 
if(single_mode == true)
    axes(handles.axes1);
    y = f(x0);
    ver_line = linspace(0,y);
    plot(repmat(x0,size(ver_line)),ver_line,'b');
    hold on;
    plot(x0,y,'b*');
    hold on;
    x_mat = linspace(f(x0),x0);
    plot(x_mat , repmat(f(x0),size(x_mat)),'b');
    hold on
    plot(f(x0),f(x0),'b*'); 
    hold on;
    ax  = gca;
     ax.XAxisLocation =  'origin';
     ax.YAxisLocation =  'origin';
end
old_error = 100;
for i = 1:iter
    xi = f(x0);
    if(xi == 0)
        xi = 0.00001;
    end
    err = abs((xi - x0) / xi) ;
    old_error = err;
    rate_of_convergence = df_dx(x0); %THEORETICAL ERROR IN EACH ITERATE (IF < 1 CONVERGE)(IF > 1 DIVERGE)
    presion = (1 - err) * 100;
    arr(i , :) = [i xi err rate_of_convergence];
    if(err < epsilon)
        break;
    end
    x0 = xi;
end
elapsed_time = toc;
disp(arr);
disp(gx);

% drawing single mood - (y = x) with g(x)
if(single_mode == true)
    x = linspace(xi-4,xi+4);
    y = f(x);
    y_ = x ; 
    axes(handles.axes1);
    plot( x, y,x, y_);
    hold on;
    ax  = gca;
     ax.XAxisLocation =  'origin';
     ax.YAxisLocation =  'origin';
end
if plot_mode == true
    x = linspace(xi-4,xi+4);
    y = f(x);
    y_ = x ; 
    if exist('handles', 'var')
        axes(handles.axes1);
    end
    plot( x, y,x, y_);
    %title('Plot of y = x and g(x) ');
    if exist('handles', 'var')
        axes(handles.axes2);
    end
    plot(arr(:,1) ,arr(:,3));
    %title('Plot between no of iters and error');
    xlabel('no of iters');
    ylabel('error');
    if exist('handles', 'var')
        axes(handles.axes3);
    end
    plot(arr(:,1),arr(:,2));
    %title('Plot between no of iters and root');
    xlabel('no of iters');
    ylabel('root');
    ax  = gca;
     ax.XAxisLocation =  'origin';
     ax.YAxisLocation =  'origin';
end
     
end
