function  sys = ThumbIndexFingerSimulation(t,u)

L1_I=4.8e-2; L2_I=2.6e-2; L3_I=2.2e-2;
% L1_T=5.06e-2; L2_T=3.74e-2; L3_T=3.34e-2;

theta1_T=u(1); theta2_T=u(2); theta3_T=u(3); theta4_T=u(4); theta5_T=u(5);
theta1_I=u(6); theta2_I=u(7); theta3_I=u(8);

% INDEX FINGER
z_axis = 0;
P1_I=[0.06,0,z_axis];
P2_I=[L1_I*cos(theta1_I),L1_I*sin(theta1_I),z_axis]; 
P3_I=[L1_I*cos(theta1_I)+L2_I*cos(theta1_I+theta2_I),L1_I*sin(theta1_I)+L2_I*sin(theta1_I+theta2_I),z_axis];
P4_I=[L1_I*cos(theta1_I)+L2_I*cos(theta1_I+theta2_I)+L3_I*cos(theta1_I+theta2_I+theta3_I),L1_I*sin(theta1_I)+L2_I*sin(theta1_I+theta2_I)+L3_I*sin(theta1_I+theta2_I+theta3_I),z_axis];

% THUMB
P1_T=[0,0,z_axis];
[P2_T(1),P2_T(2),P2_T(3)]=CordinateMC(theta1_T,theta2_T);
[P3_T(1),P3_T(2),P3_T(3)]=CordinateIP(theta1_T,theta2_T,theta3_T);
P4_T(1)=px(theta1_T,theta2_T,theta3_T,theta4_T,theta5_T);
P4_T(2)=py(theta1_T,theta2_T,theta3_T,theta4_T,theta5_T);
P4_T(3)=pz(theta1_T,theta2_T,theta3_T,theta4_T,theta5_T);


%figure(1)
cla
plot3(linspace(P1_I(1),P2_I(1)),linspace(P1_I(2),P2_I(2)),linspace(P1_I(3),P2_I(3)),'-','Color','red','LineWidth',3);hold on;
plot3(linspace(P2_I(1),P3_I(1)),linspace(P2_I(2),P3_I(2)),linspace(P2_I(3),P3_I(3)),'-','Color','blue','LineWidth',3);hold on;
plot3(linspace(P3_I(1),P4_I(1)),linspace(P3_I(2),P4_I(2)),linspace(P3_I(3),P4_I(3)),'-','Color','red','LineWidth',3);hold on;

plot3(linspace(P1_T(1),P2_T(1)),linspace(P1_T(2),P2_T(2)),linspace(P1_T(3),P2_T(3)),'-','Color','green','LineWidth',5);hold on;
plot3(linspace(P2_T(1),P3_T(1)),linspace(P2_T(2),P3_T(2)),linspace(P2_T(3),P3_T(3)),'-','Color','blue','LineWidth',5);hold on;
plot3(linspace(P3_T(1),P4_T(1)),linspace(P3_T(2),P4_T(2)),linspace(P3_T(3),P4_T(3)),'-','Color','green','LineWidth',5);hold on;

% set(gca, 'DataAspectRatio', [1,1,1]);
% set(gca,'NewPlot','replace');
h=plot3(P4_I(1),P4_I(2),P4_I(3),'*');
set(h);
% axis auto
% axes('position',[.1  .1  .8  .6])
axis([0,0.1,-0.1,0.04,-0.02,0.02]);
grid on
xlabel('x');ylabel('y');zlabel('z');
% getframe(gcf);
sys=0;
%end
%Mov(j)= getframe(gcf);
%end