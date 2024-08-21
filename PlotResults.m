function PlotResults(fis,inputs,targets,InputType,trainError,stepSize,chkFIS,chkError)
%%
outputs=evalfis(inputs,fis);
errors=targets-outputs;
MSE=mean(errors(:).^2);
RMSE=sqrt(MSE);
error_mean=mean(errors(:));
error_std=std(errors(:));
%% ,trainError,stepSize,chkFIS,chkError
subplot(4,1,1);
plot(targets,'k','linewidth',2);
hold on;
plot(outputs,'r','linewidth',2);
legend('Experimental','ANFIS');
title(InputType);
ylabel('Amplitude');
grid on
%
subplot(4,1,2);
plot(errors,'linewidth',2);
ylabel('Error');
title('RMSE');
grid on
%
subplot(4,1,3);
histfit(errors);
grid on
subplot(4,1,4);
plot(stepSize,'linewidth',2);
ylabel('Amplitude');
title('Step Size');
grid on
%% rules surface mf
showrule(fis)
figure
[x,mf] = plotmf(fis,'input',1);
plot(x,mf,'linewidth',2)
grid on
title('Membership Functions for Inpput')
% figure
% [x,mf] = plotmf(fis,'output',1);
% plot(x,mf)
% grid on
% title('Membership Functions for Output')
end