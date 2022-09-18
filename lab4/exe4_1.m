clc;
close all;
clear all;

b=[1 0 -1];
a=[1 -6 9];
[r ,p ,k]=residuez(b, a);

L = 30;
[y,n] = impz(b,a,L);

figure;
stem(y), title('Impulse Response');
xlabel('sample Number'), ylabel('Amplitude');

[z ,p, k]=tf2zp(b, a);
disp('Zeros are at'); disp(z); 
disp('poles are at'); disp(p); 
disp('Gain Constant is'); disp(k);
zplane(b,a);

n=0:100;
u=[n>=0];
x=3*sin(n*pi*3).*u;
y = filter(b, a, x);
figure;
subplot(211), plot(n,x);
subplot(212), plot(n,y);