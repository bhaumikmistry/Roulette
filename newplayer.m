function varargout = newplayer(varargin)
% NEWPLAYER MATLAB code for newplayer.fig
%      NEWPLAYER, by itself, creates a new NEWPLAYER or raises the existing
%      singleton*.
%
%      H = NEWPLAYER returns the handle to a new NEWPLAYER or the handle to
%      the existing singleton*.
%
%      NEWPLAYER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWPLAYER.M with the given input arguments.
%b = 
%      NEWPLAYER('Property','Value',...) creates a new NEWPLAYER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newplayer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newplayer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newplayer

% Last Modified by GUIDE v2.5 11-Mar-2016 15:04:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newplayer_OpeningFcn, ...
                   'gui_OutputFcn',  @newplayer_OutputFcn, ...
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


% --- Executes just before newplayer is made visible.
function newplayer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newplayer (see VARARGIN)

% Choose default command line output for newplayer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newplayer wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global a b 
a=0;
b=0;


% --- Outputs from this function are returned to the command line.
function varargout = newplayer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function name_Callback(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of name as text
%        str2double(get(hObject,'String')) returns contents of name as a double


% --- Executes during object creation, after setting all properties.
function name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function money_Callback(hObject, eventdata, handles)
% hObject    handle to money (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of money as text
%        str2double(get(hObject,'String')) returns contents of money as a double


% --- Executes during object creation, after setting all properties.
function money_CreateFcn(hObject, eventdata, handles)
% hObject    handle to money (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

nm = get(handles.name,'String');
am = (get(handles.money,'String'));

save namemoney.mat nm am
clear nm am 


close newplayer;
dispmain


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nm = get(handles.name,'String');
am = (get(handles.money,'String'));

save namemoney.mat nm am
clear nm am 


close newplayer;
test


