%Observador
clear all
A=[101 -6 56;-121 4 -65;-208 12 -115];
B=[-1;2;2];
C=[-108 6 -58];
lamR=[-10 -4 -6]; %valores caracteríticos error de obs
x0=[-10;-7;-7]; %condición inicial
x0h=[0;0;0];
t1=0.5;
L=place(A',C',lamR')'; %matriz ganancia L