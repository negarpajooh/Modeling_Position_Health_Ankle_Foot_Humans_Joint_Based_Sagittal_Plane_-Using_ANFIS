clc;
clear;
close all;
nx=4;
nMFs=3;
%% Load Data
Data=xlsread('Data.xlsx');
[Nx,Ny]=size(Data);
trainNumber=0.7*Nx;
trainNumber=round(trainNumber);
testNumber=Nx-trainNumber;
%% Design ANFIS
disp('trapmf(1)');disp('gbellmf(2)');disp('trimf(3)');disp('gaussmf(4)');
disp('gauss2mf(5)');disp('smf(6)');disp('zmf(7)');disp('psigmf(8)');
disp('dsigmf(9)');disp('pimf(10)');disp('sigmf(11)');
Inputmf=input('Enter ... ');
if Inputmf==1
    InputMF='trapmf';
elseif Inputmf==2
    InputMF='gbellmf';
elseif Inputmf==3 
    InputMF='trimf';
elseif Inputmf==4
    InputMF='gaussmf';
elseif Inputmf==5
    InputMF='gauss2mf';
elseif Inputmf==6
    InputMF='smf';
elseif Inputmf==7
    InputMF='zmf';
elseif Inputmf==8
    InputMF='psigmf';
elseif Inputmf==9
    InputMF='pimf';
elseif Inputmf==10
    InputMF='pimf';
else
    InputMF='sigmf';
end  
OutputMF=questdlg('Which one?','OUT PUT','linear','constant','linear');
%% 
FIS=...
questdlg('Which one?','FIS','GridPartition','SubtractiveClustering','FCMClustering','GridPartition');
FISType=questdlg('Which one?','Method','mamdani','sugeno','mamdani');
% opt=genfisOptions(FIS,FISType,InputMF,OutputMF,OptMethod);
% opt=genfisOptions('ClusteringType',FIS,'FISType',FISType,'InputMembershipFunctionType' ,InputMF,'OutputMembershipFunctionType' ,OutputMF,'OutputMembershipFunctionType',OptMethod);
% FIS,FISType,InputMF,OutputMF,OptMethod
opt=genfisOptions(FIS);
% opt1=genfisOptions(FISType);
% opt=genfisOptions(FIS,'FISType',method,'InputMembershipFunctionType',InputMF,'InputMembershipFunctionType',OutputMF,'OptimizationMethod',OptMethod);

%%
for i=1:2
   if i==1
TrainInputs=Data(1:trainNumber,1:nx);
TrainTargets=Data(1:trainNumber,nx+1:Ny);
InputType='Training Data';
inputData=TrainInputs;
outputData=TrainTargets;
   else
TestInputs=Data(1:testNumber,1:nx);
TestTargets=Data(1:testNumber,nx+1:Ny);
InputType='Testing Data';
inputData=TestInputs;
outputData=TestTargets;
   end
%% fis
switch FIS
    case 'GridPartition'
fis=genfis1(inputData,nMFs,InputMF,OutputMF);
    case 'SubtractiveClustering'
fis=genfis2(inputData,nMFs,InputMF,OutputMF);
    case  'FCMClustering'
fis=genfis3(inputData,nMFs,InputMF,OutputMF);
end
Optimization_Method=...
    questdlg('Which one?','FIS','Backpropagation','Hybrid ','Backpropagation');
if Optimization_Method
    OptimizationMethod=0;
else
    OptimizationMethod=1;
end
%%
DisplayInfo=false;
DisplayError=false;
DisplayStepSize=false;
DisplayFinalResult=false;
DisplayOptions=[DisplayInfo ...
                DisplayError ...
                DisplayStepSize ...
                DisplayFinalResult];          
fis=anfis(inputData,fis,[],DisplayOptions,[],OptimizationMethod);
% [fis,trainError,stepSize,chkFIS,chkError]=anfis(TrainData,fis,opt,DisplayOptions,[],OptimizationMethod);
%% Apply ANFIS to Train Data
% output=evalfis(fis,inputData)
TrainOutputs=evalfis(inputData,fis);
% Outputs=evalfis(fis,inputData);
TrainErrors=outputData-Outputs;
TrainMSE=mean(TrainErrors(:).^2);
TrainRMSE=sqrt(TrainMSE);
TrainErrorMean=mean(TrainErrors);
TrainErrorSTD=std(TrainErrors);
figure;
PlotResults(TrainTargets,TrainOutputs,InputType);
PlotResults(fis,TrainTargets,TrainOutputs,InputType);
%% fis plots
FIS_plot(fis)
end
%%
