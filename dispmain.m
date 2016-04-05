function varargout = dispmain(varargin)
% DISPMAIN MATLAB code for dispmain.fig
%      DISPMAIN, by itself, creates a new DISPMAIN or raises the existing
%      singleton*.
%
%      H = DISPMAIN returns the handle to a new DISPMAIN or the handle to
%      the existing singleton*.
%
%      DISPMAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DISPMAIN.M with the given input arguments.
%
%      DISPMAIN('Property','Value',...) creates a new DISPMAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dispmain_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dispmain_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dispmain

% Last Modified by GUIDE v2.5 11-Mar-2016 15:12:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dispmain_OpeningFcn, ...
                   'gui_OutputFcn',  @dispmain_OutputFcn, ...
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


% --- Executes just before dispmain is made visible.
function dispmain_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dispmain (see VARARGIN)

% Choose default command line output for dispmain

% Update handles structure
guidata(hObject, handles);
val=0;


%function pushcount
%push=1;
%push=push+1;
%set(handles.edit2,'string',push);

% UIWAIT makes dispmain wait for user response (see UIRESUME)
% uiwait(handles.figure1);
bx=[];
setappdata(handles.figure1,'QW',bx);
I = imread('wheel.png');
B = imread('ball.png');
J = imfuse(I,B,'blend','Scaling','joint');
axes(handles.axes2);
imshow(J);

load namemoney.mat
set(handles.nameplayer,'String',nm)
set(handles.amt,'String',am)


load rm.mat
rmn1 = fliplr(rmn);
set(handles.prnumbers,'String',num2str(rmn1));

load wl.mat
wl1 = fliplr(wl);
set(handles.wl,'String',num2str(wl1));



% --- Outputs from this function are returned to the command line.
function varargout = dispmain_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
%setappdata(push,'numberofbets',val);



% --- Executes on button press in push13.
function push13_Callback(hObject, eventdata, handles)
% hObject    handle to push13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=13;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 13')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push14.
function push14_Callback(hObject, eventdata, handles)
% hObject    handle to push14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=14;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 14')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push15.
function push15_Callback(hObject, eventdata, handles)
% hObject    handle to push15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=15;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 15')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push16.
function push16_Callback(hObject, eventdata, handles)
% hObject    handle to push16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=16;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 16')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push17.
function push17_Callback(hObject, eventdata, handles)
% hObject    handle to push17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=17;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 17')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push18.
function push18_Callback(hObject, eventdata, handles)
% hObject    handle to push18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=18;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 18')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push19.
function push19_Callback(hObject, eventdata, handles)
% hObject    handle to push19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=19;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 19')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push20.
function push20_Callback(hObject, eventdata, handles)
% hObject    handle to push20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=20;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 20')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push21.
function push21_Callback(hObject, eventdata, handles)
% hObject    handle to push21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=21;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 21')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push22.
function push22_Callback(hObject, eventdata, handles)
% hObject    handle to push22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=22;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 22')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push23.
function push23_Callback(hObject, eventdata, handles)
% hObject    handle to push23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=23;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 23')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push24.
function push24_Callback(hObject, eventdata, handles)
% hObject    handle to push24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=24;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 24')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push25.
function push25_Callback(hObject, eventdata, handles)
% hObject    handle to push25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=25;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 25')
set(handles.betdisp,'String',s1text)
% --- Executes on button press in push26.
function push26_Callback(hObject, eventdata, handles)
% hObject    handle to push26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=26;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 26')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push27.
function push27_Callback(hObject, eventdata, handles)
% hObject    handle to push27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=27;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 27')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push28.
function push28_Callback(hObject, eventdata, handles)
% hObject    handle to push28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=28;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 28')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push29.
function push29_Callback(hObject, eventdata, handles)
% hObject    handle to push29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=29;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 29')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push30.
function push30_Callback(hObject, eventdata, handles)
% hObject    handle to push30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=30;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 30')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push4.
function push4_Callback(hObject, eventdata, handles)
% hObject    handle to push4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=4;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 4')
set(handles.betdisp,'String',s1text)


