function [i,xr,elapsed,xl,xu,arr,presion, err] = false_position(eqn , xl , xu , iter , epsolin , plot_mode , single_mode, handles)
    tic;
    arr =  zeros(1,5);
    err = zeros(1,2);
    x = linspace(xl-1 ,xu+1);
    f = inline(eqn);
    fl =  f(xl);
    fu =  f(xu);
    xr = 0;
    ea = inf;
    presion = 0;
   if single_mode == true
      axes(handles.axes1);
      y = f(x);
      plot(x,y);
      hold on;
      ax  = gca;
      ax.XAxisLocation =  'origin';
      ax.YAxisLocation =  'origin';
      slope = (f(xl) - f(xu))/(xl - xu);
      cutten_part = f(xl) - slope*xl;
      x =linspace(xl,xu,50);
      y = slope * x + cutten_part;
      plot(x,y);
      hold on;
      plot(xl,f(xl),'bo');
      hold on;
      plot(xu,f(xu),'bo');
      hold on;
      y = 0;
      x = (y - cutten_part)/slope;
      plot(x,y,'r*');
      hold on;
      y =   linspace (0 ,f(x));
      plot(repmat(x,size(y)) ,y, 'r');
      plot(x,f(x),'bo');
   end
  hold on;
    for i = 1 : iter
      xrold = xr;
      xr = xu - ((fu * (xl - xu)) / (fl - fu));
      fr = f(xr);
      test = fl * fr;
      %calculating presion
      arr(i,:) = [i xl xu xr fr];
      if i > 1
          ea = (abs (xr - xrold) / xr) ;
          err(i-1,2) = ea;
          err(i-1 ,1) = i-1;
          presion = 100 - ea;
      end
      %testing
      if (test < 0)
             xu = xr;
             fu = fr;
      elseif (test > 0)
             xl = xr;
             fl = fr;
      else
            ea = 0;
      end
      %testing error
      if(ea < epsolin)
          break;
      end
    end
    elapsed = toc;
  if plot_mode == true
    y = f(x);
    %figure;
    %subplot(2,2,1);
    axes(handles.axes1);
    plot(x,y);
    %subplot(2,2,2);
    axes(handles.axes2);
    plot(err(:,1),err(:,2));
    %subplot(2,2,3);
    axes(handles.axes3);
    plot(err(:,1),arr(2:size(arr),4));
  end
end 