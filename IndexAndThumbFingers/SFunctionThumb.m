function [sys,x0,str,ts] = SFunctionThumb(t,x,u,flag)

switch flag,
    case 0
        [sys,x0,str,ts] = mdlInitializeSizes();
   
    case 3
        sys = mdlOutputs(t,u);
              
    case {1, 2, 4, 9}
        sys = [];
        
    otherwise
        error(['Unhandled flag=',num2str(flag)]);
end

function [sys,x0,str,ts] = mdlInitializeSizes()

sizes = simsizes; 
sizes.NumContStates = 0;
sizes.NumDiscStates = 0;
sizes.NumOutputs = 15;
sizes.NumInputs = 5;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;

sys = simsizes(sizes);

x0 = [];
str = [];
ts = [-1 0];

function sys = mdlOutputs(t,u)

j11=J11(u); j12=J12(u); j13=J13(u); j14=J14(u); j15=J15(u); 
j21=J21(u); j22=J22(u); j23=J23(u); j24=J24(u); j25=J25(u); 
j31=J31(u); j32=J32(u); j33=J33(u); j34=J34(u); j35=J35(u); 

sys=[j11;j12;j13;j14;j15;j21;j22;j23;j24;j25;j31;j32;j33;j34;j35];