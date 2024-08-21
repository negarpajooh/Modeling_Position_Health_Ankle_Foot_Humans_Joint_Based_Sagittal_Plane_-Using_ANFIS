function [InputMF,OutputMF,OptimizationMethod,InputType,fistype]=questions()

%% membership function   'pimf'   'dsigmf' 'zmf'  'smf' 'psigmf' 'trimpmf' 'gauss2mf' 'gbellmf'
InputMF=questdlg('Which one?','INPPUT','trapmf','gaussmf','gbellmf','trapmf');
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
fistype=genfis1(inputs,nMFs,InputMF,OutputMF);
    case 'SubtractiveClustering'
fistype=genfis2(inputs,OutPut,0.5);
    case  'FCMClustering'
fistype=genfis3(inputs,OutPut,'sugeno');
end


end