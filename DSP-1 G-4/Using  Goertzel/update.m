
noisepower= str2double(get(handles.noise_power,'String')); 
noisepower = noisepower/2;
%%
axes(handles.y1) % Select the proper axes 
N=128; % Number of samples
n=0:N-1;
Fs=8000; % Sampling frequency 
w= noisepower; % The default value is '0'. This is to define noise power
np= noisepower*randn(1,N); % Function to generate random noise  
x=sin(2*pi*(flow/Fs)*n)+sin(2*pi*(fhigh/Fs)*n); % Generation of signal
x=x+np; % Signal with added noise
plot(x) % Ploting the Graph
title ('Time Domain'); % Title value
grid on; % Turns the grid on

%%
axes(handles.y2) % Select the proper axes 
[p,fn]=periodogram(x);
p=p/max(p);
plot(fn,p) % Plots
title ('Frequency Domain'); % Title value
grid on; % Turns the grid on

%%

axes(handles.goertzel) 
f = [697 770 852 941 1209 1336 1477]; 
Fs = 8000; 
N = 205;	
n=0:N-1; 
w= noisepower; 
np= noisepower*randn(1,N); 
x = sum(sin(2*pi*[flow;fhigh]*(n)/Fs))+np; 
k = round(f/Fs*N); 
xd = goertzel(x,k+1);   
ef = round(k*Fs/N); 
stem(ef,abs(xd)) 
xlabel('Frequency');
ylabel('Magnitude');
grid on; 


%%
maxVal = 0;

for i = 1:length(xd)
    if (maxVal < abs(max(xd(i))))
        maxVal = abs(max(xd(i)));
        tempindex = i;
        
    end
end
nonTemp1 = ef(tempindex);
xd(tempindex)=0;
maxVal = 0;

for i = 1:length(xd)
    if (maxVal < abs(max(xd(i))))
        maxVal = abs(max(xd(i)));
        tempindex = i;
    end
end

nonTemp2 = ef(tempindex);

% textstring= get(handles.box2,'string');
% textstring= strcat(textstring,int2str(nonTemp2));
% set(handles.box2,'string',textstring)

%%
storeTemp = 0;

if (nonTemp1 > nonTemp2)
    storeTemp = nonTemp2;
    nonTemp2 = nonTemp1;
    nonTemp1 = storeTemp;
end

%%
if (nonTemp1>=650 && nonTemp1<=720 && nonTemp2>= 1150 && nonTemp2<= 1250)
   textstring= get(handles.box2,'string');
   textstring= strcat(textstring,'1');
   set(handles.box2,'string',textstring) 
end

if (nonTemp1>=650 && nonTemp1<=720 && nonTemp2>= 1300 && nonTemp2<= 1370)
   textstring= get(handles.box2,'string');
   textstring= strcat(textstring,'2');
   set(handles.box2,'string',textstring) 
end

 if (nonTemp1>=650 && nonTemp1<=720 && nonTemp2>= 1420 && nonTemp2<= 1520)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'3');
   set(handles.box2,'string',textstring) 
 end
 
 if (nonTemp1>=740 && nonTemp1<=810 && nonTemp2>= 1170 && nonTemp2<= 1230)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'4');
   set(handles.box2,'string',textstring) 
 end
 
  if (nonTemp1>=740 && nonTemp1<=810 && nonTemp2>= 1300 && nonTemp2<= 1370)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'5');
   set(handles.box2,'string',textstring) 
  end
 
  if (nonTemp1>=740 && nonTemp1<=810 && nonTemp2>= 1420 && nonTemp2<= 1520)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'6');
   set(handles.box2,'string',textstring) 
  end
  
    if (nonTemp1>=820 && nonTemp1<=880 && nonTemp2>= 1150 && nonTemp2<= 1250)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'7');
   set(handles.box2,'string',textstring) 
    end
    
      if (nonTemp1>=820 && nonTemp1<=880 && nonTemp2>= 1300 && nonTemp2<= 1370)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'8');
   set(handles.box2,'string',textstring) 
      end
    
    if (nonTemp1>=820 && nonTemp1<=880 && nonTemp2>= 1420 && nonTemp2<= 1520)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'9');
    set(handles.box2,'string',textstring) 
    end
    
    
    if (nonTemp1>=920 && nonTemp1<=960 && nonTemp2>= 1150 && nonTemp2<= 1250)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'*');
    set(handles.box2,'string',textstring) 
    end
    
    if (nonTemp1>=920 && nonTemp1<=960 && nonTemp2>= 1300 && nonTemp2<= 1370)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'0');
    set(handles.box2,'string',textstring) 
    end
    
    if (nonTemp1>=920 && nonTemp1<=960 && nonTemp2>= 1420 && nonTemp2<= 1520)
    textstring= get(handles.box2,'string');
    textstring= strcat(textstring,'#');
    set(handles.box2,'string',textstring) 
    end
    
    %%
    
    
%     textstring= get(handles.box2,'string');
%     textstring= strcat(textstring,int2str(w));
%     set(handles.box2,'string',textstring) 