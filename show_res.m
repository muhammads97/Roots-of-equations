function show_res( arr, handles, method )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
switch method
    case 1
        %bisection
        col = {'i', 'lower', 'upper', 'root', 'error'};
        handles.t=uitable(arr, col, 'position', [850, 50, 350, 450]);
        set(handles.text18, 'visible', 'off');
        set(handles.text21, 'visible', 'off');
        set(handles.select_root, 'visible', 'off');
        set(handles.iterations, 'visible', 'off');
    case 2
        col = {'i', 'lower', 'upper', 'root', 'f(x)'};
        handles.t=uitable(arr, col, 'position', [850, 50, 350, 450]);
        set(handles.text18, 'visible', 'off');
        set(handles.text21, 'visible', 'off');
        set(handles.select_root, 'visible', 'off');
        set(handles.iterations, 'visible', 'off');
    case 3
        col = {'i','Xi', 'error' , 'g`(x)'};
        t=uitable(arr, col, 'position', [850, 50, 350, 450]);
        set(handles.text18, 'visible', 'off');
        set(handles.text21, 'visible', 'off');
        set(handles.select_root, 'visible', 'off');
        set(handles.iterations, 'visible', 'off');
    case 4
        col = {'i', 'Xi', 'Xi+1', 'error', 'theoritical error'};
        handles.t=uitable(arr, col, 'position', [850, 50, 350, 450]);
        set(handles.text18, 'visible', 'off');
        set(handles.text21, 'visible', 'off');
        set(handles.select_root, 'visible', 'off');
        set(handles.iterations, 'visible', 'off');
    case 5
        col = {'i', 'Xi-1', 'Xi', 'Xi+1', 'error'};
        handles.t=uitable(arr, col, 'position', [850, 50, 350, 450]);
        set(handles.text18, 'visible', 'off');
        set(handles.text21, 'visible', 'off');
        set(handles.select_root, 'visible', 'off');
        set(handles.iterations, 'visible', 'off');
    case 9
        col = { 'iter' , 'p0' , 'p1' ,'p2' ,'p','error'};
        handles.t=uitable(arr, col, 'position', [850, 50, 350, 450]);
        set(handles.text18, 'visible', 'off');
        set(handles.text21, 'visible', 'off');
        set(handles.select_root, 'visible', 'off');
        set(handles.iterations, 'visible', 'off');
    case 6
        order = size(arr, 1);
        ent= {};
        ien ={};
        for i = 1:size(arr, 2)
            ient{i} = num2str(i);
        end
        set(handles.iterations, 'String', ient);
        set(handles.iterations, 'Value', 1.0);
        for i = 1:order
            ent{i} = num2str(i);
        end
        set(handles.select_root, 'String', ent);
        set(handles.select_root, 'Value', 1.0);
        col = {'i', 'a', 'b', 'c'};
        handles.t=uitable(reshape(arr(1, 1, :, :),size(arr, 3), size(arr, 4)), col, 'position', [850, 50, 350, 450]);
        %handles.birge_arr = arr;
        set(handles.text18, 'visible', 'on');
        set(handles.text21, 'visible', 'on');
        set(handles.select_root, 'visible', 'on');
        set(handles.iterations, 'visible', 'on');
    case 7
end

end

