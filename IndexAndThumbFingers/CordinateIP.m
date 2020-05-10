function [pxip,pyip,pzip]=CordinateIP(theta1,theta2,theta3)

pxip=0.102E-1+cos(theta1).*(0.272E-1+sin(theta2).*(0.134721E0+(-0.604438E-2) ...
  .*cos(theta3)+0.127905E-3.*sin(theta3))+cos(theta2).*(0.39E-2+0.8E-3.* ...
  cos(theta3)+0.378055E-1.*sin(theta3)))+sin(theta1).*((-0.116546E-1)+cos( ...
  theta3).*(0.237931E-1+(-0.616322E-3).*sin(theta2))+(-0.300457E-2).*sin( ...
  theta2)+cos(theta2).*(0.103789E0+(-0.465661E-2).*cos(theta3)+ ...
  0.985382E-4.*sin(theta3))+(-0.503486E-3).*sin(theta3)+(-0.291254E-1).* ...
  sin(theta2).*sin(theta3));

pyip=0.540414E-2+0.602178E-2.*cos(theta3)+(-0.265967E-1).*sin(theta1)+ ...
  0.520788E-3.*sin(theta2)+0.106828E-3.*cos(theta3).*sin(theta2)+( ...
  -0.131732E0).*sin(theta1).*sin(theta2)+0.591032E-2.*cos(theta3).*sin( ...
  theta1).*sin(theta2)+cos(theta2).*((-0.179899E-1)+cos(theta3).*( ...
  0.807138E-3+(-0.782256E-3).*sin(theta1))+sin(theta1).*((-0.38135E-2)+( ...
  -0.369669E-1).*sin(theta3))+(-0.170798E-4).*sin(theta3))+(-0.127427E-3) ...
  .*sin(theta3)+0.504836E-2.*sin(theta2).*sin(theta3)+(-0.125068E-3).*sin( ...
  theta1).*sin(theta2).*sin(theta3)+cos(theta1).*((-0.113961E-1)+cos( ...
  theta3).*(0.232654E-1+(-0.602651E-3).*sin(theta2))+(-0.293793E-2).*sin( ...
  theta2)+cos(theta2).*(0.101487E0+(-0.455332E-2).*cos(theta3)+ ...
  0.963526E-4.*sin(theta3))+(-0.492318E-3).*sin(theta3)+(-0.284794E-1).* ...
  sin(theta2).*sin(theta3));

pzip=(-0.105329E-1)+0.281131E-1.*cos(theta3)+0.569698E-2.*sin(theta1)+ ...
  0.243133E-2.*sin(theta2)+0.498734E-3.*cos(theta3).*sin(theta2)+ ...
  0.282169E-1.*sin(theta1).*sin(theta2)+(-0.126598E-2).*cos(theta3).*sin( ...
  theta1).*sin(theta2)+cos(theta2).*((-0.839871E-1)+cos(theta3).*( ...
  0.376817E-2+0.167558E-3.*sin(theta1))+sin(theta1).*(0.816847E-3+ ...
  0.791828E-2.*sin(theta3))+(-0.797382E-4).*sin(theta3))+(-0.594899E-3).* ...
  sin(theta3)+0.235686E-1.*sin(theta2).*sin(theta3)+0.267894E-4.*sin( ...
  theta1).*sin(theta2).*sin(theta3)+cos(theta1).*(0.244103E-2+cos(theta3) ...
  .*((-0.498342E-2)+0.129087E-3.*sin(theta2))+0.6293E-3.*sin(theta2)+cos( ...
  theta2).*((-0.217384E-1)+0.975316E-3.*cos(theta3)+(-0.206386E-4).*sin( ...
  theta3))+0.105454E-3.*sin(theta3)+0.610026E-2.*sin(theta2).*sin(theta3)) ...
  ;
