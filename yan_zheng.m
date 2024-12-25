clear
L=0.23;
g=9.78;
%Define pendulum length and gravitational acceleration
theta_degrees=60;
%Enter the angle
theta_radians=deg2rad(theta_degrees);
%Convert angles to radians

K=ellipke(sin(theta_radians/2)^2);
T=4*sqrt(L/g)*K;
%Calculate the exact formula
disp('T=')
disp(T)

%%

clear
L=0.23;
T=1.038;
%Enter the period
theta_degrees=60;
%Enter the swing angle
theta_radians=deg2rad(theta_degrees);
%Convert the swing angle to radian system
K=ellipke(sin(theta_radians/2)^2);
g=(16*K^2*L)/T^2;
%Calculate the acceleration due to gravity
disp('g=')
disp(g)