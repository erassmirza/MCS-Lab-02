% Case 1
function dxdt=case1_sameMassesDampersValues (t,x)
M1 = 750; M2 = 750;
B1 = 20; B2 = 20;
K1 = 15; K2 = 15;
B3 = 30;
f = 300;
dxdt(1,1) = x(2);
dxdt(2,1) = f/M1 - K1*x(1)/M1 - B1*x(2)/M1 - B3*x(2)/M1 + B3*x(4)/M1;
dxdt(3,1) = x(4);
dxdt(4,1) = B3*x(2)/M2 - B3*x(4)/M2 - K2*x(3)/M2 - B2*x(4)/M2;
end