A=[-6 -3 -2;22 5 10;-12 0 -7];
B=[-8;11;9];
C=[50 20 22];
Ueq1=3;
lamC=[-8,-6,-2]; %valores caract controlador
lamObs=[-20,-15,-5];%valores caract observador
x0=[3;-9;8]; %condición inicial
x0h=[0;0;0]; 

k=place(A,B,lamC); %matriz de ganancias K
L=place(A',C',lamObs')'; %matriz de ganancias L

%cond eq
Aeq=A;
Beq=B*Ueq1; 
Xeq1=mldivide(Aeq,-Beq); %sist de ecuaciones