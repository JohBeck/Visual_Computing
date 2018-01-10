clc

T_T=[ 1 0 0 0;
	    0 1 0 2;
	    0 0 1 0;
	    0 0 0 1];    
        
T_Rot_alt=[0.90 -0.19 -0.19 0;
	0.39 0.76 0.63 0;
	-0.19 -0.53 0.76 0;
	0 0 0 1];
 
T_Rot_values=[0.84 -0.19 0.151 0;
  0.50 0.60 -0.62 0; 
  -0.19 0.78 0.60 0;
  0 0 0 1];
  
  n=[1 0.5 0.5];
  n=n/norm(n);
  a=pi/4;
T_Rot=[(n(1))^2*(1-cos(a))+cos(a) , n(1)*n(2)*(1-cos(a))-n(3)*sin(a) , n(1)*n(3)*(1-cos(a))+n(2)*sin(a),0;
       n(1)*n(2)*(1-cos(a))+n(3)*sin(a) , (n(2))^2*(1-cos(a))+cos(a) , n(2)*n(3)*(1-cos(a))-n(1)*sin(a),0;
       n(1)*n(3)*(1-cos(a))-n(2)*sin(a) , n(2)*n(3)*(1-cos(a))+n(1)*sin(a) ,(n(3))^2*(1-cos(a))+cos(a),0;
       0 0 0 1]

 
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
  
 T_ges_scherTrans=T_Rot*T_Scale*T_Scher'*T_T*T_Proj
 T_ges_=T_Rot*T_Scale*T_Scher*T_T*T_Proj;

 
 Res_scherTrans = T_ges_scherTrans * [0 1 1 0 0 1 1 0;
          0 0 1 1 0 0 1 1;
          0 0 0 0 1 1 1 1;
          1 1 1 1 1 1 1 1]
          
 Res_scherNoTrans = T_ges * [0 1 1 0 0 1 1 0;
          0 0 1 1 0 0 1 1;
          0 0 0 0 1 1 1 1;
          1 1 1 1 1 1 1 1]