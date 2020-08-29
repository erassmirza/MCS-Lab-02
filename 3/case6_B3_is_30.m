% Case 6 when B3 = 30
function dxdt3=case6_B3_is_30(t3,x3)
M1 = 750; M2 = 750;
B1 = 20; B2 = 20;
K1 = 15; K2 = 15;
B3 = 30;
f = 300;
dxdt3(1,1) = x3(2);
dxdt3(2,1) = f/M1 - K1*x3(1)/M1 - B1*x3(2)/M1 - B3*x3(2)/M1 + B3*x3(4)/M1;
dxdt3(3,1) = x3(4);
dxdt3(4,1) = B3*x3(2)/M2 - B3*x3(4)/M2 - K2*x3(3)/M2 - B2*x3(4)/M2;
end