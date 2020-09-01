% FOR MASS SPRING DAMPER SYSTEM
f=300; M1=750; M2=750;
B1=20; B2=20; B3=30;
K1=15; K2=15;

%%
figure;
subplot(2,1,1); hold on;
plot(t,xb,'Linewidth',2);
plot(t,vb,'Linewidth',2);
xlabel('Time (t)');
ylabel('Position (xb) / Speed (vb)');
title('Mass spring damper system');
legend('xb', 'vb');
grid; hold off;

subplot(2,1,2); hold on;
plot(t,xa,'Linewidth',2);
plot(t,va,'Linewidth',2);
xlabel('Time (t)');
ylabel('Position (xa) / Speed (va)');
title('Mass spring damper system');
legend('xa', 'va');
grid; hold off;

%% FOR RLC CIRCUIT
e = 60; R = 10; L = 1; C = 10;
%%
figure;
subplot(2,1,1);
plot(t,Vc,'Linewidth',2);
xlabel('Time (t)');
ylabel('Voltage');
title('RLC Circuit');
legend('Vc');
grid;

subplot(2,1,2);
plot(t,i,'r','Linewidth',2);
xlabel('Time (t)');
ylabel('Current');
title('RLC Circuit');
legend('i');
grid;
