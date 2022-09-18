clc;
clear all;
close all;

n=20;
b=[5 0 0];
a=[1 -0.6 -0.16];
f=[1,zeros(1,n-1)];
h=filter(b,a,f);
N=0:1:n-1;
%stem(f); 
stem(N, h);
title('Unit Impulse Response, h[n]'), xlabel('n'), ylabel('Amplitude');