clc;
clear all;
close all;

a = [1 -5 10];
b = [10 -5 1];
N = 512;
[h w] = freqz(b,a,N);
plot(w, abs(h)), title('Magnitude Response');