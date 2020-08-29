% Case 4 when B1 = 5
function dxdt1=case4_B1_is_5(t1,x1)
M1 = 750; M2 = 750;
B1 = 5; B2 = 20;
K1 = 15; K2 = 15;
B3 = 30;
f = 300;
dxdt1(1,1) = x1(2);
dxdt1(2,1) = f/M1 - K1*x1(1)/M1 - B1*x1(2)/M1 - B3*x1(2)/M1 + B3*x1(4)/M1;
dxdt1(3,1) = x1(4);
dxdt1(4,1) = B3*x1(2)/M2 - B3*x1(4)/M2 - K2*x1(3)/M2 - B2*x1(4)/M2;
end