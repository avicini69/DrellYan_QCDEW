selfAA[s12_]:=Module[{temp},
temp=
(8*Alfa*s12)/(9*Pi) + (2*Alfa*MB2*myB0i[bb0, 0, MB2, MB2])/(9*Pi) + 
 (8*Alfa*MC2*myB0i[bb0, 0, MC2, MC2])/(9*Pi) + 
 (2*Alfa*MD2*myB0i[bb0, 0, MD2, MD2])/(9*Pi) + 
 (2*Alfa*ME2*myB0i[bb0, 0, ME2, ME2])/(3*Pi) + 
 (2*Alfa*ML2*myB0i[bb0, 0, ML2, ML2])/(3*Pi) + 
 (2*Alfa*MM2*myB0i[bb0, 0, MM2, MM2])/(3*Pi) + 
 (2*Alfa*MS2*myB0i[bb0, 0, MS2, MS2])/(9*Pi) + 
 (8*Alfa*MT2*myB0i[bb0, 0, MT2, MT2])/(9*Pi) + 
 (8*Alfa*MU2*myB0i[bb0, 0, MU2, MU2])/(9*Pi) - (Alfa*MW2*myB0i[bb0, 0, MW2, MW2])/
  Pi - (Alfa*(2*MB2 + s12)*myB0i[bb0, s12, MB2, MB2])/(9*Pi) - 
 (4*Alfa*(2*MC2 + s12)*myB0i[bb0, s12, MC2, MC2])/(9*Pi) - 
 (Alfa*(2*MD2 + s12)*myB0i[bb0, s12, MD2, MD2])/(9*Pi) - 
 (Alfa*(2*ME2 + s12)*myB0i[bb0, s12, ME2, ME2])/(3*Pi) - 
 (Alfa*(2*ML2 + s12)*myB0i[bb0, s12, ML2, ML2])/(3*Pi) - 
 (Alfa*(2*MM2 + s12)*myB0i[bb0, s12, MM2, MM2])/(3*Pi) - 
 (Alfa*(2*MS2 + s12)*myB0i[bb0, s12, MS2, MS2])/(9*Pi) - 
 (4*Alfa*(2*MT2 + s12)*myB0i[bb0, s12, MT2, MT2])/(9*Pi) - 
 (4*Alfa*(2*MU2 + s12)*myB0i[bb0, s12, MU2, MU2])/(9*Pi) + 
 (Alfa*(4*MW2 + 7*s12)*myB0i[bb0, s12, MW2, MW2])/(4*Pi);
		     temp=-temp; (* to go back to Denner *)

		     temp
];

