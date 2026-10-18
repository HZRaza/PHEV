clc
clear all
close all

p = 684;
vin = 178;
vout = 54;
fs = 20e3;
iout = p/vout;
delil = 0.25*iout;
delvout= 0.01*vout;
d = vout/vin
l = (d*(vin - vout)/ (delil*fs))
c = delil/ (8*fs*delvout)
r = vout/iout

