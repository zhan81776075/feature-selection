function [indice]=SVM_RFE(X,y,k)
[m,n]=size(X);
num=n;
model=svmtrain(y,X);
s=1:n;
r=[];
iter=1;
while(~isempty(s))
    x=X(:,s);
    model=svmtrain(y,x);
    w=model.SVs'*model.sv_coef;
    w=w.^2;
    [w_minvalue, f] = min(w);
    r=[s(f),r];
    int=[1:f-1,f+1:length(s)];
    s=s(int);
    iter=iter+1;
end
indice=r(:,num-k+1:end);
end

