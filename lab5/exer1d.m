clc;
clear all;
close all;

rp=1;
rs=50;
wp=2*pi*200;
ws=2*pi*700;

[N, wc] = ellipord(wp, ws, rp, rs, 's');
[b, a]=ellip(N,rp,rs,wp,'s');
[H, W]=freqs(b,a);
plot(W/(2*pi), 20*log10(abs(H))),grid on;
title('Frequency Response');
xlabel('Frequency in Hz'), ylabel('Magnitude in dB');
disp('The order and cutoff frequency in Hz are: '), disp(N), disp(wc/(2*pi));
disp('b: '), disp(b);
disp('a: '), disp(a);