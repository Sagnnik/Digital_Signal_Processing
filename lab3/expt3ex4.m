clc;
clear all;
close all;

Fs = 1000;
t = 0:1/Fs:1;
x = sin(2*pi*30*t)+sin(2*pi*80*t)+sin(2*pi*120*t);
X = fft(x);
l = length(x);
f = (0:(l-1))*Fs/(2*l);

subplot(211), plot(t,x), title('Multi-tone Signal'), xlabel('Time'), ylabel('Amplitude');
subplot(212), plot(f, abs(X(1:l))); zoom on;
title('Magnitude Response'), ylabel('Amplitude');