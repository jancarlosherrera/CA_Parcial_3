%% control LQR
clear all
A=[-16 -25 25; -7 -12 9;-17 -26 23];
B=[-2;0;-2];
Q=[129 145 138; 145 166 160; 138 160 197];  
R=3;
Pk=eye(3);
h=0.01;
for i=1:100
    Pk=Pk+h*(A'*Pk+Pk*A+Q-Pk*B*inv(R)*B'*Pk');
end
k=inv(R)*B'*Pk;
eigenval=eig(A-B*k);