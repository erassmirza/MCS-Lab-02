% For node a:
% M1D^2xa + K1xa + B1Dxa + B3Dxa - B3Dxb = f
% For node b:
% B3Dxa - B3Dxb = M2D^2xb + K2xb + B2Dxb

% x1 = xa, x2 = va, x3 = xb, x4 = vb
% dx1/dt = x2 ------------------------------------------------ (1)
% dx2/dt = f/M1 - K1x1/M1 - B1x2/M1 - B3x2/M1 + B3x4/M1 ------ (2)
% dx3/dt = x4 ------------------------------------------------ (3)
% dx4/dt = B3x2/M2 - B3x4/M2 - K2x3/M2 - B2x4/M2 ------------- (4)

clear, close, clc

% Same Masses, Dampers & Spring values (M1=M2), (B1=B2), (K1=K2)
[t,x]=ode45('case1_sameMassesDampersValues',[0 400],[0;0;0;0]);
figure
subplot(2,1,1); hold on;
plot(t,x(:,1),t,x(:,2),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xa), Velocity(va)');
title('Spring Mass System'); legend('xa','va');
grid; hold off;

subplot(2,1,2); hold on;
plot(t,x(:,3),t,x(:,4),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xb), Velocity(vb)');
title('Spring Mass System'); legend('xb','vb');
grid; hold off;

