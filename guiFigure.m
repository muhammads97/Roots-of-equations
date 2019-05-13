function varargout = guiFigure(varargin)
    % GUIFIGURE MATLAB code for guiFigure.fig
    %      GUIFIGURE, by itself, creates a new GUIFIGURE or raises the existing
    %      singleton*.
    %
    %      H = GUIFIGURE returns the handle to a new GUIFIGURE or the handle to
    %      the existing singleton*.
    %
    %      GUIFIGURE('CALLBACK',hObject,eventData,handles,...) calls the local
    %      function named CALLBACK in GUIFIGURE.M with the given input arguments.
    %
    %      GUIFIGURE('Property','Value',...) creates a new GUIFIGURE or raises the
    %      existing singleton*.  Starting from the left, property value pairs are
    %      applied to the GUI before guiFigure_OpeningFcn gets called.  An
    %      unrecognized property name or invalid value makes property application
    %      stop.  All inputs are passed to guiFigure_OpeningFcn via varargin.
    %
    %      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
    %      instance to run (singleton)".
    %
    % See also: GUIDE, GUIDATA, GUIHANDLES
    
    % Edit the above text to modify the response to help guiFigure
    
    % Last Modified by GUIDE v2.5 14-May-2019 01:21:50
    
    % Begin initialization code - DO NOT EDIT
    gui_Singleton = 1;
    gui_State = struct('gui_Name',       mfilename, ...
        'gui_Singleton',  gui_Singleton, ...
        'gui_OpeningFcn', @guiFigure_OpeningFcn, ...
        'gui_OutputFcn',  @guiFigure_OutputFcn, ...
        'gui_LayoutFcn',  [] , ...
        'gui_Callback',   []);
    if nargin && ischar(varargin{1})
        gui_State.gui_Callback = str2func(varargin{1});
    end
    
    if nargout
        [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
    else
        gui_mainfcn(gui_State, varargin{:});
    end
    % End initialization code - DO NOT EDIT
    
    
    % --- Executes just before guiFigure is made visible.
function guiFigure_OpeningFcn(hObject, eventdata, handles, varargin)
    % This function has no output args, see OutputFcn.
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    % varargin   command line arguments to guiFigure (see VARARGIN)
    
    % Choose default command line output for guiFigure
    handles.output = hObject;
    
    % Update handles structure
    guidata(hObject, handles);
    
    % UIWAIT makes guiFigure wait for user response (see UIRESUME)
    % uiwait(handles.figure1);
    
    
    % --- Outputs from this function are returned to the command line.
function varargout = guiFigure_OutputFcn(hObject, eventdata, handles)
    % varargout  cell array for returning output args (see VARARGOUT);
    % hObject    handle to figure
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Get default command line output from handles structure
    varargout{1} = handles.output;
    
    
    
function eqn_text_Callback(hObject, eventdata, handles)
    % hObject    handle to eqn_text (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of eqn_text as text
    %        str2double(get(hObject,'String')) returns contents of eqn_text as a double
    
    
    % --- Executes during object creation, after setting all properties.
function eqn_text_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to eqn_text (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    % --- Executes on selection change in methods_menu.
function methods_menu_Callback(hObject, eventdata, handles)
    % hObject    handle to methods_menu (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: contents = cellstr(get(hObject,'String')) returns methods_menu contents as cell array
    %        contents{get(hObject,'Value')} returns selected item from methods_menu
    
    switch get(hObject,'Value')
        case 1
            set(handles.bi_param,'visible','on');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 2
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','on');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 3
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','on');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 4
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','on');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 5
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','on');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 6
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','on');
            set(handles.all_param, 'visible', 'off');
            s_step = get(handles.s_step, 'value');
            disp(s_step);
            if s_step
                set(handles.n_root, 'visible', 'on');
            else
                set(handles.n_root, 'visible', 'off');
            end
        case 8
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','on');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        otherwise
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'on');
            set(handles.s_step, 'Value', 0);
            set(handles.s_step, 'Visible', 'off');
    end
    
    
    % --- Executes during object creation, after setting all properties.
function methods_menu_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to methods_menu (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: popupmenu controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function bi_l_Callback(hObject, eventdata, handles)
    % hObject    handle to bi_l (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of bi_l as text
    %        str2double(get(hObject,'String')) returns contents of bi_l as a double
    
    
    % --- Executes during object creation, after setting all properties.
function bi_l_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to bi_l (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function eps_t_Callback(hObject, eventdata, handles)
    % hObject    handle to eps_t (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of eps_t as text
    %        str2double(get(hObject,'String')) returns contents of eps_t as a double
    
    
    % --- Executes during object creation, after setting all properties.
function eps_t_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to eps_t (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function n_iter_Callback(hObject, eventdata, handles)
    % hObject    handle to n_iter (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of n_iter as text
    %        str2double(get(hObject,'String')) returns contents of n_iter as a double
    
    
    % --- Executes during object creation, after setting all properties.
function n_iter_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to n_iter (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function bi_u_Callback(hObject, eventdata, handles)
    % hObject    handle to bi_u (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of bi_u as text
    %        str2double(get(hObject,'String')) returns contents of bi_u as a double
    
    
    % --- Executes during object creation, after setting all properties.
function bi_u_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to bi_u (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function false_u_Callback(hObject, eventdata, handles)
    % hObject    handle to false_u (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of false_u as text
    %        str2double(get(hObject,'String')) returns contents of false_u as a double
    
    
    % --- Executes during object creation, after setting all properties.
function false_u_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to false_u (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function false_l_Callback(hObject, eventdata, handles)
    % hObject    handle to false_l (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of false_l as text
    %        str2double(get(hObject,'String')) returns contents of false_l as a double
    
    
    % --- Executes during object creation, after setting all properties.
function false_l_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to false_l (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function secant_x1_Callback(hObject, eventdata, handles)
    % hObject    handle to secant_x1 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of secant_x1 as text
    %        str2double(get(hObject,'String')) returns contents of secant_x1 as a double
    
    
    % --- Executes during object creation, after setting all properties.
function secant_x1_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to secant_x1 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function secant_x0_Callback(hObject, eventdata, handles)
    % hObject    handle to secant_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of secant_x0 as text
    %        str2double(get(hObject,'String')) returns contents of secant_x0 as a double
    
    
    % --- Executes during object creation, after setting all properties.
function secant_x0_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to secant_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function fixed_x0_Callback(hObject, eventdata, handles)
    % hObject    handle to fixed_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of fixed_x0 as text
    %        str2double(get(hObject,'String')) returns contents of fixed_x0 as a double
    
    
    % --- Executes during object creation, after setting all properties.
function fixed_x0_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to fixed_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function newton_x0_Callback(hObject, eventdata, handles)
    % hObject    handle to newton_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of newton_x0 as text
    %        str2double(get(hObject,'String')) returns contents of newton_x0 as a double
    
    
    % --- Executes during object creation, after setting all properties.
function newton_x0_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to newton_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function birge_x0_Callback(hObject, eventdata, handles)
    % hObject    handle to birge_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of birge_x0 as text
    %        str2double(get(hObject,'String')) returns contents of birge_x0 as a double
    
    
    % --- Executes during object creation, after setting all properties.
function birge_x0_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to birge_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    % --- Executes on button press in s_step.
function s_step_Callback(hObject, eventdata, handles)
    % hObject    handle to s_step (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hint: get(hObject,'Value') returns toggle state of s_step
    s_step = get(hObject, 'value');
    if s_step
        if get(handles.methods_menu, 'value') == 6
            set(handles.n_root, 'visible', 'on');
        else
            set(handles.n_root, 'visible', 'off');
        end
    else
        set(handles.n_root, 'visible', 'off');
    end
    
    % --- Executes on button press in solve.
function solve_Callback(hObject, eventdata, handles)
    % hObject    handle to solve (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    if ~get(handles.s_step, 'value')
        method = get(handles.methods_menu, 'value');
        error = false;
        switch method
            case 1
                set(handles.axes2, 'visible', 'on');
                set(handles.axes3, 'visible', 'on');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                l = get(handles.bi_l, 'String');
                l = str2num(l);
                if isempty(l)
                    warndlg('Input must be numerical');
                    error = true;
                end
                u = get(handles.bi_u, 'String');
                u = str2num(u);
                if isempty(u)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    
                    [r, err, arr, eTime, l, u ,k]= bisection(eqn, l, u, iter, eps, true, false, handles);
                    handles.save_root = r;
                    handles.save_error = err;
                    handles.save_arr = arr;
                    handles.save_eTime = eTime;
                    handles.save_name = 'bisection';
                    handles.column_names ={ 'iter' , 'lower' , 'upper' ,'root' ,'error'};
                    guidata(hObject,handles);
                    show_res(arr, handles, 1);
                    str = strcat('root: ', num2str(r), ' | time of execution: ', num2str(eTime), ' | error :', num2str(err) ,' | number of iteraions expected :  ',num2str (k));
                    set(handles.sol, 'String', str);
                    %disp(str);
                end
            case 2
                set(handles.axes2, 'visible', 'on');
                set(handles.axes3, 'visible', 'on');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                l = get(handles.false_l, 'String');
                l = str2num(l);
                if isempty(l)
                    warndlg('Input must be numerical');
                    error = true;
                end
                u = get(handles.false_u, 'String');
                u = str2num(u);
                if isempty(u)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    [i,xr,elapsed,xl,xu,arr,presion]=false_position(eqn, l, u, iter, eps,true, false, handles);
                    handles.save_root = xr;
                    handles.save_error = 100 - presion;
                    handles.save_arr = arr;
                    handles.save_eTime = elapsed;
                    handles.save_name = 'false_position';
                    handles.column_names ={ 'iter' , 'lower' , 'upper' ,'root' ,'f(x)'};
                    guidata(hObject,handles);
                    show_res(arr, handles, 2);
                    str = strcat('root: ', num2str(xr), ' | time of execution: ', num2str(elapsed), ' | precesion :', num2str(presion));
                    set(handles.sol, 'String', str);
                    %disp(str);
                end
            case 3
                set(handles.axes2, 'visible', 'on');
                set(handles.axes3, 'visible', 'on');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                x0 = get(handles.fixed_x0, 'String');
                x0 = str2num(x0);
                if isempty(x0)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    [i,xi,presion,arr,elapsed_time,gx]= fixed_point(eqn, x0, iter, eps, true , false, handles);
                    handles.save_root = xi;
                    handles.save_error = 100 - presion;
                    handles.save_arr = arr;
                    handles.save_eTime = elapsed_time;
                    handles.save_name = 'fixed_point';
                    handles.column_names ={ 'iter' , 'Xi' , 'error' };
                    guidata(hObject,handles);
                    show_res(arr, handles, 3);
                    str = strcat('root: ', num2str(xi), ' | time of execution: ', num2str(elapsed_time), ' | precesion :', num2str(presion), ' | g`(x) =' ,num2str(gx));
                    set(handles.sol, 'String', str);
                end
            case 4
                set(handles.axes2, 'visible', 'on');
                set(handles.axes3, 'visible', 'on');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                x0 = get(handles.newton_x0, 'String');
                x0 = str2num(x0);
                if isempty(x0)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    [x1, err, arr, eTime] = newton(eqn, x0, iter, eps, true, false, handles);
                    handles.save_root = x1;
                    handles.save_error =err ;
                    handles.save_arr = arr;
                    handles.save_eTime = eTime;
                    handles.save_name = 'newton';
                    handles.column_names ={ 'iter' , 'Xi' , 'Xi+1' ,'error'};
                    guidata(hObject,handles);
                    show_res(arr, handles, 4);
                    str = strcat('root: ', num2str(x1), ' | time of execution: ', num2str(eTime), ' | error :', num2str(err));
                    set(handles.sol, 'String', str);
                end
            case 5
                set(handles.axes2, 'visible', 'on');
                set(handles.axes3, 'visible', 'on');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                x0 = get(handles.secant_x0, 'String');
                x0 = str2num(x0);
                if isempty(x0)
                    warndlg('Input must be numerical');
                    error = true;
                end
                x1 = get(handles.secant_x1, 'String');
                x1 = str2num(x1);
                if isempty(x1)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    [xi, arr, i, err, ex_time] = Secant(x0, x1, eps, iter, eqn, true , false, handles);
                    handles.save_root = xi;
                    handles.save_error =err;
                    handles.save_arr = arr;
                    handles.save_eTime = ex_time;
                    handles.save_name = 'Secant';
                    handles.column_names ={ 'iter' , 'Xi-1' , 'Xi' ,'Xi+1' ,'error'};
                    guidata(hObject,handles);
                    show_res(arr, handles, 5);
                    str = strcat('root: ', num2str(xi), ' | time of execution: ', num2str(ex_time), ' | error :', num2str(err));
                    set(handles.sol, 'String', str);
                end
            case 6
                set(handles.axes2, 'visible', 'off');
                set(handles.axes3, 'visible', 'off');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                x0 = get(handles.birge_x0, 'String');
                x0 = str2num(x0);
                if isempty(x0)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    [ root, iter, ex_time, err, all_iter ] = birgeVieta(eqn, x0, iter, eps, true, handles);
                    handles.save_root = root;
                    handles.save_error = err;
                    handles.save_arr = all_iter;
                    handles.save_eTime = ex_time;
                    handles.save_name = 'birgeVieta';
                    handles.column_names ={ 'iter' , 'a' , 'b' ,'c' };
                    guidata(hObject,handles);
                    str = 'roots : ';
                    for i=1:size(root, 2)
                        str = strcat(str, num2str(root(i)), ', ');
                    end
                    str = strcat(str, char(10), ' execution time: ', num2str(ex_time))
                    set(handles.sol, 'String', str);
                    show_res(all_iter, handles, 6);
                    handles.birge_arr = all_iter;
                    guidata(hObject,handles);
                end
            case 7
                set(handles.axes2, 'visible', 'on');
                set(handles.axes3, 'visible', 'off');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                x0 = get(handles.all_x0, 'String');
                x0 = str2num(x0);
                if isempty(x0)
                    warndlg('Input must be numerical');
                    error = true;
                end
                x1 = get(handles.all_x1, 'String');
                x1 = str2num(x1);
                if isempty(x1)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    [r1, err1, arr1, eTime1, l1, u1] = bisection(eqn, x0, x1, iter, eps, false, false, handles);
                    [i2,xr2,elapsed2,xl2,xu2,arr2,presion2, err2] = false_position(eqn , x0 , x1 , iter , eps , false , false, handles);
                    [i3,xi3,presion3,arr3,elapsed_time3] = fixed_point(eqn,x0,iter,eps,false , false, handles);
                    [x14, err4, arr4, eTime4] = newton(eqn, x0, iter, eps, false, false, handles);
                    [xi5, arr5, i5, err5, ex_time5, x15, x05] = Secant(x0, x1, eps, iter, eqn, false, false, handles);
                    [root6,xi6, arr6, i6, err6, ex_time6] = Modified_NewtonRaphson(eqn, x0, eps, iter, false, false,handles)
                    
                    str = strcat('bisection =>   root : ',num2str(r1) ,'  precision : ' ,num2str((1 - err1)*100), '  time :',num2str(eTime1),char(10));
                    str = strcat(str , '   false-position =>   root : ',num2str(xr2) ,' precision : ' ,num2str(presion2), '  time :',num2str(elapsed2),char(10));
                    str = strcat(str , '   fixed_point =>   root : ',num2str(xi3) ,' precision : ' ,num2str(presion3), '  time :',num2str(elapsed_time3),char(10));
                    str = strcat(str , '   newton =>   root : ',num2str(x14) ,' precision : ' ,num2str((1 - err4)*100), '  time :',num2str(eTime4),char(10));
                    str = strcat(str , '   Secant =>   root : ',num2str(xi5) ,' precision : ' ,num2str((100 - err5)), '  time :',num2str(ex_time5),char(10));
                    str = strcat(str , '   general algorithm =>   root : ',num2str(root6) ,' precision : ',num2str((100 - err6)), '  time :',num2str(ex_time6));
                    
                    set(handles.sol, 'String', str);
                    
                    
                    cla(handles.axes1);
                    axes(handles.axes1);
                    xlabel('number of iterations');
                    ylabel('root value');
                    hold on;
                    plot(arr1(:,1), arr1(:, 4), 'b-x');
                    plot(arr2(:,1), arr2(:, 4), 'g-x');
                    plot(arr3(:,1), arr3(:, 2), 'r-x');
                    plot(arr4(:,1), arr4(:, 3), 'y-x');
                    plot(arr5(:,1), arr5(:, 4), 'm-x');
                    plot(arr6(:,1), arr6(:, 3), 'c-x');
                    hold off;
                    legend({'bisection', 'false position', 'fixed point', 'newton raphson', 'secant' ,'general alg.'});
                    guidata(hObject,handles);
                    cla(handles.axes2);
                    axes(handles.axes2);
                    xlabel('number of iterations');
                    ylabel('error value');
                    hold on;
                    plot(arr1(:,1), arr1(:, 5), 'b-x');
                    plot(err2(:,1), err2(:, 2), 'g-x');
                    plot(arr3(:,1), arr3(:, 3), 'r-x');
                    plot(arr4(:,1), arr4(:, 4), 'y-x');
                    plot(arr5(:,1), arr5(:, 5), 'm-x');
                    plot(arr6(:,1), arr6(:, 4), 'c-x');
                    hold off;
                    legend({'bisection', 'false position', 'fixed point', 'newton raphson', 'secant','general alg.'});
                end
            case 8
                set(handles.axes2, 'visible', 'on');
                set(handles.axes3, 'visible', 'on');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                x0 = get(handles.newton_x0, 'String');
                x0 = str2num(x0);
                if isempty(x0)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eps = get(handles.eps_t, 'String');
                eps = str2num(eps);
                if isempty(eps)
                    warndlg('Input must be numerical');
                    error = true;
                end
                iter = get(handles.n_iter, 'String');
                iter = str2num(iter);
                if isempty(iter)
                    warndlg('Input must be numerical');
                    error = true;
                end
                eqn = get(handles.eqn_text, 'String');
                try
                    sym(eqn);
                catch
                    try
                        inline(eqn);
                    catch
                        warndlg('please enter a correct equation');
                        error = true;
                    end
                end
                if ~error
                    [root,xi, arr, i, err, ex_time] = Modified_NewtonRaphson(eqn, x0, eps, iter, true, false,handles);
                    handles.save_root = root;
                    handles.save_error = err ;
                    handles.save_arr = arr;
                    handles.save_eTime = ex_time;
                    handles.save_name = 'general';
                    handles.column_names ={ 'iter' , 'Xi' , '     Xi+1' ,'error'};
                    guidata(hObject,handles);
                    show_res(arr, handles, 4);
                    str = strcat('root: ', num2str(root), ' | time of execution: ', num2str(ex_time), ' | error :', num2str(err));
                    set(handles.sol, 'String', str);
                end
        end
    else
        method = get(handles.methods_menu, 'value');
        error = false;
        switch method
            case 1
                if(~isfield(handles, 'xl'))
                    set(handles.axes2, 'visible', 'off');
                    set(handles.axes3, 'visible', 'off');
                    cla(handles.axes2);
                    cla(handles.axes3);
                    cla(handles.axes1);
                    handles.iter = 0;
                    handles.xl = str2num(get(handles.bi_l, 'String'));
                    handles.xu = str2num(get(handles.bi_u, 'String'));
                    col = {'i', 'lower', 'upper', 'root', 'error'};
                    handles.t=uitable([0 0 0 0 0], col, 'position', [850, 50, 350, 450]);
                    set(handles.text18, 'visible', 'off');
                    set(handles.text21, 'visible', 'off');
                    set(handles.select_root, 'visible', 'off');
                    set(handles.iterations, 'visible', 'off');
                end
                [r, err, arr, eTime, l, u] = bisection(get(handles.eqn_text, 'String'), handles.xl, handles.xu, 1, str2num(get(handles.eps_t, 'String')), true, true, handles);
                handles.save_root = r;
                handles.save_error =err;
                handles.save_arr = arr;
                handles.save_eTime = eTime;
                handles.save_name = 'bisection';
                handles.column_names ={ 'iter' , 'lower' , 'upper' ,'root' ,'error'};
                guidata(hObject,handles);
                if(r == l)
                    handles.xl = r;
                else
                    handles.xu = r;
                end
                data=get(handles.t, 'data');
                set(handles.t, 'data', [cell(data);num2cell(arr)]);
                guidata(hObject,handles);
            case 2
                if(~isfield(handles, 'xl'))
                    set(handles.axes2, 'visible', 'off');
                    set(handles.axes3, 'visible', 'off');
                    cla(handles.axes2);
                    cla(handles.axes3);
                    cla(handles.axes1);
                    handles.xl = str2num(get(handles.false_l, 'String'));
                    handles.xu = str2num(get(handles.false_u, 'String'));
                    col = {'i', 'lower', 'upper', 'root', 'error'};
                    handles.t=uitable([0 0 0 0 0], col, 'position', [850, 50, 350, 450]);
                    set(handles.text18, 'visible', 'off');
                    set(handles.text21, 'visible', 'off');
                    set(handles.select_root, 'visible', 'off');
                    set(handles.iterations, 'visible', 'off');
                end
                %[i,xr,elapsed,xl,xu,arr,presion]=false_position(eqn, l, u, iter, eps,true, false, handles);
                [i,xr,elapsed,xl,xu,arr,presion] = false_position(get(handles.eqn_text, 'String'), handles.xl, handles.xu, 1, str2num(get(handles.eps_t, 'String')), false, true, handles);
                handles.save_root = xr;
                handles.save_error = 100 - presion ;
                handles.save_arr = arr;
                handles.save_eTime = elapsed;
                handles.save_name = 'false_position';
                handles.column_names ={ 'iter' , 'lower' , 'upper' ,'root' ,'f(x)'};
                guidata(hObject,handles);
                handles.xl = xl;
                handles.xu = xu;
                data=get(handles.t, 'data');
                set(handles.t, 'data', [cell(data);num2cell(arr)]);
                guidata(hObject,handles);
            case 4
                if(~isfield(handles, 'xi'))
                    set(handles.axes2, 'visible', 'off');
                    set(handles.axes3, 'visible', 'off');
                    cla(handles.axes2);
                    cla(handles.axes3);
                    cla(handles.axes1);
                    handles.xi = str2num(get(handles.newton_x0, 'String'));
                    col = {'i', 'Xi', 'Xi+1', 'error'};
                    handles.t=uitable([0 0 0 0], col, 'position', [850, 50, 350, 450]);
                    set(handles.text18, 'visible', 'off');
                    set(handles.text21, 'visible', 'off');
                    set(handles.select_root, 'visible', 'off');
                    set(handles.iterations, 'visible', 'off');
                end
                %[x1, err, arr, eTime] = newton(eqn, x0, iter, eps, true, false, handles);
                [x1, err, arr, eTime] = newton(get(handles.eqn_text, 'String'), handles.xi, 1, str2num(get(handles.eps_t, 'String')), false, true, handles);
                handles.save_root = x1;
                handles.save_error = err ;
                handles.save_arr = arr;
                handles.save_eTime = eTime;
                handles.save_name = 'newton';
                handles.column_names ={ 'iter' , 'Xi' , 'Xi+1' ,'error'};
                guidata(hObject,handles);
                handles.xi = x1;
                data=get(handles.t, 'data');
                set(handles.t, 'data', [cell(data);num2cell(arr)]);
                guidata(hObject,handles);
            case 3
                if(~isfield(handles, 'xi'))
                    set(handles.axes2, 'visible', 'off');
                    set(handles.axes3, 'visible', 'off');
                    cla(handles.axes2);
                    cla(handles.axes3);
                    cla(handles.axes1);
                    handles.xi = str2num(get(handles.fixed_x0, 'String'));
                    col = {'i', 'Xi', 'error'};
                    handles.t=uitable([0 0 0], col, 'position', [850, 50, 350, 450]);
                    set(handles.text18, 'visible', 'off');
                    set(handles.text21, 'visible', 'off');
                    set(handles.select_root, 'visible', 'off');
                    set(handles.iterations, 'visible', 'off');
                end
                %[i,xi,presion,arr,elapsed_time] = fixed_point(eqn,x0,iter,epsilon,plot_mode , single_mode, handles)
                [i,xi,presion,arr,elapsed_time] = fixed_point(get(handles.eqn_text, 'String'), handles.xi, 1, str2num(get(handles.eps_t, 'String')), false, true, handles);
                handles.save_root = xi;
                handles.save_error = 100-presion ;
                handles.save_arr = arr;
                handles.save_eTime = elapsed_time;
                handles.save_name = 'fixed_point';
                handles.column_names ={ 'iter' , 'Xi' , 'error' };
                guidata(hObject,handles);
                handles.xi = xi;
                data=get(handles.t, 'data');
                set(handles.t, 'data', [cell(data);num2cell(arr)]);
                guidata(hObject,handles);
            case 5
                if(~isfield(handles, 'x0'))
                    set(handles.axes2, 'visible', 'off');
                    set(handles.axes3, 'visible', 'off');
                    cla(handles.axes2);
                    cla(handles.axes3);
                    cla(handles.axes1);
                    handles.x0 = str2num(get(handles.secant_x0, 'String'));
                    handles.x1 = str2num(get(handles.secant_x1, 'String'));
                    col = {'i', 'Xi-1', 'Xi', 'Xi+1', 'error'};
                    handles.t=uitable([0 0 0 0 0], col, 'position', [850, 50, 350, 450]);
                    set(handles.text18, 'visible', 'off');
                    set(handles.text21, 'visible', 'off');
                    set(handles.select_root, 'visible', 'off');
                    set(handles.iterations, 'visible', 'off');
                end
                %[xi, arr, i, err, ex_time] = Secant(x0, x1, epsilon, iterations, eqn, plotMode, singleMode, handles)
                [xi, arr, i, err, ex_time, x1, x0] = Secant(handles.x0, handles.x1, str2num(get(handles.eps_t, 'String')), 1, get(handles.eqn_text, 'String'), false, true, handles);
                handles.save_root = xi;
                handles.save_error = err ;
                handles.save_arr = arr;
                handles.save_eTime = ex_time;
                handles.save_name = 'Secant';
                handles.column_names = {'i', 'Xi-1', 'Xi', 'Xi+1', 'error'};
                guidata(hObject,handles);
                handles.x0 = x0;
                handles.x1 = x1;
                data=get(handles.t, 'data');
                set(handles.t, 'data', [cell(data);num2cell(arr)]);
                guidata(hObject,handles);
            case 6
                set(handles.axes2, 'visible', 'off');
                set(handles.axes3, 'visible', 'off');
                cla(handles.axes2);
                cla(handles.axes3);
                cla(handles.axes1);
                if(~isfield(handles, 'polyCoeff'))
                    eqn = get(handles.eqn_text, 'String');
                    eqn = strrep(eqn, '.^', '^');
                    eqn = strrep(eqn, '.*', '*');
                    eqn= strrep(eqn, './', '/');
                    symbolic = sym(eqn);
                    handles.polyCoeff = fliplr(sym2poly(symbolic));
                    handles.coeff = sym2poly(symbolic);
                    handles.order = size(handles.polyCoeff,2) - 1;
                    handles.root = zeros(1,size(handles.polyCoeff,2)-1);
                    handles.err = handles.root;
                    handles.root(1) = num2str(get(handles.birge_x0, 'String'));
                    handles.index = 1;
                end
                i = handles.index;
                [handles.root(i) handles.err(i) iter handles.b t] = birgeVietaOneRoot(handles.polyCoeff, handles.root(i), 1, str2num(get(handles.eps_t, 'String')));
                handles.save_root = handles.root(i);
                handles.save_error = handles.err(i) ;
                tab = zeros(1,size(t,1),size(t,2),size(t,3));
                tab(1,:,:,:) = t;
                handles.save_arr = tab;
                handles.column_names = {};
                handles.save_eTime = 0.0;
                handles.save_name = 'birgeVieta';
                guidata(hObject,handles);
                axes(handles.axes1);
                s = min(handles.root(1:handles.index));
                e = max(handles.root(1:handles.index));
                X = s-5:0.01:e+5;
                
                Y = polyval(handles.coeff, X);
                plot(X, Y);
                ax = gca;
                ax.XAxisLocation = 'origin';
                ax.YAxisLocation = 'origin';
                for i=1:handles.index
                    hold on;
                    fx = polyval(handles.coeff, handles.root(i));
                    plot(handles.root(i), fx, 'rx');
                end
                guidata(hObject,handles);
                col = {'i', 'a', 'b', 'c'};
                str = 'roots found: ';
                for i=1:handles.index
                    str = strcat(str, num2str(handles.root(i)), ', ');
                end
                handles.t=uitable(reshape(t,size(t, 2), size(t, 3)), col, 'position', [850, 50, 350, 450]);
                str = strcat(str, char(10), 'root number: ', num2str(handles.index));
                set(handles.sol, 'String', str);
                
            case 7
            case 8
                if(~isfield(handles, 'xi'))
                    set(handles.axes2, 'visible', 'off');
                    set(handles.axes3, 'visible', 'off');
                    cla(handles.axes2);
                    cla(handles.axes3);
                    cla(handles.axes1);
                    handles.xi = str2num(get(handles.newton_x0, 'String'));
                    col = {'i', 'Xi', 'Xi+1', 'error'};
                    handles.t=uitable([0 0 0 0], col, 'position', [850, 50, 350, 450]);
                    set(handles.text18, 'visible', 'off');
                    set(handles.text21, 'visible', 'off');
                    set(handles.select_root, 'visible', 'off');
                    set(handles.iterations, 'visible', 'off');
                end
                %[x1, err, arr, eTime] = newton(eqn, x0, iter, eps, true, false, handles);
                [root ,x1, arr,i ,err, eTime] = Modified_NewtonRaphson(get(handles.eqn_text, 'String'), handles.xi,  str2num(get(handles.eps_t, 'String')),1, false, true, handles);
                handles.save_root = x1;
                handles.save_error = err ;
                handles.save_arr = arr;
                handles.save_eTime = eTime;
                handles.save_name = 'general';
                handles.column_names ={ 'iter' , 'Xi' , 'Xi+1' ,'error'};
                guidata(hObject,handles);
                handles.xi = x1;
                data=get(handles.t, 'data');
                set(handles.t, 'data', [cell(data);num2cell(arr)]);
                guidata(hObject,handles);
        end
    end
    
    % --- Executes on button press in n_root.
function n_root_Callback(hObject, eventdata, handles)
    % hObject    handle to n_root (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    if(isfield(handles,'polyCoeff'))
        if(handles.index < handles.order)
            handles.index = handles.index + 1;
            handles.root(handles.index) = handles.root(handles.index - 1);
            handles.polyCoeff = handles.b(2:size(handles.b, 2));
            guidata(hObject,handles);
        end
    end
    
    % --- Executes on selection change in iterations.
function iterations_Callback(hObject, eventdata, handles)
    % hObject    handle to iterations (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: contents = cellstr(get(hObject,'String')) returns iterations contents as cell array
    %        contents{get(hObject,'Value')} returns selected item from iterations
    col = {'i', 'a', 'b', 'c'};
    arr = handles.birge_arr;
    handles.t=uitable(reshape(arr(get(handles.select_root, 'Value'), get(hObject, 'Value'), :, :),size(arr, 3), size(arr, 4)), col, 'position', [850, 50, 350, 450]);
    
    % --- Executes during object creation, after setting all properties.
function iterations_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to iterations (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: popupmenu controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    % --- Executes on selection change in select_root.
function select_root_Callback(hObject, eventdata, handles)
    % hObject    handle to select_root (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: contents = cellstr(get(hObject,'String')) returns select_root contents as cell array
    %        contents{get(hObject,'Value')} returns selected item from select_root
    col = {'i', 'a', 'b', 'c'};
    arr = handles.birge_arr;
    handles.t=uitable(reshape(arr(get(hObject, 'Value'), get(handles.iterations, 'Value'), :, :),size(arr, 3), size(arr, 4)), col, 'position', [850, 50, 350, 450]);
    
    
    % --- Executes during object creation, after setting all properties.
function select_root_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to select_root (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: popupmenu controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function all_x0_Callback(hObject, eventdata, handles)
    % hObject    handle to all_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of all_x0 as text
    %        str2double(get(hObject,'String')) returns contents of all_x0 as a double
    
    
    % --- Executes during object creation, after setting all properties.
function all_x0_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to all_x0 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    
function all_x1_Callback(hObject, eventdata, handles)
    % hObject    handle to all_x1 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    
    % Hints: get(hObject,'String') returns contents of all_x1 as text
    %        str2double(get(hObject,'String')) returns contents of all_x1 as a double
    
    
    % --- Executes during object creation, after setting all properties.
function all_x1_CreateFcn(hObject, eventdata, handles)
    % hObject    handle to all_x1 (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    empty - handles not created until after all CreateFcns called
    
    % Hint: edit controls usually have a white background on Windows.
    %       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
    
    % --------------------------------------------------------------------
function openFile_ClickedCallback(hObject, eventdata, handles)
    % hObject    handle to openFile (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    [file,path] = uigetfile('*.txt');
    fileID = fopen(fullfile(path,file),'r');
    set(handles.eqn_text, 'String', fgetl(fileID));
    m_name = fgetl(fileID);
    intervals = strsplit(fgetl(fileID));
    intervals = char(intervals);
    switch m_name
        case 'Bisection'
            set(handles.methods_menu, 'Value', 1.0);
            set(handles.bi_l, 'String', intervals(1));
            set(handles.bi_u, 'String', intervals(2));
            set(handles.bi_param,'visible','on');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 'False Position'
            set(handles.methods_menu, 'Value', 2.0);
            set(handles.false_l, 'String', intervals(1));
            set(handles.false_u, 'String', intervals(2));
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','on');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 'Fixed Point'
            set(handles.methods_menu, 'Value', 3.0);
            set(handles.fixed_x0, 'String', intervals(1));
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','on');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 'Newton Raphson'
            set(handles.methods_menu, 'Value', 4.0);
            set(handles.newton_x0, 'String', intervals(1));
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','on');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 'Secant'
            set(handles.methods_menu, 'Value', 5.0);
            set(handles.secant_x0, 'String', intervals(1));
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','on');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
        case 'Birge Vieta'
            set(handles.methods_menu, 'Value', 6.0);
            set(handles.birge_x0, 'String', intervals(1));
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','on');
            set(handles.all_param, 'visible', 'off');
            s_step = get(handles.s_step, 'value');
            disp(s_step);
            if s_step
                set(handles.n_root, 'visible', 'on');
            else
                set(handles.n_root, 'visible', 'off');
            end
        case 'All Methods'
            set(handles.methods_menu, 'Value', 7.0);
            set(handles.all_x0, 'String', intervals(1));
            set(handles.all_x1, 'String', intervals(2));
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','off');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'on');
            set(handles.s_step, 'Value', 0);
            set(handles.s_step, 'Visible', 'off');
         case 'general'
            set(handles.methods_menu, 'Value', 8.0);
            set(handles.newton_x0, 'String', intervals(1));
            set(handles.bi_param,'visible','off');
            set(handles.fixed_param,'visible','off');
            set(handles.false_param,'visible','off');
            set(handles.secant_param,'visible','off');
            set(handles.newton_param,'visible','on');
            set(handles.birge_param,'visible','off');
            set(handles.n_root, 'visible', 'off');
            set(handles.all_param, 'visible', 'off');
    end
    
    parameter = str2num(fgetl(fileID));
    if floor(parameter) == parameter
        set(handles.n_iter, 'String', num2str(parameter));
    else
        set(handles.eps_t, 'String', num2str(parameter));
    end
    
    
    % --------------------------------------------------------------------
function save_ClickedCallback(hObject, eventdata, handles)
    % hObject    handle to save (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    filter = {'*.txt'};
    [file,path] = uiputfile(filter,'output.txt');
    write_file1(file, handles.save_root, handles.save_error,  handles.save_arr,...
        handles.save_eTime,  handles.save_name , handles.column_names);
