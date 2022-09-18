clc;
clear all;
close all;

a = [1 -5 10 ];
b = [10 -5 1];
N = 1000;
[h w] = freqz(b,a,N);
subplot(1,2,1), plot(w,abs(h));
title('Magnitude Response'), xlabel('w(Radians)'), ylabel('Angle');