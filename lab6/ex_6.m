clc;
clear all;
close all;

%digital filter specifications
wp=30;
ws=40;
rp=1;
rs=30;
T=0.01;

%Butterworth filter design
[Nb, wcb] = buttord(wp, ws, rp, rs, 's');
[bb_s, ab_s] = butter(Nb, wcb, 's');
disp('b :'), disp(bb_s);
disp('a :'), disp(ab_s);
disp('For Butterworth, the order and cut off frequency are '), disp( Nb),disp(wcb);
[Hb,wb] = freqs(bb_s,ab_s);

%Transformation from Analog to Digital using Impulse Invariance
[bb_z, ab_z] = impinvar(bb_s,ab_s,1/T);
[Hbd, wbd] = freqz(bb_z,ab_z); % Digital freq. response 
figure(1); plot(wbd/pi,20*log10(abs(Hbd))),grid on; 
xlabel('Frequency in pi units'), ylabel('Magnitude in dB');

%Transformation from Analog to Digital using Bilinear
[bb_z2, ab_z2] = bilinear(bb_s,ab_s,1/T);
[Hbd2, wbd2] = freqz(bb_z2,ab_z2); % Digital freq. response 
figure(2); plot(wbd2/pi,20*log10(abs(Hbd2))),grid on; 
xlabel('Frequency in pi units'), ylabel('Magnitude in dB');