clc;
clear all;
close all;

n = 0:5;
x = cos(n*pi/2);
y = 3.^n;
clin = conv(x,y);
ccirc = cconv(x,y,11);
x1 = [x zeros(1,11-length(x))];
y1 = [y zeros(1,11-length(y))];
clin2 = ifft(fft(x1).*fft(y1));
subplot(311), stem(clin), title('Linear Convolution');
subplot(312), stem(ccirc), title('Circular Convolution');
subplot(313), stem(clin2), title('Linear Convolution using Circular Convolution');;