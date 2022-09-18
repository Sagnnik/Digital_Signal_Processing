clc;
close all;
clear all;
z=input('Input Zeros');
p=input('Input Poles');
k=input('Input Gain Constant');
[b a]=zp2tf(z,p,k);
disp('b'), disp(b);
disp('a'), disp(a);