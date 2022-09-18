clc;
clear all;
close all;

f=30;
T = 0:.0001:.0625;
t=2*pi*f*T;

x=sawtooth(t,0.25);
y=sawtooth(t,0.50);
z=sawtooth(t,0.75);

subplot(3,1,1), plot(x);
subplot(3,1,2), plot(y);
subplot(3,1,3), plot(z);

