clc;
clear all;
close all;
num = 800;
den = [1 22 40 0]
Gs = tf(num, den);
numc = [5 1];
denc = [50 1];
Gcom = tf(numc, denc);
Gsys = Gs*Gcom;
bode(Gs, Gsys);
legend('Uncompensated System', 'Compensated System');
As = allmargin(Gs);
Asys = allmargin(Gsys);