% For mesh a:
% R1i1 + L1Di1 + (1/CD)(i1 - i2) = e
% For mesh b:
% (1/CD)(i1 - i2) = L2Di2 + R2i2

% x1 = i1, x2 = i2, x3 = Vc
% dx1/dt = e/L1 - R1x1/L1 - x3/L1  --------------------------- (1)
% dx2/dt = x3/L2 - R2x2/L2 ----------------------------------- (2)
% dx3/dt = x1/C - x2/C --------------------------------------- (3)

clear, close, clc
[t,x]=ode45('RLC',[0 500],[0;0;0]);
figure
subplot(3,1,1);
plot(t,x(:,1),'LineWidth',1.5);
ylabel('Current (i1)'); xlabel('Time (t)')
title('Current at Inductor (L1)');
legend('i1');
grid on;

subplot(3,1,2);
plot(t,x(:,2),'k','LineWidth',1.5);
ylabel('Current (i2)'); xlabel('Time (t)')
title('Current at Inductor (L2)');
legend('i2');
grid on;

subplot(3,1,3);
plot(t,x(:,3),'r','LineWidth',1.5);
ylabel('Voltage (Vc)'); xlabel('Time (t)')
title('Voltage at Capacitor (C)');
legend('Vc');
grid on;
