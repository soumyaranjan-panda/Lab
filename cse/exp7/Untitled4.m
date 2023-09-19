clc;
clear all;
close all;
numc = [14.5 7.25 60.9025];
denc = [1 8.347 0.8817];
num = [280 140];
den = [1 75.2 365 70 0];
Gs = tf(num, den);
numc = [14.5 7.25 60.9025];
denc = [1 8.347 0.8817];
Gcom = tf(numc, denc);
Gsys = Gs*Gcom;
bode(Gs, Gsys);
legend('Uncompensated System', 'Compensated System');
As = allmargin(Gs);
Asys = allmargin(Gsys);