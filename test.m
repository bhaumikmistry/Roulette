function varargout = test(varargin)
% TEST MATLAB code for test.fig
%      TEST, by itself, creates a new TEST or raises the existing
%      singleton*.
%
%      H = TEST returns the handle to a new TEST or the handle to
%      the existing singleton*.
%
%      TEST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST.M with the given input arguments.
%
%      TEST('Property','Value',...) creates a new TEST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test

% Last Modified by GUIDE v2.5 24-Feb-2016 22:00:07



% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test_OpeningFcn, ...
                   'gui_OutputFcn',  @test_OutputFcn, ...
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



% --- Executes just before test is made visible.
function test_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test (see VARARGIN)

% Choose default command line output for test
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

prompt = {'Enter Your Name'};
dlg_title = 'Name';
name = inputdlg(prompt,dlg_title,[1 50]);

prompt = {'Enter buy in amount'};
dlg_title = 'Amount';
amount = inputdlg(prompt,dlg_title,[1 50]);

   set(handles.text6, 'String', name);
   set(handles.text5, 'String', amount);
   setappdata(handles.figure1, 'String', amount);
cb = imread('cardback.png');
axes(handles.axes5);
imshow(cb)
axes(handles.axes3);
imshow(cb)
axes(handles.axes1);
imshow(cb)
axes(handles.axes6);
imshow(cb)
axes(handles.axes4);
imshow(cb)
axes(handles.axes2);
imshow(cb)



% UIWAIT makes test wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in push.
function push_Callback(hObject, eventdata, handles)
% hObject    handle to push (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%clear all;
%clc;

[PL1WIN, PL2WIN,lp11,lp12,lp13,lp21,lp22,lp23] = poker;
setappdata(handles.figure1,'PL1WIN',PL1WIN);
setappdata(handles.figure1,'PL2WIN',PL2WIN);
setappdata(handles.figure1,'lp11',lp11);
setappdata(handles.figure1,'lp12',lp12);
setappdata(handles.figure1,'lp13',lp13);



% axes(handles.axes5);
% imshow(lp11)
% axes(handles.axes3);
% imshow(lp12)
% axes(handles.axes1);
% imshow(lp13)

cb = imread('cardback.png');
axes(handles.axes5);
imshow(cb);
axes(handles.axes3);
imshow(cb);
axes(handles.axes1);
imshow(cb);
axes(handles.axes6);
imshow(cb);
axes(handles.axes4);
imshow(cb);
axes(handles.axes2);
imshow(cb);

pause(0.25)
axes(handles.axes6);
imshow(lp21);
pause(0.25)
axes(handles.axes4);
imshow(lp22);
pause(0.25)
axes(handles.axes2);
imshow(lp23);



   
  
   


   
   


% --- Executes on button press in pushbutton3.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = get(handles.edit1,'String'); %edit1 being Tag of ur edit box
disp(x);
x = str2num(x);
class(x)
xxx = char( get(handles.text5,'string'));
disp(xxx);
xxx = str2num(xxx);
class(xxx)
PL1WIN = getappdata(handles.figure1,'PL1WIN');
PL2WIN = getappdata(handles.figure1,'PL2WIN');
lp11 = getappdata(handles.figure1,'lp11');
lp12 = getappdata(handles.figure1,'lp12');
lp13 = getappdata(handles.figure1,'lp13');

pause(0.25)
axes(handles.axes5);
 imshow(lp11);
pause(0.25)
 axes(handles.axes3);
 imshow(lp12);
pause(0.25)
 axes(handles.axes1);
 imshow(lp13);
    



    if (PL2WIN == PL1WIN);
         a = ('split')       ;
    elseif (PL2WIN > PL1WIN);
       xxx1 = xxx + x;
       xxx= num2str(xxx1);
       set(handles.text5, 'String', xxx);
       if PL2WIN == 6;
           a = ('player two win with three of a kind cards')       ;
       elseif PL2WIN == 5;
           a = ('player two win with royal straight cards')           ;
       elseif PL2WIN == 4;
           a = ('player two win with straight cards');
       elseif PL2WIN == 3;
           a = ('player two win with color cards');
       elseif PL2WIN == 2;
           a = ('player two win with two of a kind cards');
       elseif PL2WIN == 1;
           a = ('player two win with high cards');
       end
   elseif (PL2WIN < PL1WIN);
       xxx1 = xxx - x; 
       xxx= num2str(xxx1);
       set(handles.text5, 'String', xxx);
       if PL1WIN == 6; 
           a = ('player one win with three of a kind cards')       ;
       elseif PL1WIN == 5;
           a = ('player one win with royal straight cards')           ;
       elseif PL1WIN == 4;
           a = ('player one win with straight cards');
       elseif PL1WIN == 3;
           a = ('player one win with color cards');
       elseif PL1WIN == 2;
           a = ('player one win with two of a kind cards');
       elseif PL1WIN == 1;
           a = ('player one win with high cards');
       end 
   else      
   end
    set(handles.text1, 'String', a);


 
 

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

close(test);


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cb = imread('cardback.png');
axes(handles.axes6);
imshow(cb)
axes(handles.axes4);
imshow(cb)
axes(handles.axes2);
imshow(cb)
