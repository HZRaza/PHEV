clc
clear all
close all
syms k 

% main transfer function 
s = tf('s')
jm = 3.2284*exp(-6);
b = 3.5077*exp(-6);
ke = 0.0274;
kt = 0.0274;
ra = 4;
la = 2.75*exp(-6);

g = [kt/(jm*la)]/(s*(s^2 + ((jm *ra + b*la)/(jm*la))*s + ((b*ra + kt*ke)/(jm*la))));
c = feedback (g,3)
g = tf(g)


%pid control
ki = 70
kp = 300
kd = 10
Cpid = pid(kp,ki,kd)
Tpid = feedback(Cpid*g,1);

t = 0:0.01:2;
figure (4)
step(Tpid,t)
title ('PID Control')
figure (9)
pzmap(Tpid)
title('pid pzmap')

figure (6)
step(c)
title ('Closed Loop Analysis')

figure (7)
pzmap(g)
title ('transfer function pzmap')
figure(8)
rlocus(g)

% steady state errors
kd = dcgain(c)
kv=dcgain(s*c)
ka=dcgain((s^2)*c)
ekp=(1/(1+kp))
ekv=(1/kv)
eka=(1/ka)

