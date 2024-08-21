function [fis,inputs,OutPut,InputType]=ANFISmethod(Data)
global InputMF OutputMF OptimizationMethod InputType fistype
%% Load Data
nx=4;
nMFs=10;
[Nx,Ny]=size(Data);
trainNumber=0.7*Nx;
trainNumber=round(trainNumber);
testNumber=Nx-trainNumber;
%% Training
TrainInputs=Data(1:trainNumber,1:nx);
TrainTargets=Data(1:trainNumber,nx+1:Ny);
x1=TrainInputs;
y1=TrainTargets;
%% Testing
TestInputs=Data(1:testNumber,1:nx);
TestTargets=Data(1:testNumber,nx+1:Ny);
x2=TestInputs;
y2=TestTargets;

%% initial
MaxEpoch=100;
ErrorGoal=0.001;
InitialStepSize=0.001;
StepSizeDecreaseRate=0.01;
StepSizeIncreaseRate=1;
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
[fis,trainError,stepSize,chkFIS,chkError]=anfis([inputs,OutPut],fis,TrainOptions,DisplayOptions,[],OptimizationMethod); 

figure;
PlotResults(fis,inputs,OutPut,InputType,trainError,stepSize,chkFIS,chkError)
fuzzy(fis)
end

end