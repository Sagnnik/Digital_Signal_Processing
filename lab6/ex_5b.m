clc;
clear all;
close all;

%digital filter specifications
wp = 0.2*pi;
ws=0.3*pi;
rp=1;
rs=20;

%Analog design
T=1;
wa_p = wp/T;
wa_s = ws/T;

%Butterworth filter design
[Nb, wcb] = cheb1ord(wa_p, wa_s, rp, rs, 's');
[bb_s, ab_s] = cheby1(Nb,rp, wcb, 's');
disp('b :'), disp(bb_s);
disp('a :'), disp(ab_s);
disp('For Butterworth, the order and cut off frequency are '), disp( Nb),disp(wcb);
[Hb,wb] = freqs(bb_s,ab_s);

%Transformation from Analog to Digital
[bb_z, ab_z] = impinvar(bb_s,ab_s,1/T);
[Hbd, wbd] = freqz(bb_z,ab_z); % Digital freq. response 
figure(1); plot(wbd/pi,20*log10(abs(Hbd))),grid on; 
xlabel('Frequency in pi units'), ylabel('Magnitude in dB');