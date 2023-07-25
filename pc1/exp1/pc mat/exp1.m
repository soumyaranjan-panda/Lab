clc;
clear all;
close all;

num=5;

z1 = 0.5;
dm1 = [1 2*z1 1+num];
sys1 = tf(num, dm1);
u = stepinfo(sys1);
stepplot(sys1, 'g');
hold on

z2 = 1;
dm2 = [1 2*z2 1+num];
sys2 = tf(num, dm2);
v = stepinfo(sys2);
stepplot(sys2, 'r');
hold on 

z3 = 1.75;
dm3 = [1 2*z3 1+num];
sys3 = tf(num, dm3);
w = stepinfo(sys3);
stepplot(sys3, 'b');
hold off 

legend('z = 0.5 (Underdamped)', 'z = 1 (Criticallydamped)', 'z = 1.75 (Overdamped)');

