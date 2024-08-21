function FIS_plot(fis)
figure
[x,mf] = plotmf(fis,'input',1);
plot(x,mf)
title('Membership Functions for Inpput')
figure
[x,mf] = plotmf(fis,'output',1);
plot(x,mf)
title('Membership Functions for Output')
end