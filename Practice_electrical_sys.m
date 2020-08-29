clear, close, clc
[t,X]=ode45('RLC',[0 500],[0;0]);
figure
subplot(2,1,1);
plot(t,X(:,1));
legend('Vc');
grid on;
title('Vc');
subplot(2,1,2);
plot(t,X(:,2),'r');
legend('i');
grid on;
title('i');