% Case 5 when B2 = 10
function dxdt2=case5_B2_is_10(t2,x2)
M1 = 750; M2 = 750;
B1 = 20; B2 = 10;
K1 = 15; K2 = 15;
B3 = 30;
f = 300;
dxdt2(1,1) = x2(2);
dxdt2(2,1) = f/M1 - K1*x2(1)/M1 - B1*x2(2)/M1 - B3*x2(2)/M1 + B3*x2(4)/M1;
dxdt2(3,1) = x2(4);
dxdt2(4,1) = B3*x2(2)/M2 - B3*x2(4)/M2 - K2*x2(3)/M2 - B2*x2(4)/M2;
end