% FOR MASS SPRING DAMPER SYSTEM
f=300; M1=750; M2=750;
B1=20; B2=20; B3=30;
K1=15; K2=15;

%%
figure;
subplot(2,1,1); hold on;
plot(t,xb);
plot(t,vb);
xlabel('Time (t)');
ylabel('Position (xb) / Speed (vb)');
title('Mass spring damper system');
legend('xb', 'vb');
grid; hold off;

subplot(2,1,2); hold on;
plot(t,xa);
plot(t,va);
xlabel('Time (t)');
ylabel('Position (xa) / Speed (va)');
title('Mass spring damper system');
legend('xa', 'va');
grid; hold off;