clear;
clc;
[y,X] = libsvmread('D:/matlab/POSS/DATA/housing/housing');
X=full(X);
[m,n]=size(X);
[a,b]=mRMR(X, y, 8);