selfAZ[s12_]:=Module[{temp},
temp=
(Alfa*s12*(4 - 17*CW2 + 15*SW2))/(36*CW*Pi*SW) - 
 (Alfa*MB2*(1 + 2*CW2 - 2*SW2)*myB0i[bb0, 0, MB2, MB2])/(18*CW*Pi*SW) - 
 (Alfa*MC2*(-1 + 4*CW2 - 4*SW2)*myB0i[bb0, 0, MC2, MC2])/(9*CW*Pi*SW) - 
 (Alfa*MD2*(1 + 2*CW2 - 2*SW2)*myB0i[bb0, 0, MD2, MD2])/(18*CW*Pi*SW) - 
 (Alfa*ME2*(-1 + 2*CW2 - 2*SW2)*myB0i[bb0, 0, ME2, ME2])/(6*CW*Pi*SW) - 
 (Alfa*ML2*(-1 + 2*CW2 - 2*SW2)*myB0i[bb0, 0, ML2, ML2])/(6*CW*Pi*SW) - 
 (Alfa*MM2*(-1 + 2*CW2 - 2*SW2)*myB0i[bb0, 0, MM2, MM2])/(6*CW*Pi*SW) - 
 (Alfa*MS2*(1 + 2*CW2 - 2*SW2)*myB0i[bb0, 0, MS2, MS2])/(18*CW*Pi*SW) - 
 (Alfa*MT2*(-1 + 4*CW2 - 4*SW2)*myB0i[bb0, 0, MT2, MT2])/(9*CW*Pi*SW) - 
 (Alfa*MU2*(-1 + 4*CW2 - 4*SW2)*myB0i[bb0, 0, MU2, MU2])/(9*CW*Pi*SW) + 
 (Alfa*MW2*(5*CW2 - SW2)*myB0i[bb0, 0, MW2, MW2])/(6*CW*Pi*SW) + 
 (Alfa*(2*MB2 + s12)*(1 + 2*CW2 - 2*SW2)*myB0i[bb0, s12, MB2, MB2])/
  (36*CW*Pi*SW) + (Alfa*(2*MC2 + s12)*(-1 + 4*CW2 - 4*SW2)*
   myB0i[bb0, s12, MC2, MC2])/(18*CW*Pi*SW) + 
 (Alfa*(2*MD2 + s12)*(1 + 2*CW2 - 2*SW2)*myB0i[bb0, s12, MD2, MD2])/
  (36*CW*Pi*SW) + (Alfa*(2*ME2 + s12)*(-1 + 2*CW2 - 2*SW2)*
   myB0i[bb0, s12, ME2, ME2])/(12*CW*Pi*SW) + 
 (Alfa*(2*ML2 + s12)*(-1 + 2*CW2 - 2*SW2)*myB0i[bb0, s12, ML2, ML2])/
  (12*CW*Pi*SW) + (Alfa*(2*MM2 + s12)*(-1 + 2*CW2 - 2*SW2)*
   myB0i[bb0, s12, MM2, MM2])/(12*CW*Pi*SW) + 
 (Alfa*(2*MS2 + s12)*(1 + 2*CW2 - 2*SW2)*myB0i[bb0, s12, MS2, MS2])/
  (36*CW*Pi*SW) + (Alfa*(2*MT2 + s12)*(-1 + 4*CW2 - 4*SW2)*
   myB0i[bb0, s12, MT2, MT2])/(18*CW*Pi*SW) + 
 (Alfa*(2*MU2 + s12)*(-1 + 4*CW2 - 4*SW2)*myB0i[bb0, s12, MU2, MU2])/
  (18*CW*Pi*SW) - (Alfa*(4*MW2*(5*CW2 - SW2) + s12*(43*CW2 + SW2))*
   myB0i[bb0, s12, MW2, MW2])/(24*CW*Pi*SW);
		     temp=-temp;

		     temp
];
selfZZ[s12_]:=Module[{temp},
temp=
(Alfa*(-9*MH2 - 3*MZ2 + (3*MH2*(MH2 - MZ2 + s12))/s12 - 
    (3*MZ2*(MH2 - MZ2 + s12))/s12 - 12*MW2*(9*CW2^2 - 2*CW2*SW2 + SW2^2) + 
    12*ME2*((1 - 2*CW2)^2 + 4*SW2^2) + 12*ML2*((1 - 2*CW2)^2 + 4*SW2^2) + 
    12*MM2*((1 - 2*CW2)^2 + 4*SW2^2) + 4*MB2*((1 + 2*CW2)^2 + 4*SW2^2) + 
    4*MD2*((1 + 2*CW2)^2 + 4*SW2^2) + 4*MS2*((1 + 2*CW2)^2 + 4*SW2^2) + 
    4*MC2*((1 - 4*CW2)^2 + 16*SW2^2) + 4*MT2*((1 - 4*CW2)^2 + 16*SW2^2) + 
    4*MU2*((1 - 4*CW2)^2 + 16*SW2^2) - 
    2*(2*(3*(1 - 2*CW2)^2*(ME2 + ML2 + MM2) + (1 + 2*CW2)^2*
         (MB2 + MD2 + MS2) + (1 - 4*CW2)^2*(MC2 + MT2 + MU2)) - 
      96*CW2^2*MW2 - 3*(MH2 + MZ2) - (1 + 4*CW2)*s12 - 
      2*(3 - 10*CW2 + 14*CW2^2)*s12 + 8*(MB2 + MD2 + 3*(ME2 + ML2 + MM2) + 
        MS2 + 4*(MC2 + MT2 + MU2) - 4*s12)*SW2^2 + 
      (6*MW2 - s12)*(7*CW2^2 + 2*CW2*SW2 - SW2^2))))/(144*CW2*Pi*SW2) + 
 (Alfa*MB2*((1 + 2*CW2)^2/SW2 + 4*SW2)*myB0i[bb0, 0, MB2, MB2])/(36*CW2*Pi) + 
 (Alfa*MC2*((1 - 4*CW2)^2/SW2 + 16*SW2)*myB0i[bb0, 0, MC2, MC2])/(36*CW2*Pi) + 
 (Alfa*MD2*((1 + 2*CW2)^2/SW2 + 4*SW2)*myB0i[bb0, 0, MD2, MD2])/(36*CW2*Pi) + 
 (Alfa*ME2*((1 - 2*CW2)^2/SW2 + 4*SW2)*myB0i[bb0, 0, ME2, ME2])/(12*CW2*Pi) + 
 (Alfa*MH2*(-3 + (MH2 - MZ2 + s12)/s12)*myB0i[bb0, 0, MH2, MH2])/
  (48*CW2*Pi*SW2) + (Alfa*ML2*((1 - 2*CW2)^2/SW2 + 4*SW2)*
   myB0i[bb0, 0, ML2, ML2])/(12*CW2*Pi) + 
 (Alfa*MM2*((1 - 2*CW2)^2/SW2 + 4*SW2)*myB0i[bb0, 0, MM2, MM2])/(12*CW2*Pi) + 
 (Alfa*MS2*((1 + 2*CW2)^2/SW2 + 4*SW2)*myB0i[bb0, 0, MS2, MS2])/(36*CW2*Pi) + 
 (Alfa*MT2*((1 - 4*CW2)^2/SW2 + 16*SW2)*myB0i[bb0, 0, MT2, MT2])/(36*CW2*Pi) + 
 (Alfa*MU2*((1 - 4*CW2)^2/SW2 + 16*SW2)*myB0i[bb0, 0, MU2, MU2])/(36*CW2*Pi) - 
 (Alfa*MW2*(9*CW2^2 - 2*CW2*SW2 + SW2^2)*myB0i[bb0, 0, MW2, MW2])/
  (12*CW2*Pi*SW2) + (Alfa*MZ2*(-1 - (MH2 - MZ2 + s12)/s12)*
   myB0i[bb0, 0, MZ2, MZ2])/(48*CW2*Pi*SW2) - (Alfa*s12*myB0i[bb0, s12, 0, 0])/
  (8*CW2*Pi*SW2) + (Alfa*(-(s12*(1 + 4*CW2 + 4*CW2^2 + 4*SW2^2)) + 
    MB2*(1 + 4*CW2^2 + 12*SW2 + 4*SW2^2 + 4*CW2*(1 + 6*SW2)))*
   myB0i[bb0, s12, MB2, MB2])/(72*CW2*Pi*SW2) + 
 (Alfa*(-((1 - 4*CW2)^2*s12) + 16*(MC2 - s12)*SW2^2 + 
    (-1 + 4*CW2)*MC2*(-1 + 4*CW2 + 24*SW2))*myB0i[bb0, s12, MC2, MC2])/
  (72*CW2*Pi*SW2) + (Alfa*(-(s12*(1 + 4*CW2 + 4*CW2^2 + 4*SW2^2)) + 
    MD2*(1 + 4*CW2^2 + 12*SW2 + 4*SW2^2 + 4*CW2*(1 + 6*SW2)))*
   myB0i[bb0, s12, MD2, MD2])/(72*CW2*Pi*SW2) + 
 (Alfa*(-(s12*(1 - 4*CW2 + 4*CW2^2 + 4*SW2^2)) + 
    ME2*(1 + 4*CW2^2 - 12*SW2 + 4*SW2^2 + 4*CW2*(-1 + 6*SW2)))*
   myB0i[bb0, s12, ME2, ME2])/(24*CW2*Pi*SW2) - 
 (Alfa*(-3*CW2*MH2 + 12*MW2 - CW2*MZ2 + CW2*s12 + 
    (CW2*(MH2 - MZ2)*(MH2 - MZ2 + s12))/s12)*myB0i[bb0, s12, MH2, MZ2])/
  (48*CW2^2*Pi*SW2) + (Alfa*(-(s12*(1 - 4*CW2 + 4*CW2^2 + 4*SW2^2)) + 
    ML2*(1 + 4*CW2^2 - 12*SW2 + 4*SW2^2 + 4*CW2*(-1 + 6*SW2)))*
   myB0i[bb0, s12, ML2, ML2])/(24*CW2*Pi*SW2) + 
 (Alfa*(-(s12*(1 - 4*CW2 + 4*CW2^2 + 4*SW2^2)) + 
    MM2*(1 + 4*CW2^2 - 12*SW2 + 4*SW2^2 + 4*CW2*(-1 + 6*SW2)))*
   myB0i[bb0, s12, MM2, MM2])/(24*CW2*Pi*SW2) + 
 (Alfa*(-(s12*(1 + 4*CW2 + 4*CW2^2 + 4*SW2^2)) + 
    MS2*(1 + 4*CW2^2 + 12*SW2 + 4*SW2^2 + 4*CW2*(1 + 6*SW2)))*
   myB0i[bb0, s12, MS2, MS2])/(72*CW2*Pi*SW2) + 
 (Alfa*(-((1 - 4*CW2)^2*s12) + 16*(MT2 - s12)*SW2^2 + 
    (-1 + 4*CW2)*MT2*(-1 + 4*CW2 + 24*SW2))*myB0i[bb0, s12, MT2, MT2])/
  (72*CW2*Pi*SW2) + (Alfa*(-((1 - 4*CW2)^2*s12) + 16*(MU2 - s12)*SW2^2 + 
    (-1 + 4*CW2)*MU2*(-1 + 4*CW2 + 24*SW2))*myB0i[bb0, s12, MU2, MU2])/
  (72*CW2*Pi*SW2) + (Alfa*(s12*(87*CW2^2 + 2*CW2*SW2 - SW2^2) + 
    4*MW2*(-6 + 9*CW2^2 - 2*CW2*SW2 + SW2^2))*myB0i[bb0, s12, MW2, MW2])/
  (48*CW2*Pi*SW2);
		     temp = -temp;
temp
];
selfWW[0]:=Module[{temp},
temp=
-(Alfa*(-24*MB2 - 36*MD2 - 8*ME2 + 3*MH2 - 8*ML2 - 8*MM2 - 24*MS2 + 12*MT2 + 
     12*MU2 + 28*MW2 + MZ2 + 8*CW2*MZ2 - 16*MW2*SW2 + 
     2*(6*MC2 + 6*MD2 + 2*ME2 - MH2 + 2*ML2 + 2*MM2 + 6*MS2 + 6*MT2 + 6*MU2 - 
       14*MW2 + 4*CW2*MW2 - MZ2 - 8*CW2*MZ2 + 4*MW2*SW2)))/(48*Pi*SW2) - 
 (Alfa*ME2*myB0i[bb0, 0, 0, ME2])/(24*Pi*SW2) - (Alfa*ML2*myB0i[bb0, 0, 0, ML2])/
  (24*Pi*SW2) - (Alfa*MM2*myB0i[bb0, 0, 0, MM2])/(24*Pi*SW2) - 
 (5*Alfa*MW2*myB0i[bb0, 0, 0, MW2])/(6*Pi) + (3*Alfa*MB2*myB0i[bb0, 0, MB2, MB2])/
  (4*Pi*SW2) + (Alfa*(-3*MB2 + 5*MT2)*myB0i[bb0, 0, MB2, MT2])/(8*Pi*SW2) + 
 (Alfa*(3*MC2 - MS2)*myB0i[bb0, 0, MC2, MS2])/(8*Pi*SW2) + 
 (3*Alfa*MD2*myB0i[bb0, 0, MD2, MD2])/(4*Pi*SW2) + 
 (Alfa*(-3*MD2 + 5*MU2)*myB0i[bb0, 0, MD2, MU2])/(8*Pi*SW2) + 
 (Alfa*ME2*myB0i[bb0, 0, ME2, ME2])/(6*Pi*SW2) - 
 (Alfa*MH2*myB0i[bb0, 0, MH2, MH2])/(16*Pi*SW2) - 
 (Alfa*(-3*MH2 + 11*MW2)*myB0i[bb0, 0, MH2, MW2])/(48*Pi*SW2) + 
 (Alfa*ML2*myB0i[bb0, 0, ML2, ML2])/(6*Pi*SW2) + 
 (Alfa*MM2*myB0i[bb0, 0, MM2, MM2])/(6*Pi*SW2) + 
 (Alfa*MS2*myB0i[bb0, 0, MS2, MS2])/(2*Pi*SW2) - 
 (Alfa*MT2*myB0i[bb0, 0, MT2, MT2])/(4*Pi*SW2) - 
 (Alfa*MU2*myB0i[bb0, 0, MU2, MU2])/(4*Pi*SW2) + 
 (Alfa*MW2*(-7 + 4*SW2)*myB0i[bb0, 0, MW2, MW2])/(12*Pi*SW2) - 
 (Alfa*(9*CW2*MW2 - 12*CW2^2*MW2 - CW2*MZ2 - 8*CW2^2*MZ2 - 24*CW2*MW2*SW2 + 
    12*MW2*SW2^2)*myB0i[bb0, 0, MW2, MZ2])/(48*CW2*Pi*SW2) - 
 (Alfa*(1 + 8*CW2)*MZ2*myB0i[bb0, 0, MZ2, MZ2])/(48*Pi*SW2)
;
		  temp=-temp;
		  temp
];
selfWW[s12_]:=Module[{temp},
temp=
-(Alfa*(-4*s12*(11 + 2*CW2 + 2*SW2) + 3*(-24*MB2 - 36*MD2 - 8*ME2 + 3*MH2 - 
       8*ML2 - 8*MM2 - 24*MS2 + 12*MT2 + 12*MU2 + 28*MW2 + MZ2 + 8*CW2*MZ2 - 
       16*MW2*SW2 + 2*(6*MC2 + 6*MD2 + 2*ME2 - MH2 + 2*ML2 + 2*MM2 + 6*MS2 + 
         6*MT2 + 6*MU2 - 14*MW2 + 4*CW2*MW2 - MZ2 - 8*CW2*MZ2 + 4*MW2*SW2)) + 
     (3*(6*MB2^2 + 6*MC2^2 + 6*MD2^2 + 2*ME2^2 - MH2^2 + 2*ML2^2 + 2*MM2^2 - 
        12*MC2*MS2 + 6*MS2^2 - 12*MB2*MT2 + 6*MT2^2 - 12*MD2*MU2 + 6*MU2^2 + 
        2*MH2*MW2 - 2*MW2^2 - 8*CW2*MW2^2 + 2*MW2*MZ2 + 16*CW2*MW2*MZ2 - 
        MZ2^2 - 8*CW2*MZ2^2 - 8*MW2^2*SW2 + s12*(24*MB2 - 12*MC2 + 24*MD2 + 
          4*ME2 - MH2 + 4*ML2 + 4*MM2 + 12*MS2 - 24*MT2 - 24*MU2 - 
          8*CW2*MW2 + MZ2 + 8*CW2*MZ2 + 8*MW2*SW2)))/s12))/(144*Pi*SW2) - 
 (Alfa*MB2*(-6 + (MB2 - MT2 + 4*s12)/s12)*myB0i[bb0, 0, MB2, MB2])/(8*Pi*SW2) - 
 (Alfa*MC2*(MC2 - MS2 - 2*s12)*myB0i[bb0, 0, MC2, MC2])/(8*Pi*s12*SW2) - 
 (Alfa*MD2*(-6 + (MD2 - MU2 + 4*s12)/s12)*myB0i[bb0, 0, MD2, MD2])/(8*Pi*SW2) - 
 (Alfa*ME2*(-4 + (ME2 + 2*s12)/s12)*myB0i[bb0, 0, ME2, ME2])/(24*Pi*SW2) + 
 (Alfa*MH2*(-3 + (MH2 - MW2 + s12)/s12)*myB0i[bb0, 0, MH2, MH2])/(48*Pi*SW2) - 
 (Alfa*ML2*(-4 + (ML2 + 2*s12)/s12)*myB0i[bb0, 0, ML2, ML2])/(24*Pi*SW2) - 
 (Alfa*MM2*(-4 + (MM2 + 2*s12)/s12)*myB0i[bb0, 0, MM2, MM2])/(24*Pi*SW2) - 
 (Alfa*MS2*(-4 + (-MC2 + MS2 + 2*s12)/s12)*myB0i[bb0, 0, MS2, MS2])/
  (8*Pi*SW2) - (Alfa*MT2*(2 + (-MB2 + MT2 - 4*s12)/s12)*
   myB0i[bb0, 0, MT2, MT2])/(8*Pi*SW2) - 
 (Alfa*MU2*(2 + (-MD2 + MU2 - 4*s12)/s12)*myB0i[bb0, 0, MU2, MU2])/(8*Pi*SW2) + 
 (Alfa*MW2*(4*(-7 + 4*SW2) - (MH2 - 2*MW2 - 8*CW2*MW2 + MZ2 + 8*CW2*MZ2 - 
      8*s12*(CW2 - SW2) - 8*MW2*SW2)/s12)*myB0i[bb0, 0, MW2, MW2])/
  (48*Pi*SW2) - (Alfa*(1 + 8*CW2)*MZ2*(1 + (MW2 - MZ2 + s12)/s12)*
   myB0i[bb0, 0, MZ2, MZ2])/(48*Pi*SW2) + 
 (Alfa*(-1 + ME2/s12)*(ME2 + 2*s12)*myB0i[bb0, s12, 0, ME2])/(24*Pi*SW2) + 
 (Alfa*(-1 + ML2/s12)*(ML2 + 2*s12)*myB0i[bb0, s12, 0, ML2])/(24*Pi*SW2) + 
 (Alfa*(-1 + MM2/s12)*(MM2 + 2*s12)*myB0i[bb0, s12, 0, MM2])/(24*Pi*SW2) - 
 (Alfa*(5*MW2 + (MW2*(MW2 - s12))/s12 - 11*s12)*myB0i[bb0, s12, 0, MW2])/
  (6*Pi) + (Alfa*(-3*MB2 + 5*MT2 - 2*s12 + ((MB2 - MT2)*(MB2 - MT2 + 4*s12))/
     s12)*myB0i[bb0, s12, MB2, MT2])/(8*Pi*SW2) + 
 (Alfa*(3*MC2 - MS2 + ((MC2 - MS2)*(MC2 - MS2 - 2*s12))/s12 - 2*s12)*
   myB0i[bb0, s12, MC2, MS2])/(8*Pi*SW2) + 
 (Alfa*(-3*MD2 + 5*MU2 - 2*s12 + ((MD2 - MU2)*(MD2 - MU2 + 4*s12))/s12)*
   myB0i[bb0, s12, MD2, MU2])/(8*Pi*SW2) - 
 (Alfa*(-3*MH2 + 11*MW2 + s12 + ((MH2 - MW2)*(MH2 - MW2 + s12))/s12)*
   myB0i[bb0, s12, MH2, MW2])/(48*Pi*SW2) - 
 (Alfa*(9*CW2*MW2 - 12*CW2^2*MW2 - CW2*MZ2 - 8*CW2^2*MZ2 + 
    (CW2 - 88*CW2^2)*s12 + (CW2*(1 + 8*CW2)*(MW2 - MZ2)*(MW2 - MZ2 + s12))/
     s12 - 24*CW2*MW2*SW2 + 12*MW2*SW2^2)*myB0i[bb0, s12, MW2, MZ2])/
  (48*CW2*Pi*SW2)
;
		     temp=-temp;
		     temp
];
