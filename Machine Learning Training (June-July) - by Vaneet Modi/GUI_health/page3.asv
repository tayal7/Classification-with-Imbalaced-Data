function varargout = page3(varargin)
% PAGE3 MATLAB code for page3.fig
%      PAGE3, by itself, creates a new PAGE3 or raises the existing
%      singleton*.
%
%      H = PAGE3 returns the handle to a new PAGE3 or the handle to
%      the existing singleton*.
%
%      PAGE3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PAGE3.M with the given input arguments.
%
%      PAGE3('Property','Value',...) creates a new PAGE3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before page3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to page3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help page3

% Last Modified by GUIDE v2.5 21-Jun-2018 12:37:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @page3_OpeningFcn, ...
                   'gui_OutputFcn',  @page3_OutputFcn, ...
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


% --- Executes just before page3 is made visible.
function page3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to page3 (see VARARGIN)

% Choose default command line output for page3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes page3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = page3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ds=load('dsarray1.mat');
ds.a1;
datasetb=load('datasetb.mat');
datasetb.b;
for i=1:1:(b-1)
    a1{i,1}=a1{i,1}+round(random('Uniform',10,12));
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
normal=load('normal1.mat');
normal.anorm;
notnormal=load('notnormal1.mat');
notnormal.annorm;
pdiff = normal-notnormal;
pdiffper=(60*normal)/100;

flag=0;
b=1;
if pdiff>pdiffper
    for j=1:50:normal
        for k=1:1:50
            anorm{k,1}=anorm{k,1}+111;
            normal=normal-1;
            notnormal=notnormal+1;
            ndiff = normal-notnormal;
            ndiffper=(60*normal)/100;
            if ndiff>ndiffper
                continue;
            else 
                break;
            end
        end
        flag=flag+1;
    end
end



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

gg=load('fff.mat');
gg.FT1;
sumvar=load('svar.mat');
sumvar.sum;
save('devia.mat');
stdeviation=load('devia.mat');
stdeviation.stndev;
for i=1:1:800
    if 110<=FT1{1,4}(i)<=150
    disp('old');
    disp(FT1{1,4}(i));
        FT1{1,4}(i)=stndev+FT1{1,4}(i); 
    disp('new');
    disp(FT1{1,4}(i));
    end
end

sum2=0;
for i=1:1:800
    %array{a,1} = FT1{1,4}(i);
    %a=a+1;
    sum2=sum2+FT1{1,4}(i);
end
mean2=sum2/800;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
svf1=load('oversf1.mat');
svf1.sfinal1;
svf2=load('oversf2.mat');
svf2.sfinal2;
bcount1=load('cont1.mat');
bcount1.count1;
bcount2=load('cont2.mat');
bcount2.count2;
varb=load('bvar.mat');
varb.b;
varc=load('cvar.mat');
varc.c;
sfinal3=20:1;
if count1>count2
    for i=1:1:count1
    r = round(random('Uniform',1,10));
    if r<=5
        sfinal3{b,1}=sfinal1{b,1}-r;
    else
        sfinal3{b,1}=sfinal1{b,1}+r;
    end
    b=b+1;
    end
else
    for i=1:1:count2
    r = round(random('Uniform',1,10));
    if r<=5
        sfinal3{c,1}=sfinal2{c,1}-r;
    else
        sfinal3{c,1}=sfinal2{c,1}+r;
    end
    c=c+1;
    end
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
noisyvarb=load('noisybvar.mat');
noisyvarb.b;
noisyvarc=load('noisycvar.mat');
noisyvarc.c;
nda1=load('noisya1.mat');
nda1.a1;
nda2=load('noisya2.mat');
nda2.a2;
for i=1:1:(b-1)
    a1{i,1}=a1{i,1}+round(random('Uniform',1,11));
end

for i=1:1:(c-1)
    a2{i,1}=a2{i,1}-round(random('Uniform',1,11));
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

gg=load('fff.mat');
gg.FT1;
bord=load('valborder.mat');
bord.normal;
for i=1:1:800
    val=FT1{1,4}(i);
    if val == normal
        val=val+1;
    end
end
% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
page2
