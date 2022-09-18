clc;
clear all;
close all;

N=5;
omegac=2*pi;
[z,p,k] = buttap(N);
p1 = p*omegac;
k1 = k*omegac^N;
B = real(poly(z)); 
b0 = k1;
b = k1*B;
a = real(poly(p1));
disp("b: "), disp(b);
disp("a: "), disp(a);