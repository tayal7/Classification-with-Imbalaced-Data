function varargout = page2(varargin)
% PAGE2 MATLAB code for page2.fig
%      PAGE2, by itself, creates a new PAGE2 or raises the existing
%      singleton*.
%
%      H = PAGE2 returns the handle to a new PAGE2 or the handle to
%      the existing singleton*.
%
%      PAGE2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PAGE2.M with the given input arguments.
%
%      PAGE2('Property','Value',...) creates a new PAGE2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before page2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to page2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help page2

% Last Modified by GUIDE v2.5 22-Jun-2018 11:41:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @page2_OpeningFcn, ...
                   'gui_OutputFcn',  @page2_OutputFcn, ...
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


% --- Executes just before page2 is made visible.
function page2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to page2 (see VARARGIN)

% Choose default command line output for page2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes page2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = page2_OutputFcn(hObject, eventdata, handles) 
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
HealthGUI


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file1 = fopen('C:\Users\Lappi\Desktop\VM_Clustering\DIABETES HEALTH PROBLEM_1\data-01 - Copy.txt');
FT1 = textscan(file1, '%s%s%d%d', 817, 'delimiter', '\t');
fclose(file1);
celldisp(FT1);
save('fff.mat');
gg=load('fff.mat');
gg.FT1;
% -------------------------------------------1
%arrays
anorm=816:1;
annorm=816:1;

% count variable
normal=0;
notnormal=0;

a=1;
b=1;

for i=1:1:816
    if FT1{1,4}(i)>110 %not-normal
        notnormal = notnormal+1;
        annorm{a,1}=FT1{1,4}(i);
        a=a+1;
    else 
        normal = normal+1;
        anorm{b,1}=FT1{1,4}(i);
        b=b+1;
    end
end
save('normal1.mat');
normal=load('normal1.mat');
normal.anorm;
save('notnormal1.mat');
notnormal=load('notnormal1.mat');
notnormal.annorm;

if a>b
    text1 = 'Small Disjuncts';
    set(handles.text4,'String',text1);
end

%---------------------------------------------2
sum=0;

for i=1:1:800
    %array{a,1} = FT1{1,4}(i);
    %a=a+1;
    sum=sum+FT1{1,4}(i);
end

mean=sum/800;
varsum=0;

for i=1:1:800
    if 110<=FT1{1,4}(i)<=150
        diff=(FT1{1,4}(i)-mean)^2;
        varsum = varsum + diff;
    end
end

var1 = (varsum/50);

isqrt = @(x) int32(sqrt(double(x))); %helper function
stndev = isqrt(var1);
save('svar.mat');
sumvar=load('svar.mat');
sumvar.sum;
save('devia.mat');
stdeviation=load('devia.mat');
stdeviation.stndev;

if stndev>(0.60*mean)
    currString= get(handles.text4,'String');
currString{end+1}='Lack of density';
set(handles.text4,'String',currString);
end

%----------------------------------------------3
a=1;
b=1;
c=1;

count1=0;
count2=0;

array=800:1;
sfinal1=20:1;
sfinal2=20:1;
sfinal3=20:1;

for i=1:1:800
    array{a,1}=FT1{1,4}(i);
    a=a+1;
end


for i=1:1:800
    if 110<=array{i,1} && array{i,1}<=115
        sfinal1{b,1}=array{i,1};
        b=b+1;
        count1=count1+1;
    end
    if 130<=array{i,1} && array{i,1}<=135
        sfinal2{c,1}=array{i,1};
        c=c+1;
        count2=count2+1;
    end
end
save('oversf1.mat');
svf1=load('oversf1.mat');
svf1.sfinal1;
save('oversf2.mat');
svf2=load('oversf2.mat');
svf2.sfinal2;
save('cont1.mat');
bcount1=load('cont1.mat');
bcount1.count1;
save('cont2.mat');
bcount2=load('cont2.mat');
bcount2.count2;
save('bvar.mat');
varb=load('bvar.mat');
varb.b;
save('cvar.mat');
varc=load('cvar.mat');
varc.c;

if count1>6 || count2>6
    
    currString= get(handles.text4,'String');
currString{end+1}='Overlapping';
set(handles.text4,'String',currString);
end
%---------------------------------------4
a1=40:1;
a2=40:1;
b=1;
c=1;

for i=1:1:800
    if FT1{1,4}(i)>= 110 && FT1{1,4}(i)<= 120
        a1{b,1}=FT1{1,4}(i);
        b=b+1;
    end
    if FT1{1,4}(i)>= 130 && FT1{1,4}(i)<= 140
        a2{c,1}=FT1{1,4}(i);
        c=c+1;
    end
end
save('noisybvar.mat');
noisyvarb=load('noisybvar.mat');
noisyvarb.b;
save('noisycvar.mat');
noisyvarc=load('noisycvar.mat');
noisyvarc.c;
save('noisya1.mat');
nda1=load('noisya1.mat');
nda1.a1;
save('noisya2.mat');
nda2=load('noisya2.mat');
nda2.a2;

if b>12 || count2>12
    currString= get(handles.text4,'String');
    currString{end+1}='Noisy Data';
    set(handles.text4,'String',currString);
end
%-------------------------------------5

normal = 110;
run=0;
for i=1:1:800
    val=FT1{1,4}(i);
    if val == normal && run<1
        run=run+2;
        currString= get(handles.text4,'String');
        currString{end+1}='Borderline';
        set(handles.text4,'String',currString);
    end
end
save('valborder.mat');
bord=load('valborder.mat');
bord.normal;
%--------------------------------------6
a1=40:1;
a2=40:1;
b=1;
c=1;

for i=1:1:800
    if FT1{1,4}(i)>= 105 && FT1{1,4}(i)<= 115
        a1{b,1}=FT1{1,4}(i);
        b=b+1;
    end
end
save('dsarray1.mat');
ds=load('dsarray1.mat');
ds.a1;
save('datasb.mat');
datasetb=load('datasetb.mat');
datasetb.b;
if b>10
        currString= get(handles.text4,'String');
currString{end+1}='Dataset shift';
set(handles.text4,'String',currString);
end
