clc;
clear all;
close all;

Fs=1000;
f=200;
t=0:1/Fs:(1/f);
x=5*sin(2*pi*f*t);

subplot(3,1,1), stem(t,x);
title('Sine wave sampled at 100Hz 1 period duration');
ylabel=('Amplitude');

Fs1=10000;
f=200;
t=0:1/Fs1:(1/f);

x=5*sin(2*pi*f*t);
subplot(3,1,2), stem(t,x);
title('Sine wave sampled at 10000 Hz for 1 period duration');
ylabel=('Amplitude');

Fs1=10000;
t=0:1/Fs1:(2/f);
x=5*sin(2*pi*f*t);
subplot(3,1,3), stem(t,x);
title('Sine wave sampled at 10000 Hz for 2 cycle duration');
ylabel=('Amplitude');
xlabel=('x-->');