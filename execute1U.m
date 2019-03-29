clear
close all

[FileName,PathName] = uigetfile('*.txt','Select the IMU file');
IMU = importfile(fullfile(PathName,FileName));

IMU=prepare(IMU,100);

figure
ax1=subplot(3,1,1);
plot(IMU.s,IMU.ax)
title('Ax')
xlabel('s')
ylable('g')
ax2=subplot(3,1,2);
plot(IMU.s,IMU.ay)
title('Ay')
xlabel('s')
ylable('g')
ax3=subplot(3,1,3);
plot(IMU.s,IMU.az)
title('Az')
xlabel('s')
ylable('g')
linkaxes([ax1,ax2,ax3],'x')

figure
plot(IMU.s,IMU.a)
title('mod(A)')
xlabel('s')
ylable('g')

figure
ax1=subplot(3,1,1);
plot(IMU.s,IMU.gx)
title('Gx')
xlabel('s')
ylable('deg/s')
ax2=subplot(3,1,2);
plot(IMU.s,IMU.gy)
title('Gy')
xlabel('s')
ylable('deg/s')
ax3=subplot(3,1,3);
plot(IMU.s,IMU.gz)
title('Gz')
xlabel('s')
ylable('deg/s')
linkaxes([ax1,ax2,ax3],'x')