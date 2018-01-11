clc

T_Trans=[ 1 0 0 0;
	    0 1 0 2;
	    0 0 1 0;
	    0 0 0 1];    

%Wiki-Formel 
  n=[1 0.5 0.5];
  n=n/norm(n);
  a=pi/4;
T_Rot=[(n(1))^2*(1-cos(a))+cos(a) , n(1)*n(2)*(1-cos(a))-n(3)*sin(a) , n(1)*n(3)*(1-cos(a))+n(2)*sin(a),0;
       n(1)*n(2)*(1-cos(a))+n(3)*sin(a) , (n(2))^2*(1-cos(a))+cos(a) , n(2)*n(3)*(1-cos(a))-n(1)*sin(a),0;
       n(1)*n(3)*(1-cos(a))-n(2)*sin(a) , n(2)*n(3)*(1-cos(a))+n(1)*sin(a) ,(n(3))^2*(1-cos(a))+cos(a),0;
       0 0 0 1]; 
T_Scale=[1 0 0 0;
	0 1 0 0;
	0 0 3 0;
	0 0 0 1];  
T_Scher=[1 2 2 0;
	0 1 0 0;
	0.5 0.5 1 0;
	0 0 0 1];
T_Proj=[0 0 0 0;
  0 0 0 0;
  0 0 1 0;
  0.5 2 0 1];

%Transponiert ist Christians Werte
 T_ges=T_Trans*T_Rot*T_Scale*T_Scher*T_Proj;
 T_ges_alternative=T_Proj*T_Scher*T_Scale*T_Rot*T_Trans;

%Spalten sind die Eckpunkte des Würfels
 Cube = [0 1 1 0 0 1 1 0;
        0 0 1 1 0 0 1 1;
        0 0 0 0 1 1 1 1;
        1 1 1 1 1 1 1 1];

 Res = (T_ges * Cube)';
 Res_alternative = (T_ges_alternative * Cube)';
%Output
 Res
 Res_alternative