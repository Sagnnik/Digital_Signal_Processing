clc; clear all; close all;
w = [0:1:500]*pi/500; % defining 501 values of radian frequency ? in the range 0 to ?
x = exp(j*w)./(exp(j*w)-0.5); subplot(121)
plot(w, abs(x)), title('Magnitude response'), xlabel('w'), ylabel('Amplitude');
subplot(122), plot(w,angle(x));
title('Phase Response'), xlabel('w(radians)'), ylabel('Angle');