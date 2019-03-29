function [file] = integrate(input)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

file=input;

file.vx=cumtrapz(file.s,file.ax);
file.vy=cumtrapz(file.s,file.ay);
file.vz=cumtrapz(file.s,file.az);
file.x=cumtrapz(file.s,file.vx);
file.y=cumtrapz(file.s,file.vy);
file.z=cumtrapz(file.s,file.vz);
file.degx=cumtrapz(file.s,file.gx);
file.degy=cumtrapz(file.s,file.gy);
file.degz=cumtrapz(file.s,file.gz);
end

