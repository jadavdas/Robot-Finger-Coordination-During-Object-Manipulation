function [sys,x0,str,ts] = SFunctionThumbIndexFinger(t,x,u,flag)

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
sizes.NumOutputs = 1;
sizes.NumInputs = 8;
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;

sys = simsizes(sizes);

x0 = [];
str = [];
ts = [-1 0];

function sys = mdlOutputs(t,u)

sys = ThumbIndexFingerSimulation(t,u);