% --- Executes on button press in push5.
function push5_Callback(hObject, eventdata, handles)
% hObject    handle to push5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=5;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 5')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push6.
function push6_Callback(hObject, eventdata, handles)
% hObject    handle to push6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=6;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 6')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push7.
function push7_Callback(hObject, eventdata, handles)
% hObject    handle to push7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=7;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 7')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push8.
function push8_Callback(hObject, eventdata, handles)
% hObject    handle to push8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=8;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 8')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push9.
function push9_Callback(hObject, eventdata, handles)
% hObject    handle to push9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=9;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 9')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push10.
function push10_Callback(hObject, eventdata, handles)
% hObject    handle to push10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=10;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 10')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push11.
function push11_Callback(hObject, eventdata, handles)
% hObject    handle to push11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=11;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 11')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push12.
function push12_Callback(hObject, eventdata, handles)
% hObject    handle to push12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=12;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 12')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push31.
function push31_Callback(hObject, eventdata, handles)
% hObject    handle to push31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=31;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 31')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push32.
function push32_Callback(hObject, eventdata, handles)
% hObject    handle to push32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=32;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 32')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push33.
function push33_Callback(hObject, eventdata, handles)
% hObject    handle to push33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=33;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 33')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pusheve.
function pusheve_Callback(hObject, eventdata, handles)
% hObject    handle to pusheve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=200;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' EVE')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in pushbla.
function pushbla_Callback(hObject, eventdata, handles)
% hObject    handle to pushbla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=400;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' BLK')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in pushred.
function pushred_Callback(hObject, eventdata, handles)
% hObject    handle to pushred (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=500;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' RED')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in pushodd.
function pushodd_Callback(hObject, eventdata, handles)
% hObject    handle to pushodd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=300;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' ODD')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in pushbutton52.
function pushbutton52_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton52 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton53.
function pushbutton53_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton53 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nameplayer_Callback(hObject, eventdata, handles)
% hObject    handle to nameplayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nameplayer as text
%        str2double(get(hObject,'String')) returns contents of nameplayer as a double




% --- Executes during object creation, after setting all properties.
function nameplayer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nameplayer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function amt_Callback(hObject, eventdata, handles)
% hObject    handle to amt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amt as text
%        str2double(get(hObject,'String')) returns contents of amt as a double


% --- Executes during object creation, after setting all properties.
function amt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PR_Callback(hObject, eventdata, handles)
% hObject    handle to PR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PR as text
%        str2double(get(hObject,'String')) returns contents of PR as a double


% --- Executes during object creation, after setting all properties.
function PR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push1.
function push1_Callback(hObject, eventdata, handles)
% hObject    handle to push1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=1;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 1')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push2.
function push2_Callback(hObject, eventdata, handles)
% hObject    handle to push2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=2;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 2')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push3.
function push3_Callback(hObject, eventdata, handles)
% hObject    handle to push3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=3;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 3')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push0.
function push0_Callback(hObject, eventdata, handles)
% hObject    handle to push0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=0;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 0')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push34.
function push34_Callback(hObject, eventdata, handles)
% hObject    handle to push34 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=34;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 34')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push35.
function push35_Callback(hObject, eventdata, handles)
% hObject    handle to push35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=35;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 35')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in push36.
function push36_Callback(hObject, eventdata, handles)
% hObject    handle to push36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=36;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' 36')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in pushplay.
function pushplay_Callback(hObject, eventdata, handles)
% hObject    handle to pushplay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x1 = randi ([0,36],1,5);        %generating % random nuber between 0 to 36
y = randi ([1,5],1);            %generate 1 rand number and select yth x1 number
rn = x1(y);                     %the actual number,
load rm.mat
lnrm = length(rmn);
rmn(lnrm+1)=rn;
save rm.mat rmn

xx(1) = get(handles.D50,'Value');
xx(2) = get(handles.D10,'Value');
xx(3) = get(handles.D5,'Value');
xx(4) = get(handles.D2,'Value');
xx(5) = get(handles.D1,'Value');

bet = xx(1)*50 + xx(2)*10 + xx(3)*5 + xx(4)*2 + xx(5)*1;

if bet == 0;
    errordlg('Please select chip value from the bottom of the screen','Select chip value')
else 

amount = str2num(get(handles.amt,'String'));
bx = getappdata(handles.figure1,'QW');
ln = length(bx);
betam = amount -(ln * bet);

if betam < 0;
    errordlg('amount bet is more than balance','Select less bets')
    bx = getappdata(handles.figure1,'QW');
    clear bx; 
    setappdata(handles.figure1,'QW',bx)
else
   set(handles.betplaced,'String',num2str(bet*(ln))); 
    no = [32,15,19,4,21,2,25,17,34,6,27,13,36,11,30,8,23,10,5,24,16,33,1,20,14,31,9,22,18,29,7,28,12,35,3,26,0];
 I = imread('wheel.png');
 B1 = imread('ball.png');
for i = 1:36
    I1 = imrotate(I,9.7297*i,'crop');
    B = imrotate(B1,-9.7297*i*3,'crop');
    J = imfuse(I1,B,'blend','Scaling','joint');
    axes(handles.axes2);
    imshow(J);
    pause(0.000005)
