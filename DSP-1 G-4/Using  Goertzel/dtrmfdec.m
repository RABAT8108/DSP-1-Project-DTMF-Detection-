

function varargout = dtrmfdec(varargin)
% DTRMFDEC M-file for dtrmfdec.fig
%      DTRMFDEC, by itself, creates a new DTRMFDEC or raises the existing
%      singleton*.
%
%      H = DTRMFDEC returns the handle to a new DTRMFDEC or the handle to
%      the existing singleton*.
%
%      DTRMFDEC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DTRMFDEC.M with the given input arguments.
%
%      DTRMFDEC('Property','Value',...) creates a new DTRMFDEC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dtrmfdec_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dtrmfdec_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dtrmfdec

% Last Modified by GUIDE v2.5 10-Dec-2022 00:15:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dtrmfdec_OpeningFcn, ...
                   'gui_OutputFcn',  @dtrmfdec_OutputFcn, ...
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

% --- Executes just before dtrmfdec is made visible.
function dtrmfdec_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dtrmfdec (see VARARGIN)

% Choose default command line output for dtrmfdec
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dtrmfdec wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = dtrmfdec_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% Function for Key 1
function pushbutton1_Callback(hObject, eventdata, handles)
flow=697; fhigh=1209; % Standard frequencies for key 1
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'1');
set(handles.detbox,'string',textstring) % Displays 1 in the Detection Box
update % Reads the file update.m

% Function for Key 2
function pushbutton2_Callback(hObject, eventdata, handles)
flow=697; fhigh=1336; % Standard frequencies for key 2
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'2');
set(handles.detbox,'string',textstring) % Displays 2 in the Detection Box
update % Reads the file update.m

% Function for Key 3
function pushbutton3_Callback(hObject, eventdata, handles)
flow=697; fhigh=1477; % Standard frequencies for key 3
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'3');
set(handles.detbox,'string',textstring) % Displays 3 in the Detection Box
update % Reads the file update.m

% Function for Key 4
function pushbutton4_Callback(hObject, eventdata, handles)
flow=770; fhigh=1209; % Standard frequencies for key 4
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'4');
set(handles.detbox,'string',textstring) % Displays 4 in the Detection Box
update % Reads the file update.m

% Function for Key 5
function pushbutton5_Callback(hObject, eventdata, handles)
flow=770; fhigh=1336; % Standard frequencies for key 5
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'5');
set(handles.detbox,'string',textstring) % Displays 5 in the Detection Box
update % Reads the file update.m

% Function for Key 6
function pushbutton6_Callback(hObject, eventdata, handles)
flow=770; fhigh=1477; % Standard frequencies for key 6
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'6');
set(handles.detbox,'string',textstring) % Displays 6 in the Detection Box
update % Reads the file update.m

% Function for Key 7
function pushbutton7_Callback(hObject, eventdata, handles)
flow=852; fhigh=1209; % Standard frequencies for key 7
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'7');
set(handles.detbox,'string',textstring) % Displays 7 in the Detection Box
update % Reads the file update.m

% Function for Key 8
function pushbutton8_Callback(hObject, eventdata, handles)
flow=852; fhigh=1336; % Standard frequencies for key 8
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'8');
set(handles.detbox,'string',textstring) % Displays 8 in the Detection Box
update % Reads the file update.m

% Function for Key 9
function pushbutton9_Callback(hObject, eventdata, handles)
flow=852; fhigh=1477; % Standard frequencies for key 9
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'9');
set(handles.detbox,'string',textstring) % Displays 9 in the Detection Box
update % Reads the file update.m

% Function for Key *
function pushbutton10_Callback(hObject, eventdata, handles)
flow=941; fhigh=1209; % Standard frequencies for key *
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'*');
set(handles.detbox,'string',textstring) % Displays * in the Detection Box
update % Reads the file update.m

% Function for Key 0
function pushbutton11_Callback(hObject, eventdata, handles)
flow=941; fhigh=1336; % Standard frequencies for key 0
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'0');
set(handles.detbox,'string',textstring) % Displays 0 in the Detection Box
update % Reads the file update.m

% Function for Key #
function pushbutton12_Callback(hObject, eventdata, handles)
flow=941; fhigh=1477; % Standard frequencies for key #
textstring= get(handles.detbox,'string');
textstring= strcat(textstring,'#');
set(handles.detbox,'string',textstring) % Displays # in the Detection Box
update % Reads the file update.m

function detbox_Callback(hObject, eventdata, handles)
% hObject    handle to detbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of detbox as text
%        str2double(get(hObject,'String')) returns contents of detbox as a double

% --- Executes during object creation, after setting all properties.
function detbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to detbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
close; % Closes the window and return back to MATLAB command window

% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2

function noise_power_Callback(hObject, eventdata, handles)
%get the string for the editText component
sliderValue = get(handles.noise_power,'String');
 
%convert from string to number if possible, otherwise returns empty
sliderValue = str2num(sliderValue);
 
%if user inputs something is not a number, or if the input is less than 0
%or greater than 100, then the slider value defaults to 0
if (isempty(sliderValue) || sliderValue < 0 || sliderValue > 10)
    set(handles.slider1,'Value',0);
    set(handles.noise_power,'String','0');
else
    set(handles.slider1,'Value',sliderValue);
end

% --- Executes during object creation, after setting all properties.
function noise_power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noise_power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
sliderValue = get(handles.slider1,'Value'); %obtains the slider value from the slider component 
set(handles.noise_power,'String', num2str(sliderValue)); %puts the slider value into the edit text component
guidata(hObject, handles); % Update handles structure

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% Function for Reset
function reset_data_Callback(hObject, eventdata, handles)
set(handles.detbox,'String','') ; % Clears the data in the Detection Box
set(handles.noise_power,'String','0') % Sets noise power value to '0'(default)
cla(handles.y1,'reset') % Clears the Time Domain plot
cla(handles.y2,'reset') % Clears the Frequency Domain plot
cla(handles.goertzel,'reset') % Clears the Goertzel plot
set(handles.box2,'String','')


function box2_Callback(hObject, eventdata, handles)
% hObject    handle to box2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of box2 as text
%        str2double(get(hObject,'String')) returns contents of box2 as a double


% --- Executes during object creation, after setting all properties.
function box2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to box2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
    
 update;   
end
