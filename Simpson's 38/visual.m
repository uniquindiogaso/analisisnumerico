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

% Last Modified by GUIDE v2.5 22-Oct-2017 21:36:54

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



function cLimInf_Callback(hObject, eventdata, handles)
% hObject    handle to cLimInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cLimInf as text
%        str2double(get(hObject,'String')) returns contents of cLimInf as a double


% --- Executes during object creation, after setting all properties.
function cLimInf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cLimInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cLimSuperior_Callback(hObject, eventdata, handles)
% hObject    handle to cLimSuperior (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cLimSuperior as text
%        str2double(get(hObject,'String')) returns contents of cLimSuperior as a double


% --- Executes during object creation, after setting all properties.
function cLimSuperior_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cLimSuperior (see GCBO)
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
strFormula = get(handles.cFormula,'String');

limInferior = str2num( get( handles.cLimInf , 'String' ) );
limSuperior = str2num( get( handles.cLimSuperior , 'String' ) );

h = (limSuperior-limInferior)/3;

g = inline(strFormula);

%int() ==> simpson iterativo
integralnum = int( sym(strFormula) ,limInferior,limSuperior);
integralaprox = (3*h/8)*( g(limInferior) + 3*( g( limInferior+h) + g( limInferior+2*h) ) + g(limSuperior));

e1 = integralnum - integralaprox;
e2 =  abs((e1/integralaprox)*100);

display('Valor Integral : '), disp(double(integralnum));
display('e2 e2 e2 e2 : '), disp(e2);

set( handles.cValorReal, 'String' , double(integralnum) );
set( handles.cValorAprox, 'String' , double(integralaprox) );
set( handles.cError, 'String' , double(e1) );
set( handles.cPorcentaje, 'String' , double(e2) );

%
%Graficar VALOR REAL
%
axes(handles.grafica);
ezplot(g, [limInferior,limSuperior]) , hold on;



%
% GRAFICAR VALOR APROXIMADO
%
x = [limInferior  limInferior+h  limInferior+2*h limSuperior];
y = [g(limInferior) g( limInferior+h) g( limInferior+2*h) g(limSuperior)];
%Empleando metodo algebraico para generar un polinomio
P = polyfit(x,y,3);

ezplot(poly2sym(P), [limInferior,limSuperior]) , hold on;

title 'Grafica Comparativa'
legend({'Valor Exacto', 'Valor Aprox.'})

hold off;
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
