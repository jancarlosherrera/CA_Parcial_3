clear all
A=[8 -12 4;3 -4 1;-21 30 -11];
B=[6;-6;-32];
Ueq1=10;%punto de Ueq
lamR=[-8,-4,-2]; %valores caract sist. realimentado
x0=[-3,9,-10]; %condición inicial
K=place(A,B,lamR); %matriz de ganacias K
Aeq=A;
Beq=B*Ueq1; 
Xeq1=mldivide(Aeq,-Beq); %resolver sistema
r1=K*Xeq1+Ueq1; %señal de referencia