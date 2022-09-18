clc;
clear all;
close all;

x=[3,11,7,0,-1,4,2];

nx=-3:3;
ny=-1:5;

y1=x;
w=randn(1, length(y1));

y=y1+w;
nyb=ny(1)+nx(1);
nye = ny(length(y1))+nx(length(x));
ny=nyb:nye;
xcr=xcorr(x,y); %cross corelation
stem(ny, xcr);
title('Cross co-relation example');
xlabel=('Time, n');