clc;
clear all;
close all;
num = 100;
den = [0.05 1 0 0]
Gs = tf(num, den);
numc = [0.2 1];
denc = [0.0186 1];
Gcom = tf(numc, denc);
Gsys = Gs*Gcom;
bode(Gs, Gsys);
legend('Uncompensated System', 'Compensated System');
As = allmargin(Gs);
Asys = allmargin(Gsys);