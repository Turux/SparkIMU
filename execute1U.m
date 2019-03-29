clear
close all

[FileName,PathName] = uigetfile('*.txt','Select the IMU file');
IMU = importfile(fullfile(PathName,FileName));

IMU=prepare(IMU,100);

figure
ax1=subplot(3,1,1);
plot(IMU.ms,IMU.ax)
title('Ax')
ax2=subplot(3,1,2);
plot(IMU.ms,IMU.ay)
title('Ay')
ax3=subplot(3,1,3);
plot(IMU.ms,IMU.az)
title('Az')
linkaxes([ax1,ax2,ax3],'x')

figure
plot(IMU.ms,IMU.a)
title('mod(A)')

figure
ax1=subplot(3,1,1);
plot(IMU.ms,IMU.gx)
title('Gx')
ax2=subplot(3,1,2);
plot(IMU.ms,IMU.gy)
title('Gy')
ax3=subplot(3,1,3);
plot(IMU.ms,IMU.gz)
title('Gz')
linkaxes([ax1,ax2,ax3],'x')