function varargout = GUI2(varargin)
% GUI2 MATLAB code for GUI2.fig
%      GUI2, by itself, creates a new GUI2 or raises the existing
%      singleton*.
%
%      H = GUI2 returns the handle to a new GUI2 or the handle to
%      the existing singleton*.
%
%      GUI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI2.M with the given input arguments.
%
%      GUI2('Property','Value',...) creates a new GUI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI2

% Last Modified by GUIDE v2.5 01-May-2019 15:57:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI2_OutputFcn, ...
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


% --- Executes just before GUI2 is made visible.
function GUI2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI2 (see VARARGIN)

% Choose default command line output for GUI2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function equationText_Callback(hObject, eventdata, handles)
% hObject    handle to equationText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equationText as text
%        str2double(get(hObject,'String')) returns contents of equationText as a double



% --- Executes during object creation, after setting all properties.
function equationText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equationText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in singleMethodCheckbox.
function singleMethodCheckbox_Callback(hObject, eventdata, handles)
% hObject    handle to singleMethodCheckbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of singleMethodCheckbox


% --- Executes on button press in allMethodsCheckbox.
function allMethodsCheckbox_Callback(hObject, eventdata, handles)
% hObject    handle to allMethodsCheckbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of allMethodsCheckbox
allMethodsValue = get(hObject,'Value');
handles.allMethodsValue=allMethodsValue;
guidata(hObject,handles);

% --- Executes on selection change in popupmenu.
function popupmenu_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu

contents=cellstr(get(hObject, 'String'));
pop_choice=contents{get(hObject, 'Value')};
handles.pop_choice=pop_choice;
guidata(hObject,handles);


pop_choice


allMethodsValue=handles.allMethodsValue;
if allMethodsValue == 1
    contents=cellstr(get(hObject, 'String'));
    pop_choice=contents{get(hObject, 'Value')};
    pop_choice
    if(strcmp(pop_choice,'Bisection'))
        dep_ix=1
    elseif (strcmp(pop_choice,'Regula Falsi'))
        dep_ix=2
    elseif (strcmp(pop_choice,'Fixed Point Iteration'))
        dep_ix=3
    elseif (strcmp(pop_choice,'Newton-Raphson'))
        dep_ix=4
    elseif (strcmp(pop_choice,'Secant'))
        dep_ix=5
    elseif (strcmp(pop_choice,'Bierge-Vieta'))
        dep_ix=6
    end
    
end
if allMethodsValue == 0
    
end



% --- Executes during object creation, after setting all properties.
function popupmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in parametersPushButton.
function parametersPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to parametersPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in readFilePushButton.
function readFilePushButton_Callback(hObject, eventdata, handles)
% hObject    handle to readFilePushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in solvePushButton.
function solvePushButton_Callback(hObject, eventdata, handles)
% hObject    handle to solvePushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%words = get(equationText.edit, 'String');
% if isempty(words)
%   fprintf('Error: Enter Text first\n');
% else
   % Write code for computation you want to do 
% end
%disp(words);


% --- Executes on button press in nextStepButton.
function nextStepButton_Callback(hObject, eventdata, handles)
% hObject    handle to nextStepButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

allMethodsValue=handles.allMethodsValue;
pop_choice=handles.pop_choice;

if allMethodsValue == 1
    
end 
if allMethodsValue == 0
    if(strcmp(pop_choice,'Bisection'))
        dep_ix=1
    elseif (strcmp(pop_choice,'Regula Falsi'))
        dep_ix=2
    elseif (strcmp(pop_choice,'Fixed Point Iteration'))
        dep_ix=3
    elseif (strcmp(pop_choice,'Newton-Raphson'))
        dep_ix=4
    elseif (strcmp(pop_choice,'Secant'))
        dep_ix=5
    elseif (strcmp(pop_choice,'Bierge-Vieta'))
        root = handles.x0;
        eps = handles.eps;
        coeff = fliplr(handles.coeff);
        handles.order = size(coeff,2) - 1;
        [handles.x0 handles.err iter handles.b t] = birgeVietaOneRoot(coeff, root, 1, eps);
        handles.roots(handles.rootIndex) = handles.x0;
        s = min(handles.roots(1:handles.rootIndex));
        e = max(handles.roots(1:handles.rootIndex));
        X = s-5:0.01:e+5;
        polyCoeff =(sym2poly(sym(handles.eqn)));
        Y = polyval(polyCoeff, X);
        plot(X, Y);
        ax = gca;
        ax.XAxisLocation = 'origin';
        ax.YAxisLocation = 'origin';
        for i=1:handles.rootIndex
            hold on;
            fx = polyval(polyCoeff, handles.roots(i));
            plot(handles.roots(i), fx, 'rx');
        end
        disp(handles.x0);
        disp(handles.err);
        disp(t);
    end
end

% --- Executes on button press in nextRootButton.
function nextRootButton_Callback(hObject, eventdata, handles)
% hObject    handle to nextRootButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.rootIndex < handles.order
    handles.rootIndex = handles.rootIndex + 1;
    handles.coeff = handles.b(2:size(b,2));
end