function varargout = HealthGUI(varargin)
% HEALTHGUI MATLAB code for HealthGUI.fig
%      HEALTHGUI, by itself, creates a new HEALTHGUI or raises the existing
%      singleton*.
%
%      H = HEALTHGUI returns the handle to a new HEALTHGUI or the handle to
%      the existing singleton*.
%
%      HEALTHGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HEALTHGUI.M with the given input arguments.
%
%      HEALTHGUI('Property','Value',...) creates a new HEALTHGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HealthGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HealthGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HealthGUI

% Last Modified by GUIDE v2.5 20-Jun-2018 13:05:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HealthGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @HealthGUI_OutputFcn, ...
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


% --- Executes just before HealthGUI is made visible.
function HealthGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HealthGUI (see VARARGIN)

% Choose default command line output for HealthGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes HealthGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = HealthGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% ---------------------------
% fid = fopen('C:\Users\Lappi\Desktop\VM_Clustering\GUI_health\data-01 - Copy.txt');
% F = textscan(fid, '%s%s%d%d', 817, 'delimiter', '\t');
% save('fff.mat');
% gg=load('fff.mat');
% gg.F;
% fclose(fid);

[filename pathname] = uigetfile({'*.txt'},'File Selector');
fullpathname = strcat(pathname,filename);
text = fileread(fullpathname);
set(handles.text5,'String',fullpathname);
set(handles.text4,'String',text);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
page2


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

  handles = guidata(hObject);
  sliderValue = get(handles.slider1,'Value');
  set(handles.text4,'String',num2str(sliderValue));

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
