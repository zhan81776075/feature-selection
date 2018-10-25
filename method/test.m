clear;
clc;
[y,X] = libsvmread('D:/matlab/POSS/DATA/housing/housing');
X=full(X);
[m,n]=size(X);
A = bsxfun(@minus, X, mean(X, 1));
B = bsxfun(@(x,y) x ./ y, A, std(A,1,1));
X=B(:,find(isnan(B(1,:))==0));%正则化，提高准确率和速度
[a,b]=mRMR(X, y, k);
indice=SVM_RFE(X,y,k);
indice=reliefF(X,y,num,k);