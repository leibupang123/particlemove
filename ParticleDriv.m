clear
clc

global  E0 b k g e m_p m_n q_p q_n F_p F_n;
E0=100;
b=-0.0001727;
k=0.45;
g=9.8;
e=1.6e-19;

q_p=10*e;
q_n=-10*e;

m_p=q_p*E0/g/1;
m_n=-q_n*E0/g/4;

F_p=2*m_p*g;
F_n=F_p;
[t_P,dr_P]=ode45(@P_move,0:0.01:600,[100,0]);
[t_N,dr_N]=ode45(@N_move,0:0.01:600,[100,0]);
% 
figure(1)
plot(t_P,dr_P(:,1),'-b')
hold on
plot(t_N,dr_N(:,1),'--r')
xlabel('时间 (s)')
ylabel('高度 (m)')
title('高度-时间')
legend('正粒子','负粒子')






