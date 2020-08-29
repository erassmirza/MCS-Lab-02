function dXdt=mul_ele_sys (t,X)
Fa=300;
M1=750;
M2=750;
B1=20;
B2=20;
B3=30;
K1=15;
K2=15;
dXdt(1,1)=X(2);
dXdt(2,1)=-K2/M2*X(1)-((B1+B2)/M2)*X(2)+B3*X(4)/M2;
dXdt(3,1)=X(4);
dXdt(4,1)=B3/M1*X(2)-K1/M1*X(3)-((B1+B3)/M1)*X(4)+Fa/M1;
end