function varargout = visual(varargin)
% VISUAL MATLAB code for visual.fig
%      VISUAL, by itself, creates a new VISUAL or raises the existing
%      singleton*.
%
%      H = VISUAL returns the handle to a new VISUAL or the handle to
%      the existing singleton*.
%
%      VISUAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VISUAL.M with the given input arguments.
%
%      VISUAL('Property','Value',...) creates a new VISUAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before visual_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to visual_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help visual

% Last Modified by GUIDE v2.5 20-Nov-2017 23:44:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @visual_OpeningFcn, ...
                   'gui_OutputFcn',  @visual_OutputFcn, ...
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


% --- Executes just before visual is made visible.
function visual_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to visual (see VARARGIN)

% Choose default command line output for visual
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes visual wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = visual_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cFormula_Callback(hObject, eventdata, handles)
% hObject    handle to cFormula (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cFormula as text
%        str2double(get(hObject,'String')) returns contents of cFormula as a double


% --- Executes during object creation, after setting all properties.
function cFormula_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cFormula (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cValorInicial_Callback(hObject, eventdata, handles)
% hObject    handle to cValorInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cValorInicial as text
%        str2double(get(hObject,'String')) returns contents of cValorInicial as a double


% --- Executes during object creation, after setting all properties.
function cValorInicial_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cValorInicial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cTolerancia_Callback(hObject, eventdata, handles)
% hObject    handle to cTolerancia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cTolerancia as text
%        str2double(get(hObject,'String')) returns contents of cTolerancia as a double


% --- Executes during object creation, after setting all properties.
function cTolerancia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cTolerancia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btCalcular.
function btCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to btCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%http://es.mathworks.com/matlabcentral/fileexchange/38352-implementation-of-midpoint--trapezoidal--and-simpson-rule?focused=5248135&tab=function
%function

fun = get(handles.cFormula,'String');
x0 = str2num( get( handles.cValorInicial , 'String' ) );
tol = str2num( get( handles.cTolerancia , 'String' ) );


i = 1;

%Valor inicial Xi %
X(i) = x0;

%Variable Simbolica%
syms x;

%Uso de Sustitucion Simbolica (Reempladerar en la funEval todas las X por
%valor Inicial
funEval = subs(fun,x,X(i));

%Derivada%
der = diff(fun,x);

%Uso de Sustitucion Simbolica (Reempladerar en la funEval todas las X por
%valor Inicial
derEval = subs(der,x,X(i));

%Error Absoluto%
error(1)=100;

%Ejecutar mientras |Error| sea mayor a la tolerancia%
while abs( error(i) ) >= tol;    
    X(i+1) = X(i) - funEval/derEval; 
    funEval = subs(fun,x,X(i+1)); 
    derEval = subs(der,x,X(i+1));
    error(i+1) = abs((X(i+1)-X(i))/X(i+1)*100);
    i=i+1;
end

%Lista de Resultados a mostrar en tabla%
resultados = {};

for j = 1:i;    
    resultados(end+1,:) = {j-1,sprintf('%11.7f',X(j)),sprintf('%11.7f',error(j))};
end

%Enviando datos tabulados a tabla%
set(handles.tabla,'Data',resultados);


%end: funcion



function cValorReal_Callback(hObject, eventdata, handles)
% hObject    handle to cValorReal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cValorReal as text
%        str2double(get(hObject,'String')) returns contents of cValorReal as a double


% --- Executes during object creation, after setting all properties.
function cValorReal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cValorReal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cValorAprox_Callback(hObject, eventdata, handles)
% hObject    handle to cValorAprox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cValorAprox as text
%        str2double(get(hObject,'String')) returns contents of cValorAprox as a double


% --- Executes during object creation, after setting all properties.
function cValorAprox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cValorAprox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cError_Callback(hObject, eventdata, handles)
% hObject    handle to cError (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cError as text
%        str2double(get(hObject,'String')) returns contents of cError as a double


% --- Executes during object creation, after setting all properties.
function cError_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cError (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cPorcentaje_Callback(hObject, eventdata, handles)
% hObject    handle to cPorcentaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cPorcentaje as text
%        str2double(get(hObject,'String')) returns contents of cPorcentaje as a double


% --- Executes during object creation, after setting all properties.
function cPorcentaje_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cPorcentaje (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
