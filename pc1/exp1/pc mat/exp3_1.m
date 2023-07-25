clc;
clear all;
close all;
num1 = 2;
dm1 = [1 2 1+num1];
sys1 = tf(num1, dm1);
u = stepinfo(sys1);
stepplot(sys1, 'g');
hold on

num2 = 3;
dm2 = [1 2 1+num2];
sys2 = tf(num2, dm2);
v = stepinfo(sys2);
stepplot(sys2, 'r');
hold on

num3 = 5;
dm3 = [1 2 1+num3];
sys3 = tf(num3, dm3);
w = stepinfo(sys3);
stepplot(sys3, 'b');
hold off

legend('k = 2', 'k = 3', 'k = 5');


