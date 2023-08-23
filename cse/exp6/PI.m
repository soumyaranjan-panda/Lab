clc;
clear all;
close all;
Kp = 30;
Ki = 70;
Kd = 1 e;
s = tf('s');
num = 1;
den = [1 10 20];
G = tf(num, den);
step(G);
hold on; 
a = stepinfo(G);

GcI = (Ki/s);
GfI = feedback(G*GcI, 1, -1);
step(GfI);
hold on;
b = stepinfo(GfI);

GcD = (Kd*s);
GfD = feedback(G*GcD, 1, -1);
step(GfD);
hold on;
d = stepinfo(GfD);

GcPI = Kp + (Ki/s);
GfPI = feedback(G*GcPI, 1, -1);
step(GfPI);
c = stepinfo(GfPI);

GcPID = Kp + (Ki/s) + (Kd*s);
GfPID = feedback(G*GcPID, 1, -1);
step(GfPID);
e = stepinfo(GfPID);

title('Step Response with Propotional-Integral Controller');
grid on;