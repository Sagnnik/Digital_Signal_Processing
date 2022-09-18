clc;
clear all;
close all;

a = [1 0 0.268];
b = [0.634 0 0.634];
N = 512;
[h w] = freqz(b,a,N);
plot(w,abs(h)), title('Magnitude Response');