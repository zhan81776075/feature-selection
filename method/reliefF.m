function [indice] = reliefF( X, Y, K,num )
[RANKED,WEIGHT] = relieff(X,Y,K);
indice=RANKED(:,1:num);
