clc;
clear all;
close all;
w = 0:1:5;
G = tf(1,[1 1],'InputDelay',3)
[mag, ph] = bode(G, w);
k = length(w);
for i = 1:k;
    magx(i) = mag(i);
    phr(i) = (1*pi/180)*ph(i);
end
polar(phr, magx);
a = allmargin(G);
grid on;