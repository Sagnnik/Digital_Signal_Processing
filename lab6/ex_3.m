clc;
clear all;
close all;

b=[0 1 1];
a=[1 5 6];
Fs=1;
[h_s, w_s] = freqs(b, a);
figure(1); plot(w_s/pi,20*log10(abs(h_s))),grid on;
title('Analog Filter');
xlabel('Frequency in pi units'), ylabel('Magnitude in dB');
[b_z, a_z] = bilinear(b, a, Fs);
[H, w] = freqz(b_z,a_z);
figure(1); plot(w/pi,20*log10(abs(H))),grid on;
title('Digital Filter');
xlabel('Frequency in pi units'), ylabel('Magnitude in dB');