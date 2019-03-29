clear all
close all

[FileName,PathName] = uigetfile('*.txt','Select the Left IMU file');
Left = importfile(fullfile(PathName,FileName));

[FileName,PathName] = uigetfile('*.txt','Select the Left IMU file');
Right = importfile(fullfile(PathName,FileName));

Left=prepare(Left,100);
Right=prepare(Right,100);

figure
ax1=subplot(3,2,1);
plot(Left.ms,Left.ax)
title('Left Ax')
ax2=subplot(3,2,2);
plot(Right.ms,Right.ax)
title('Right Ax')
ax3=subplot(3,2,3);
plot(Left.ms,Left.ay)
title('Left Ay')
ax4=subplot(3,2,4);
plot(Right.ms,Right.ay)
title('Right Ay')
ax5=subplot(3,2,5);
plot(Left.ms,Left.az)
title('Left Az')
ax6=subplot(3,2,6);
plot(Right.ms,Right.az)
title('Right Az')
linkaxes([ax1,ax2,ax3,ax4,ax5,ax6],'x')

figure
ax1=subplot(2,1,1);
plot(Left.ms,Left.a)
title('Left abs(A)')
ax2=subplot(2,1,2);
plot(Right.ms,Right.a)
title('Right abs(A)')
linkaxes([ax1,ax2],'xy')

figure
ax1=subplot(3,2,1);
plot(Left.ms,Left.gx)
title('Left Gx')
ax2=subplot(3,2,2);
plot(Right.ms,Right.gx)
title('Right Gx')
ax3=subplot(3,2,3);
plot(Left.ms,Left.gy)
title('Left Gy')
ax4=subplot(3,2,4);
plot(Right.ms,Right.gy)
title('Right Gy')
ax5=subplot(3,2,5);
plot(Left.ms,Left.gz)
title('Left Gz')
ax6=subplot(3,2,6);
plot(Right.ms,Right.gz)
title('Right Gz')
linkaxes([ax1,ax2,ax3,ax4,ax5,ax6],'x')