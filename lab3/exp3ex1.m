clc;
clear all;
close all;

w = [0:1:4000]*pi/500;
X = exp(j*(w-pi/3))./(exp(j.*(w-pi/3))-0.9);

subplot(1,2,1);
plot(w,abs(X));
title('Magnitude Response');
xlabel('w'), ylabel('Amplitude');
subplot(1,2,2);
plot(w,angle(X));
title('Phase Response');