load valA.mat
load valB.mat
load valfake

singleplot=reshape(valA,512,64);
figure
wigb(singleplot,1,1:1:64,1:1:512,0.6);

singleplot=reshape(valB,512,64);
figure
wigb(singleplot,1,1:1:64,1:1:512,0.6);
result=reshape(valfake,512,64);
figure
wigb(result,1,1:1:64,1:1:512,0.6);
dff=singleplot-result;
figure
wigb(dff,1,1:1:64,1:1:512,0.3);
r1=NLmeans(singleplot,1,1,0.1);%linear
figure
wigb(r1,1,1:1:64,1:1:512,0.6);
ro=singleplot-r1;
figure
wigb(ro,1,1:1:64,1:1:512,0.3);