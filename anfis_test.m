clear;
clc;
close all;
%%
load fuzex1trnData.dat
fis = anfis(fuzex1trnData);
x = fuzex1trnData(:,1);
anfisOutput = evalfis(fis,x);
plot(x,fuzex1trnData(:,2),'*r',x,anfisOutput,'.b')
legend('Training Data','ANFIS Output','Location','NorthWest')
%%
% x=0:10:100;
% x=x';
% y=x.*x;
% % plot(x,y,'.')
% anfisedit
% yhat=evalfis(x,myfis);
% e=y-yhat;
% histfit(e,10)
% plot(x,y,'rp',x,yhat,'b')
% nx=4;
%% Load Data
% Data=xlsread('Data.xlsx');
% [Nx,Ny]=size(Data);
% trainNumber=0.7*Nx;
% trainNumber=round(trainNumber);
% testNumber=Nx-trainNumber;
% TrainInputs=Data(1:trainNumber,1:Ny-1);
% TrainTargets=Data(1:trainNumber,Ny);
% TestInputs=Data(testNumber:end,1:Ny-1);
% TestTargets=Data(testNumber:end,Ny);
% x1=TrainInputs;
% y1=TrainTargets;
% x2=TestInputs;
% y2=TestTargets;
% xy1=[x1,y1];
% xy2=[x2,y2];
% anfisedit
%%
% % plot(x,y,'.')
% anfisedit
% yhat=evalfis(x,Untitled);
% e=y-yhat;
% histfit(e,10)
% plot(x,y,'rp',x,yhat,'b')