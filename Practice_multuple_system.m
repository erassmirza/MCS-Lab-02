clear, close,clc
[t,X]=ode45('mul_ele_sys',[0 200],[0;0;0;0]);
figure;

subplot(2,1,1); hold on;
plot(t,X(:,1));
plot(t,X(:,2),'r');
xlabel('Time(t)');
ylabel('Position xb / Speed Vb');
title('Mass spring system');
legend('xb', 'Vb');
grid; hold off;

subplot(2,1,2); hold on;
plot(t,X(:,3));
plot(t,X(:,4),'r');
xlabel('Time(t)');
ylabel('Position xa / Speed Va');
title('Mass spring system');
legend('xa', 'Va');
grid; hold off;