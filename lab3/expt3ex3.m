clc;
clear all;
close all;

n = 0:100;
u = power(0.9,n).*[(n)>=0];
rn = rand(1, length(n));
x = u+rn;
a =  [1 0 0];
b = [1/3 1/3 1/3];
N = 512;
[h w] = freqz(b,a,N);
subplot(311), plot(w,abs(h)), title('Magnitude Response'), xlabel('w(Radians)'), ylabel('Amplitude');
subplot(312), plot(n,x); title('Filter');
y = filter(b,a,x);
subplot(313), plot(n,y), title('Output');