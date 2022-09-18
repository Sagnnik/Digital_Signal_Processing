clc; 
clear all; 
close all;

b = [1 0.5]; 
a = [1 -1.8 0.81];

% To obtain system function in the partial fraction form
[r p k]=residuez(b,a);  
disp(['r = ' num2str(r')]);
disp(['p = ' num2str(p')]);
disp(['k = ' num2str(k')]);

% To obtain The pole – zero plot
[z p k] = tf2zp(b,a);
disp('Zeros are at'); disp(z); 
disp('poles are at'); disp(p); 
disp('Gain Constant is'); disp(k);
zplane(b,a);

% To obtain frequency response of the system
N = 512;
[h w] = freqz(b,a,N);
figure;
subplot(211), plot(w,abs(h)), title('Magnitude Response');
xlabel('Frequency in radians'), ylabel('Amplitude'); 
subplot(212), plot(w, angle(h)), title('Phase Response'); 
xlabel('Frequency in radians'), ylabel('Phase in radians');

% To Obtain the unit impulse response of the system
L = 30;
[y n] = impz(b,a,L);
figure;
stem(y), title('Impulse Response, h[n]'); 
grid on;
xlabel('Sample Number'), ylabel('Amplitude');

% To find the output of the system for the given input
n = 0:100;
u = [n>=0];
x = 3*cos(n*pi/3).*u;
y = filter(b, a, x);
figure;
subplot(211), plot(n,x);
subplot(212), plot(n,y);
