clc;
clear all;
close all;

n=-10:10;
u=[(n)>=0];
u3 = [(n-3)>=0];
x=u-u3;
y=1*sin((1/3)*pi*n).*u;
z=power(0.5,n).*exp(j*n*pi*0.5);

subplot(4,1,1), stem(n,x);
subplot(4,1,2), stem(n,y);
subplot(4,1,3), stem(n,abs(z));
subplot(4,1,4), stem(n,angle(z));