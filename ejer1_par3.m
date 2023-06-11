syms p11 p12 p13 p22 p23 p33 x1 x2 x3
A=[9 -28 -40; 10 -28 -35;-4 11 12];
P=[p11 p12 p13;p12 p22 p23;p13 p23 p33];
Q=eye(3);
eq=A'*P+P*A+Q==0;
result=solve(eq,[p11 p12 p13 p22 p23 p33]);
Pr=[result.p11 result.p12 result.p13;result.p12 result.p22 result.p23;result.p13 result.p23 result.p33];
