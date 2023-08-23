clc;
clear all;
close all;
num = 1;
den = [1 2 1 0];
g = tf(num,den);
w = 0.2:0.2:50;
[mag, ph] = bode(g, w);
k = length(w);
for i = 1:k
    magx(i) = mag(i);
    phr(i) = (1*pi/180)*ph(i);
end
polar(phr, magx);
a = allmargin(g);
grid on;