end
for i = 1:26
    I1 = imrotate(I,9.7297*i,'crop');
    B = imrotate(B1,-9.7297*i,'crop');
    J = imfuse(I1,B,'blend','Scaling','joint');
    axes(handles.axes2);
    imshow(J);
    pause(0.005)
end
for i = 27:36
    I1 = imrotate(I,9.7297*i,'crop');
    B = imrotate(B1,-9.7297*i,'crop');
    J = imfuse(I1,B,'blend','Scaling','joint');
    axes(handles.axes2);
    imshow(J);
    pause(0.05)
end

n = 2;k1=1;
while n > 0 
    
    B = imrotate(B1,-9.7297*k1,'crop');
    I1 = I;
    J = imfuse(I1,B,'blend','Scaling','joint');
    axes(handles.axes2);
    imshow(J);
    pause(0.05)
    if no(k1) == rn;
    n = 0;
    end
        if k1 <= 37;
            k1 = 1+k1;
        else k1 = 1;
            k1=1+k1;
        end
end

%Decider
bx = getappdata(handles.figure1,'QW');
    wc = 0;
    beo=0;br=0;block=0;
for i = 1:length(bx)
            if rn == bx(i);
                wc = wc +1;  
            end
            if bx(i) == 101;  
                if rn <= 12; block = 1 ; end
            end
            if bx(i) == 102; 
                if rn >= 13 && rn <= 24 ; block = 1; end
            end
            if bx(i) == 103;  
                if rn >= 25 ; block = 1; end
            end
            if bx(i) == 200;
            if mod(rn,2) == 0;if rn>0; beo = 1
                end;end;end;
            if bx(i) == 300; 
            if mod(rn,2) > 0; if rn>0; beo = 1 
                end; end; end;
            if bx(i) == 400; 
            if mod(rn,2) == 0; if rn>0; br = 1 
                end; end;end
            if bx(i) == 500; 
            if mod(rn,2) > 0; if rn>0; br = 1 
                end; end;end;
end


 wol = wc*36*bet + (block*bet+block*bet*2) + beo*bet*2 + br*bet*2;
amount = amount - ((length(bx))*bet) + wc*36*bet + (block*bet+block*bet*2) + beo*bet*2 + br*bet*2;
set(handles.amt,'String',num2str(amount));


end

load wl.mat
if wol >= ((length(bx))*bet);
    lnwl = length(wl); wl(lnwl+1)= 'W'; save wl.mat wl
else 
    lnwl = length(wl); wl(lnwl+1)= 'L'; save wl.mat wl
end
wl1 = fliplr(wl);
set(handles.wl,'String',num2str(wl1));

load rm.mat
rmn1 = fliplr(rmn);
set(handles.prnumbers,'String',num2str(rmn1));

end


% --- Executes on button press in pushbutton66.
function pushbutton66_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton66 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in D10.
function D10_Callback(hObject, eventdata, handles)
% hObject    handle to D10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of D10


% --- Executes on button press in D1.
function D1_Callback(hObject, eventdata, handles)
% hObject    handle to D1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of D1


% --- Executes on button press in D2.
function D2_Callback(hObject, eventdata, handles)
% hObject    handle to D2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of D2


% --- Executes on button press in D5.
function D5_Callback(hObject, eventdata, handles)
% hObject    handle to D5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of D5


% --- Executes on button press in D50.
function D50_Callback(hObject, eventdata, handles)
% hObject    handle to D50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of D50

% --- Executes on button press in onethird1.
function onethird1_Callback(hObject, eventdata, handles)
% hObject    handle to onethird1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=101;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' B1')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in onethird2.
function onethird2_Callback(hObject, eventdata, handles)
% hObject    handle to onethird2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=102;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' B2')
set(handles.betdisp,'String',s1text)

% --- Executes on button press in onethird3.
function onethird3_Callback(hObject, eventdata, handles)
% hObject    handle to onethird3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
ln = length(bx); ln = ln+1;
bx(ln)=103;
setappdata(handles.figure1,'QW',bx);
stext = get(handles.betdisp,'String')
s1text = strcat(stext,' B3')
set(handles.betdisp,'String',s1text)


% --- Executes on button press in rebet.
function rebet_Callback(hObject, eventdata, handles)
% hObject    handle to rebet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bx = getappdata(handles.figure1,'QW');
bx = [];a= 'select bets';
setappdata(handles.figure1,'QW',bx)
set(handles.betdisp,'String',bx);


% --- Executes on button press in pushbutton73.
function pushbutton73_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton73 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(dispmain)
