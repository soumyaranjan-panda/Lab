clc;
clear all;
close all;
k = 5;
Nu = [1];
Du = [1 4 6 4 0];
Sys=k*tf(Nu, Du);
rlocus(Sys);
grid on;