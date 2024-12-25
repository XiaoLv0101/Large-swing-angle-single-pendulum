clear
clc
L=0.23;
g=9.78;
%Define pendulum length and gravitational acceleration
theta_degrees=linspace(0,90,1000);
%Define the angle
theta_radians=deg2rad(theta_degrees);
%Convert angles to radians

T_approx=2*pi*sqrt(L/g)*ones(size(theta_radians));
%Calculate small-angle approximations

K=ellipke(sin(theta_radians/2).^2);
T_exact=4*sqrt(L/g).*K(1,:);
%Calculate the exact formula

plot(theta_degrees,T_approx,'b-','LineWidth',2);
hold on
plot(theta_degrees,T_exact,'r--','LineWidth',2);
xlabel('摆角θ');
ylabel('周期T');
title('单摆周期与摆角公式');
legend('小摆角近似','精确公式');
grid on

error=abs(T_approx-T_exact)./T_exact*100;
figure
plot(theta_degrees,error,'m-','LineWidth',2);
xlabel('摆角θ');
ylabel('百分误差');
title('误差');
grid on