% Changing value of masses (M1)
% When M1 = 50
[t1,x1]=ode45('case2_M1_is_50',[0 400],[0;0;0;0]);
% When M1 = 250
[t2,x2]=ode45('case2_M1_is_250',[0 400],[0;0;0;0]);
% When M1 = 450
[t3,x3]=ode45('case2_M1_is_450',[0 400],[0;0;0;0]);
% When M1 = 650
[t4,x4]=ode45('case2_M1_is_650',[0 400],[0;0;0;0]);
figure
subplot(2,1,1); hold on;
plot(t1,x1(:,1),'LineWidth',2);
plot(t2,x2(:,1),'LineWidth',2);
plot(t3,x3(:,1),'LineWidth',2);
plot(t4,x4(:,1),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xa)');
title('Spring Mass System (Changing Mass M1)');
legend('M1 = 50','M1 = 250','M1 = 450','M1 = 650');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,2),'LineWidth',2)
plot(t2,x2(:,2),'LineWidth',2)
plot(t3,x3(:,2),'LineWidth',2)
plot(t4,x4(:,2),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(va)');
title('Spring Mass System (Changing Mass M1)');
legend('M1 = 50','M1 = 250','M1 = 450','M1 = 650');
grid; hold off;

figure
subplot(2,1,1); hold on;
plot(t1,x1(:,3),'LineWidth',2);
plot(t2,x2(:,3),'LineWidth',2);
plot(t3,x3(:,3),'LineWidth',2);
plot(t4,x4(:,3),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xb)');
title('Spring Mass System (Changing Mass M1)');
legend('M1 = 50','M1 = 250','M1 = 450','M1 = 650');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,4),'LineWidth',2)
plot(t2,x2(:,4),'LineWidth',2)
plot(t3,x3(:,4),'LineWidth',2)
plot(t4,x4(:,4),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(vb)');
title('Spring Mass System (Changing Mass M1)');
legend('M1 = 50','M1 = 250','M1 = 450','M1 = 650');
grid; hold off;

% Changing value of masses (M2)
% When M2 = 50
[t1,x1]=ode45('case3_M2_is_50',[0 400],[0;0;0;0]);
% When M2 = 250
[t2,x2]=ode45('case3_M2_is_250',[0 400],[0;0;0;0]);
% When M2 = 450
[t3,x3]=ode45('case3_M2_is_450',[0 400],[0;0;0;0]);
% When M2 = 650
[t4,x4]=ode45('case3_M2_is_650',[0 400],[0;0;0;0]);
figure
subplot(2,1,1); hold on;
plot(t1,x1(:,1),'LineWidth',2);
plot(t2,x2(:,1),'LineWidth',2);
plot(t3,x3(:,1),'LineWidth',2);
plot(t4,x4(:,1),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xa)');
title('Spring Mass System (Changing Mass M2)');
legend('M2 = 50','M2 = 250','M2 = 450','M2 = 650');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,2),'LineWidth',2)
plot(t2,x2(:,2),'LineWidth',2)
plot(t3,x3(:,2),'LineWidth',2)
plot(t4,x4(:,2),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(va)');
title('Spring Mass System (Changing Mass M2)');
legend('M2 = 50','M2 = 250','M2 = 450','M2 = 650');
grid; hold off;

figure
subplot(2,1,1); hold on;
plot(t1,x1(:,3),'LineWidth',2);
plot(t2,x2(:,3),'LineWidth',2);
plot(t3,x3(:,3),'LineWidth',2);
plot(t4,x4(:,3),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xb)');
title('Spring Mass System (Changing Mass M2)');
legend('M2 = 50','M2 = 250','M2 = 450','M2 = 650');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,4),'LineWidth',2)
plot(t2,x2(:,4),'LineWidth',2)
plot(t3,x3(:,4),'LineWidth',2)
plot(t4,x4(:,4),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(vb)');
title('Spring Mass System (Changing Mass M2)');
legend('M2 = 50','M2 = 250','M2 = 450','M2 = 650');
grid; hold off;

% Changing value of dampers (B1)
% When B1 = 5
[t1,x1]=ode45('case4_B1_is_5',[0 400],[0;0;0;0]);
% When B1 = 10
[t2,x2]=ode45('case4_B1_is_10',[0 400],[0;0;0;0]);
% When B1 = 15
[t3,x3]=ode45('case4_B1_is_15',[0 400],[0;0;0;0]);
% When B1 = 20
[t4,x4]=ode45('case4_B1_is_20',[0 400],[0;0;0;0]);
figure
subplot(2,1,1); hold on;
plot(t1,x1(:,1),'LineWidth',2);
plot(t2,x2(:,1),'LineWidth',2);
plot(t3,x3(:,1),'LineWidth',2);
plot(t4,x4(:,1),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xa)');
title('Spring Mass System (Changing Damper B1)');
legend('B1 = 5','B1 = 10','B1 = 15','B1 = 20');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,2),'LineWidth',2)
plot(t2,x2(:,2),'LineWidth',2)
plot(t3,x3(:,2),'LineWidth',2)
plot(t4,x4(:,2),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(va)');
title('Spring Mass System (Changing Damper B1)');
legend('B1 = 5','B1 = 10','B1 = 15','B1 = 20');
grid; hold off;

figure
subplot(2,1,1); hold on;
plot(t1,x1(:,3),'LineWidth',2);
plot(t2,x2(:,3),'LineWidth',2);
plot(t3,x3(:,3),'LineWidth',2);
plot(t4,x4(:,3),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xb)');
title('Spring Mass System (Changing Damper B1)');
legend('B1 = 5','B1 = 10','B1 = 15','B1 = 20');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,4),'LineWidth',2)
plot(t2,x2(:,4),'LineWidth',2)
plot(t3,x3(:,4),'LineWidth',2)
plot(t4,x4(:,4),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(vb)');
title('Spring Mass System (Changing Damper B1)');
legend('B1 = 5','B1 = 10','B1 = 15','B1 = 20');
grid; hold off;

% Changing value of dampers (B2)
% When B2 = 5
[t1,x1]=ode45('case5_B2_is_5',[0 400],[0;0;0;0]);
% When B2 = 10
[t2,x2]=ode45('case5_B2_is_10',[0 400],[0;0;0;0]);
% When B2 = 15
[t3,x3]=ode45('case5_B2_is_15',[0 400],[0;0;0;0]);
% When B2 = 20
[t4,x4]=ode45('case5_B2_is_20',[0 400],[0;0;0;0]);
figure
subplot(2,1,1); hold on;
plot(t1,x1(:,1),'LineWidth',2);
plot(t2,x2(:,1),'LineWidth',2);
plot(t3,x3(:,1),'LineWidth',2);
plot(t4,x4(:,1),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xa)');
title('Spring Mass System (Changing Damper B2)');
legend('B2 = 5','B2 = 10','B2 = 15','B2 = 20');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,2),'LineWidth',2)
plot(t2,x2(:,2),'LineWidth',2)
plot(t3,x3(:,2),'LineWidth',2)
plot(t4,x4(:,2),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(va)');
title('Spring Mass System (Changing Damper B2)');
legend('B2 = 5','B2 = 10','B2 = 15','B2 = 20');
grid; hold off;

figure
subplot(2,1,1); hold on;
plot(t1,x1(:,3),'LineWidth',2);
plot(t2,x2(:,3),'LineWidth',2);
plot(t3,x3(:,3),'LineWidth',2);
plot(t4,x4(:,3),'LineWidth',2);
xlabel('Time(t)'); ylabel('Displacement(xb)');
title('Spring Mass System (Changing Damper B2)');
legend('B2 = 5','B2 = 10','B2 = 15','B2 = 20');
grid; hold off;

subplot(2,1,2); hold on
plot(t1,x1(:,4),'LineWidth',2)
plot(t2,x2(:,4),'LineWidth',2)
plot(t3,x3(:,4),'LineWidth',2)
plot(t4,x4(:,4),'LineWidth',2)
hold off;
xlabel('Time(t)'); ylabel('Velocity(vb)');
title('Spring Mass System (Changing Damper B2)');
legend('B2 = 5','B2 = 10','B2 = 15','B2 = 20');
grid; hold off;

