function  sys = FingerSimulation(t,u)


L1=4.8e-2;
L2=2.6e-2;
L3=2.2e-2;

%j=0;

 
%j=j+1;
%teta=TETA(i,1:nq(2));
% z_axis = 0.05;
% P1=[0,0,z_axis];
% P2=[L1*cos(u(1)),L1*sin(u(1)),z_axis]; 
% P3=[L1*cos(u(1))+L2*cos(u(1)+u(2)),L1*sin(u(1))+L2*sin(u(1)+u(2)),z_axis];
% P4=[L1*cos(u(1))+L2*cos(u(1)+u(2))+L3*cos(u(1)+u(2)+u(3)),L1*sin(u(1))+L2*sin(u(1)+u(2))+L3*sin(u(1)+u(2)+u(3)),z_axis];
% 
% %figure(1)
% cla
% plot3(linspace(P1(1),P2(1)),linspace(P1(2),P2(2)),linspace(P1(3),P2(3)),'-','Color','red','LineWidth',5);hold on;
% plot3(linspace(P2(1),P3(1)),linspace(P2(2),P3(2)),linspace(P2(3),P3(3)),'-','Color','blue','LineWidth',5);hold on;
% plot3(linspace(P3(1),P4(1)),linspace(P3(2),P4(2)),linspace(P3(3),P4(3)),'-','Color','red','LineWidth',5);hold on


P1=[0,0];
P2=[L1*cos(u(1)),L1*sin(u(1))]; 
P3=[L1*cos(u(1))+L2*cos(u(1)+u(2)),L1*sin(u(1))+L2*sin(u(1)+u(2))];
P4=[L1*cos(u(1))+L2*cos(u(1)+u(2))+L3*cos(u(1)+u(2)+u(3)),L1*sin(u(1))+L2*sin(u(1)+u(2))+L3*sin(u(1)+u(2)+u(3))];

%figure(1)
cla
plot(linspace(P1(1),P2(1)),linspace(P1(2),P2(2)),'-','Color','red','LineWidth',5);hold on;
plot(linspace(P2(1),P3(1)),linspace(P2(2),P3(2)),'-','Color','blue','LineWidth',5);hold on;
plot(linspace(P3(1),P4(1)),linspace(P3(2),P4(2)),'-','Color','red','LineWidth',5);hold on;
set(gca, 'DataAspectRatio', [1,1,1]);
% set(gca,'NewPlot','replace');
h=plot(P4(1),P4(2),'*');
set(h);

axis([-0.1,0.1,-0.1,0.1,0,0.1]);
grid on
xlabel('x');ylabel('y')
% getframe(gcf);
sys=0;
%end
%Mov(j)= getframe(gcf);
%end