function dxdt=RLC(t,x)
R1 = 10; R2 = 10;
L1 = 1; L2 = 1;
C = 5;
e = 50;
dxdt(1,1) = e/L1 - R1*x(1)/L1 - x(3)/L1;
dxdt(2,1) = x(3)/L2 - R2*x(2)/L2;
dxdt(3,1) = x(1)/C - x(2)/C;
end