T_T=[ 1 0 0 0;
	    0 1 0 2;
	    0 0 1 0;
	    0 0 0 1];
        
clc
        
T_Rot=[0.90 -0.19 -0.19 0;
	0.39 0.76 0.63 0;
	-0.19 -0.53 0.76 0;
	0 0 0 1];
  
T_Scale=[1 0 0 0;
	0 1 0 0;
	0 0 3 0;
	0 0 0 1];
  
T_Scher=[1 0 0.5 0;
	2 1 0.5 0;
	2 0 1 0;
	0 0 0 1];
  
%Bisher nur Platzhalter
T_Proj=[0 0 0 0;
  0 0 0 0;
  0 0 1 0;
  0.5 2 0 1];
  
 T_ges=T_Rot*T_Scale*T_Scher*T_T*T_Proj