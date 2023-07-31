clc;
clear all;
close all;
%program for underdamped
Zu = 0.15;
Wu = 6;
Nu = Wu^2;
Du = [1 2*Zu*Wu Wu^2];
Sysu=tf(Nu, Du);
subplot(2, 2, 1);
stepplot(Sysu);
U = stepinfo(Sysu);
title('Step response for underdamped system');
grid on;
%program for critical damped
Zc = 1;
Wc = 6;
Nc = Wc^2; 
Dc = [1 2*Zc*Wc Wc^2];
Sysc=tf(Nc, Dc);
subplot(2, 2, 2);
stepplot(Sysc);
C = stepinfo(Sysc);
title('Step response for critical damped system');
grid on;
%program for overdamped
Zo = 1.75;
Wo = 6;
No = Wo^2;
Do = [1 2*Zo*Wo Wo^2];
Syso=tf(No, Do);
subplot(2, 2, 3);
stepplot(Syso);
O = stepinfo(Syso);
title('Step response for overdamped system');
grid on;
%program for undamped
Zx = 0;
Wx = 6;
Nx = Wx^2;
Dx = [1 2*Zx*Wx Wx^2];
t = (0:100);
Sysx=tf(Nx, Dx);
subplot(2, 2,4);
stepplot(Sysx, t);
X = stepinfo(Sysx);
title('Step response for undamped system');
grid on;