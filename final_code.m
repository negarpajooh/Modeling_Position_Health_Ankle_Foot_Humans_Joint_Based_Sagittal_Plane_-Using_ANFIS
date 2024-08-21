clc;
clear;
close all;
%% Load Data
nx=4;
nMFs=5;
Data=xlsread('Data.xlsx');
[Nx,Ny]=size(Data);
trainNumber=0.7*Nx;
trainNumber=round(trainNumber);
testNumber=Nx-trainNumber;
%% Training
TrainInputs=Data(1:trainNumber,1:nx);
TrainTargets=Data(1:trainNumber,nx+1:Ny);
%% Testing
TestInputs=Data(1:testNumber,1:nx);
TestTargets=Data(1:testNumber,nx+1:Ny);
%% membership function
InputMF=questdlg('Which one?','INPPUT','trapmf','gbellmf','others','trapmf');
switch InputMF
case InputMF=='others'
   InputMF=questdlg('Which one?','INPPUT','tripmf','gaussmf','others','tripmf');
end
switch InputMF  
case 'others'
   InputMF=questdlg('Which one?','INPPUT','tripmf','gaussmf','others','tripmf');
end
 switch InputMF  
case 'others'
   InputMF=questdlg('Which one?','INPPUT','gauss2mf','smf','others','gauss2mf');
end
 switch InputMF
case 'others'
   InputMF=questdlg('Which one?','INPPUT','zmf','psigmf','others','zmf');
end
 switch InputMF
case 'others'
   InputMF=questdlg('Which one?','INPPUT','dsigmf','pimf','sigmf','dsigmf');
 end
OutputMF=questdlg('Which one?','OUT PUT','linear','constant','linear');
%% Optimization Method
Optimization_Method=...
    questdlg('Which one?','FIS','Backpropagation','Hybrid ','Backpropagation');
if Optimization_Method
   OptimizationMethod=0;
else
    OptimizationMethod=1;
end
%% fis type
fistype=questdlg('Which one?','FIS Type','GridPartition','SubtractiveClustering','FCMClustering','GridPartition');
%% run anfis
for i=1:2
    if i==1
      InputType='Training Data';
      inputs=TrainInputs;
      OutPut=TrainTargets;
    else
      InputType='Testing Data';
      inputs=TestInputs;
      OutPut=TestTargets;
    end
%% fis=genfis1(TrainData,nMFs,InputMF,OutputMF);
switch fistype
    case 'GridPartition'
fis=genfis1(inputs,nMFs,InputMF,OutputMF);
    case 'SubtractiveClustering'
fis=genfis2(inputs,OutPut,0.5);
    case  'FCMClustering'
type=questdlg('Which one?','FCM Type','mamdani','sugeno','mamdani');
fis=genfis3(inputs,OutPut,type);
end
%% initial
MaxEpoch=100;
ErrorGoal=0;
InitialStepSize=0.01;
StepSizeDecreaseRate=0.9;
StepSizeIncreaseRate=1.1;
TrainOptions=[MaxEpoch ...
              ErrorGoal ...
              InitialStepSize ...
              StepSizeDecreaseRate ...
              StepSizeIncreaseRate];
%% display
DisplayInfo=false;
DisplayError=false;
DisplayStepSize=false;
DisplayFinalResult=false;
DisplayOptions=[DisplayInfo ...
                DisplayError ...
                DisplayStepSize ...
                DisplayFinalResult];        
[fis,trainError,stepSize,chkFIS,chkError]=anfis([inputs,OutPut],fis,[],DisplayOptions,[],OptimizationMethod); 
figure;
PlotResults(fis,inputs,OutPut,InputType)
end