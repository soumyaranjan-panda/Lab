clc;
clear all;
close all;
num = [1 2];
den = [1 3 0 2];
G = tf(num, den);
nyquist(G);
a = allmargin(G);
grid on;
