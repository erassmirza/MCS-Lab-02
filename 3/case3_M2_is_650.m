% Case 3 when M2 = 650
function dxdt4=case3_M2_is_650(t4,x4)
M1 = 750; M2 = 650;
B1 = 20; B2 = 20;
K1 = 15; K2 = 15;
B3 = 30;
f = 300;
dxdt4(1,1) = x4(2);
dxdt4(2,1) = f/M1 - K1*x4(1)/M1 - B1*x4(2)/M1 - B3*x4(2)/M1 + B3*x4(4)/M1;
dxdt4(3,1) = x4(4);
dxdt4(4,1) = B3*x4(2)/M2 - B3*x4(4)/M2 - K2*x4(3)/M2 - B2*x4(4)/M2;
end