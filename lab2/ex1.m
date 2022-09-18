clc;
clear all;
close all;
n = 0:15; %time index for the discrete signal from 0 to 15
u=[(n)>=0]; %unit step
u5 = [(n-5)>=0]; %delayed step
a5=5*u; %scaled unit step
xn=u-u5; %rectangular window
xr=n.*u; %ramp signal
subplot(3,2,1), stem(n, u), title('Unit Step Function'); ylabel=('Amplitude');
subplot(3,2,2), stem(n, u5), title('Delayed Unit step function');
subplot(3,2,3), stem(n, a5), title('Amplitude Scaled step functiom'); ylabel=('Amplitude');
subplot(3,2,4), stem(n, xn), title('Window function'); ylabel=('x[n]'); xlabel=('n-->');
subplot(3,2,5), stem(n, xr), title('Ramp function'); ylabel=('Amplitude'); xlabel=('n-->');


