function varargout = Decodeeer(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Decodeeer_OpeningFcn, ...
                   'gui_OutputFcn',  @Decodeeer_OutputFcn, ...
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
function Decodeeer_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = Decodeeer_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function one_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=697; f_high=1209;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise'); %it is function which store the input from a function and it can be used in other functions.
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function two_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=697; f_high=1336;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)


function three_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=697; f_high=1477;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function four_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=770; f_high=1209;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function five_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=770; f_high=1336;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function six_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=770; f_high=1477;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function seven_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=852; f_high=1209;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function eight_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=852; f_high=1336;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function nine_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=852; f_high=1477;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function staric_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=941; f_high=1209;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function zero_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=941; f_high=1336;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise'); %it is function which store the input from a function and it can be used in other functions.
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function hash_Callback(hObject, eventdata, handles)
clc
fs=8000;
t=0:1/fs:0.1;
N=5000;
f_low=941; f_high=1477;
y1=sin(2*pi*f_low*t);
y2=sin(2*pi*f_high*t);
y=y1+y2;
wavplay(y,fs);

w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y,N));
axes(handles.axes1);
plot(w,abs(H));
title('DTMF Input');xlabel('f(Hz)');
ylabel('Amplitude');grid;

x=getappdata(0,'Noise');
y1=awgn(y,x);
w=linspace(-fs/2,fs/2,N);
H=fftshift(fft(y1,N));
axes(handles.axes2);
plot(w,abs(H), 'r');
title('FFT ');grid;
xlabel('f(Hz)');ylabel('Amplitude');
r=filtered(y1);
disp(r)

function noise_Callback(hObject, eventdata, handles)
x=str2double(get(handles.noise, 'String' ));
setappdata(0,'Noise',x);
function noise_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function info_Callback(hObject, eventdata, handles)
msgbox('File was created by :                                                        Syed Abuzar                                                                 Comsats Abbottabad                                                      Reg # SP15-BEE-096                                                                              Submitted To : Mam Rabya','Info','warn')
function Close_Callback(hObject, eventdata, handles)
close;
