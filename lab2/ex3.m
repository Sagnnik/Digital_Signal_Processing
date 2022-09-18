clc;
clear all;
close all;
n = 0:15;

u=[(n)>=0]; %unit step
u5 = [(n-5)>=0]; %delayed step

x=u-u5;
y=n.*x;

subplot(3,1,1), stem(n, x);
title('Rectangular window');
subplot(3,1,2), stem(n, y);
title('Ramp signal');

z=conv(x,y);
subplot(3,1,3), stem(z);
title('Convolution between both the signals');