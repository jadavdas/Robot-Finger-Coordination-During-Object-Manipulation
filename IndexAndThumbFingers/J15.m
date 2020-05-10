function J15x=J15(u)

theta1=u(1); theta2=u(2); theta3=u(3); theta4=u(4); theta5=u(5); 

J15x=sin(theta1).*(0.986642E-5.*cos(theta5)+(-0.276891E-6).*cos(theta4).*cos( ...
  theta5)+(-0.168733E-4).*cos(theta5).*sin(theta2).*sin(theta3)+( ...
  -0.924844E-5).*cos(theta4).*cos(theta5).*sin(theta2).*sin(theta3)+( ...
  -0.774624E-5).*cos(theta5).*sin(theta3).*sin(theta4)+0.629357E-4.*cos( ...
  theta4).*sin(theta3).*sin(theta5)+(-0.224965E-5).*sin(theta4).*sin( ...
  theta5)+(-0.751406E-4).*sin(theta2).*sin(theta3).*sin(theta4).*sin( ...
  theta5)+cos(theta3).*(0.137841E-4.*cos(theta5)+(-0.948225E-5).*cos( ...
  theta5).*sin(theta2).*sin(theta4)+0.613839E-4.*sin(theta4).*sin(theta5)+ ...
  cos(theta4).*(0.755524E-5.*cos(theta5)+0.770402E-4.*sin(theta2).*sin( ...
  theta5)))+cos(theta2).*(0.7361E-4.*cos(theta5)+0.151603E-5.*cos(theta5) ...
  .*sin(theta3).*sin(theta4)+(-0.167839E-4).*sin(theta4).*sin(theta5)+cos( ...
  theta4).*((-0.206579E-5).*cos(theta5)+(-0.123173E-4).*sin(theta3).*sin( ...
  theta5))+cos(theta3).*((-0.269772E-5).*cos(theta5)+(-0.147865E-5).*cos( ...
  theta4).*cos(theta5)+(-0.120136E-4).*sin(theta4).*sin(theta5))))+cos( ...
  theta1).*(sin(theta2).*(0.955475E-4.*cos(theta5)+0.196785E-5.*cos( ...
  theta5).*sin(theta3).*sin(theta4)+(-0.217858E-4).*sin(theta4).*sin( ...
  theta5)+cos(theta4).*((-0.268144E-5).*cos(theta5)+(-0.159881E-4).*sin( ...
  theta3).*sin(theta5))+cos(theta3).*((-0.350171E-5).*cos(theta5)+( ...
  -0.191933E-5).*cos(theta4).*cos(theta5)+(-0.155939E-4).*sin(theta4).* ...
  sin(theta5)))+cos(theta2).*(cos(theta3).*(0.123082E-4.*cos(theta5).*sin( ...
  theta4)+(-0.1E-3).*cos(theta4).*sin(theta5))+sin(theta3).*(0.219019E-4.* ...
  cos(theta5)+0.120047E-4.*cos(theta4).*cos(theta5)+0.975342E-4.*sin( ...
  theta4).*sin(theta5))));
