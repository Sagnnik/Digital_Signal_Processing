clc;
clear all;
close all;

n=0:10;

u=[(n)>=0];
u10=[(n-10)>=0];
u5=[(n-5)>=0];
h=power(0.5,n).*(u-u10);
del=[n==0];
del1=[(n-1)==0];
del3=[(n-3)==0];
x1=power(0.8,n).*(u-u5);
x2=del+(3*del1)+(4*del3);

a=conv(h,x1);
b=conv(h,x2);

subplot(2,1,1), stem(a);
subplot(2,1,2), stem(b);