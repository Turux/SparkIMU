function [file] = prepare(input,filter)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
file =input;
file.ax=movmean((file.ax./16384),filter);
file.ay=movmean((file.ay./16384),filter);
file.az=movmean((file.az./16384),filter);
file.gx=movmean((file.gx./16.4),filter);
file.gy=movmean((file.gy./16.4),filter);
file.gz=movmean((file.gz./16.4),filter);
file.mx=movmean((file.mx.*0.6),filter);
file.my=movmean((file.my.*0.6),filter);
file.mz=movmean((file.mz.*0.6),filter);
file.s=file.ms./1000;
file.a=sqrt((file.ax.^2)+(file.ay.^2)+(file.az.^2));
file.afi=acosd(file.az./file.a);
file.ateta1=asind(file.ax./(file.a.*cos(file.afi)));
file.ateta2=asind(file.ay./(file.a.*sin(file.afi)));

end

