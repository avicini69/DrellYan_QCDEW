(* ::Package:: *)

(* ::Input::Initialization:: *)
V1[r_]:=If[r<1/2 && r>=0,  
   0.0003407334235705139 + 3.94556197195043*r + 4.506031447520085*r^2 + 
   0.2532604116652549*r^3 + 6.627732064119607*r^4, Null];

derV1[m_,s_]:=0.986390492987607/m^2 + (0.5632539309400107*s)/m^4 + 
   (0.01187158179680882*s^2)/m^6 + (0.1035583135018689*s^3)/m^8;

A1[r_]:= If[r>0 && r<1,
	 -2Zeta[3]-3/8 Zeta[2]+29/12 + 
	 (3Zeta[3]+2Zeta[2](2Log[2]-5)-3/2)*(1-r)+
	 (-14Zeta[3] +Zeta[2](35/2-24Log[2])+80/9)*(1-r)^(3/2) + 
	 (7Zeta[3] +3Zeta[2](4Log[2]-27/8)-41/9)*(1 - r)^2 + 
         (4*Pi^2*(1 - r)*Log[2*(1 - r)^(1/2)])/3];

derA1[m_,s_]:=   -Pi^2/(6*m^2) - (Pi^2*Log[2*(1 - s/(4*m^2))^(1/2)])/(3*m^2) - 
   (3*(1 - s/(4*m^2))^(1/2)*(80/9 + (Pi^2*(35/2 - 24*Log[2]))/6 - 
        14*Zeta[3]))/(8*m^2) - (-3/2 + (Pi^2*(-5 + 2*Log[2]))/3 + 3*Zeta[3])/
    (4*m^2) - ((1 - s/(4*m^2))*
      (-41/9 + (Pi^2*(-27/8 + 4*Log[2]))/2 + 7*Zeta[3]))/(2*m^2);




(* ::Input::Initialization:: *)
PiWW[s_, m1_, m2_] := Pi Alfa/(2 SW2) (   myPiV[s,m1,m2]  + myPiA[s,m1,m2]   );

PiZZ[s_, m1_, m2_] := Pi Alfa/(4 SW2 CW2) (    vup^2 myPiV[s,m1,m1]  +  vdown^2 myPiV[s,m2,m2] +  myPiA[s,m1,m1] +  myPiA[s,m2,m2]   );

derPiZZ[s_, m1_, m2_] := Pi Alfa/(4 SW2 CW2) (    vup^2 myderPiV[s,m1,m1]  +  vdown^2 myderPiV[s,m2,m2] +  myderPiA[s,m1,m1] +  myderPiA[s,m2,m2]   );

PiAZ[s_, m1_, m2_] := Pi Alfa/( Sqrt[SW2] Sqrt[CW2]) (   Qu vup myPiV[s,m1,m1]  + Qd vdown myPiV[s,m2,m2]   );

PiAA[s_, m1_, m2_] := 4 Pi Alfa(   Qu^2  myPiV[s,m1,m1]  + Qd^2  myPiV[s,m2,m2]   );

vup = 1-4 SW2 Qu;
vdown = -1-4 SW2 Qd;


(* ::Input::Initialization:: *)
PiV[s_,m1_,m2_] := Module[ {r,gamma, h, chi,ris},
If[ m1=!=0 || m2 =!= 0,r = s^2/(m1+m2)^2]; 
gamma= Log[ 2 Sqrt[r]];
h = Log[2 Sqrt[1-r]];			   
chi = Log[2 Sqrt[r-1]];			   
			   (*   			   Print["inizia=",s,m1,m2,Head[s]]; *)
			   If[ Re[r]>0.99 && Re[r] <1.01,  Print["inizia=",s,m1,m2,Head[s]]];
Which[
s===0 && m1===0 && m2===0,
ris=0,

m1===m2 && m1 === 0,
(* Print["uno",s,m1,m2];*)
ris = s^2/4/Pi^2 (L[mu2] - Log[s^2/mu2]-I Pi +55/12-4 Zeta[3]  ),

m1=!=0 && m1===m2 && (Head[s]===Symbol||Head[s]===Power),
(*          Print["tre bis"]; *)
ris= (4 Zeta[3]-5/6) r+ 328/81 r^2;
ris = ris +r (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && (Head[s]===Symbol||Head[s]===Power),
       (*       Print["tre bis"];*)
(*              Print["cinque"]; *)
ris = -3/2 Zeta[3] -1/2 Zeta[2] + 23/16 + r(Zeta[3]-1/9 Zeta[2] - 25/72) + r^2/8 ( Zeta[2]+25/24);
ris = ris + 3/8 (L[mu2]-Log[m1^2/mu2] 0)^2 +
                1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 && Re[s^2/(m1+m2)^2] > 1.1,
(*              Print["due"]; *)
ris = -2 r gamma - 6 gamma + 1/r (-3 gamma^2 -5/4 gamma+ Zeta[3]+ 9/2 Zeta[2] + 5/144 )+I Pi (r+3+1/r(3 gamma+5/8));
ris = ris +r (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 &&  Re[s^2/(m1+m2)^2] >= 1.0001 && Re[s^2/(m1+m2)^2] <= 1.1,
(*              Print["due"]; *)
ris = -12 Zeta[2] chi -13/2 Zeta[3] + 3 Zeta[2] (11/4-2 Log[2]) + 13/6 +
      (r-1) (-20 Zeta[2] chi - 27/2 Zeta[3] + Zeta[2] (-10 Log[2] +43/4) +3/2);
ris = ris +r (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 &&  Re[s^2/(m1+m2)^2] >= 0.9 && Re[s^2/(m1+m2)^2] <= 0.9999 ,
(*              Print["due"]; *)
ris = -12 Zeta[2] h -13/2 Zeta[3] + 3 Zeta[2] (11/4-2 Log[2]) + 13/6 + 8 Pi Sqrt[1-r] +
      (1-r) (20 Zeta[2] h + 27/2 Zeta[3] + Zeta[2] (10 Log[2] -43/4) -3/2);
ris = ris +r (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 && Re[s^2/(m1+m2)^2] < 0.9,
(*              Print["tre"]; *)
ris= (4 Zeta[3]-5/6) r+ 328/81 r^2;
ris = ris +r (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] > 1.1,
(*              Print["quattro"]; *)
ris = -r/4 Log[r] + 3/2 (-1/4 Log[r]^2-1/4 Log[r]+Zeta[2])+1/2 1/r (3/2 Log[r]+1)+I Pi (1/4 r + 3/4 (Log[r]+1/2)-3/4 1/r);
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] > 1.0001 &&  Re[s^2/(m1+m2)^2] <=1.1 ,
(*              Print["quattro"]; *)
ris = -Zeta[3]/2 -Zeta[2]/12 +7/8 + (r-1) (Zeta[3]+Zeta[2]+13/24) +
      (r-1)^2 (3/8 Log[r-1]^2 -(Zeta[2]+9/8) Log[r-1] -3/2 Zeta[3] +31/12 Zeta[2] +5/24 ) +
      I Pi (r-1)^2 (-3/4 beta + Zeta[2] + 9/8);
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] >=0.9 &&  Re[s^2/(m1+m2)^2] < 0.9999 ,
(*              Print["quattro"]; *)
ris = -Zeta[3]/2 -Zeta[2]/12 +7/8 - (1-r) (Zeta[3]+Zeta[2]+13/24) +
      (1-r)^2 (3/8 Log[1-r]^2 -(Zeta[2]+9/8) Log[1-r] -3/2 Zeta[3] -1/3 Zeta[2] +5/24 );
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] <0.9,
(*              Print["cinque bis"]; *)
ris = -3/2 Zeta[3] -1/2 Zeta[2] + 23/16 + r(Zeta[3]-1/9 Zeta[2] - 25/72) + r^2/8 ( Zeta[2]+25/24);
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
       ris = m1^2/Pi^2 ris,

       
      True,
      Print["strange arguments",s,m1,m2];


];
			   (*			   Print["actual risV=",ris];*)

			   Return[ris]
];

PiA[s_,m1_,m2_] := Module[ {r,gamma, ris,h,chi},
If[ m1 =!= 0 || m2 =!=0,r = s^2/(m1+m2)^2];
gamma= Log[ 2 Sqrt[r]];
h = Log[2 Sqrt[1-r]];			   
chi = Log[2 Sqrt[r-1]];			   
Which[s===0 && m1===0 && m2===0,
ris=0,

m1===m2 && m1 === 0,
ris = s^2/4/Pi^2 (L[mu2]-Log[s^2/mu2]-I Pi +55/12 - 4 Zeta[3] ),

m1=!=0 && m1===m2 && (Head[s]===Symbol||Head[s]===Power),
ris= -6 Zeta[3]-3 Zeta[2]+21/4+(4 Zeta[3]-49/18) r;
ris = ris +3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+(r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && (Head[s]===Symbol||Head[s]===Power),
ris = -3/2 Zeta[3] -1/2 Zeta[2] + 23/16 + r(Zeta[3]-1/9 Zeta[2] - 25/72) + r^2/8 ( Zeta[2]+25/24);
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
      ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 && Re[s^2/(m1+m2)^2] > 1.1,
ris = -2 r gamma - 6 gamma^2 + 3 gamma + 6 Zeta[2]+ 1/r (3 gamma^2 +11/4 gamma- 2 Zeta[3]- 9/2 Zeta[2] + 293/144 )+I Pi (r+6 gamma -3/2+1/r(-3 gamma-11/8));
ris = ris +3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+ (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 && Re[s^2/(m1+m2)^2] > 1.0001 && Re[s^2/(m1+m2)^2] <= 1.1,
      ris = -2 Zeta[3] -3/8 Zeta[2] + 29/12 + (r-1) (-8 Zeta[2] chi -3 Zeta[3] + 2 Zeta[2] (5 - 2 Log[2]) +3/2 ) +
      I Pi 4 Zeta[2] (r-1);
ris = ris +3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+ (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 && Re[s^2/(m1+m2)^2] >= 0.9 && Re[s^2/(m1+m2)^2] < 0.9999,
ris = -2 Zeta[3] -3/8 Zeta[2] + 29/12 + (1-r) (8 Zeta[2] h +3 Zeta[3] - 2 Zeta[2] (5 - 2 Log[2]) -3/2 ) ;
ris = ris +3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+ (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m1===m2 && Re[s^2/(m1+m2)^2] < 0.9,
ris= -6 Zeta[3]-3 Zeta[2]+21/4+(4 Zeta[3]-49/18) r;
ris = ris +3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+(r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] > 1.1,
ris = -r/4 Log[r] + 3/2 (-1/4 Log[r]^2-1/4 Log[r]+Zeta[2])+1/2 1/r (3/2 Log[r]+1)+I Pi (1/4 r + 3/4 (Log[r]+1/2)-3/4 1/r);
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] > 1.0001 &&  Re[s^2/(m1+m2)^2] <=1.1 ,
(*              Print["quattro"]; *)
ris = -Zeta[3]/2 -Zeta[2]/12 +7/8 + (r-1) (Zeta[3]+Zeta[2]+13/24) +
      (r-1)^2 (3/8 Log[r-1]^2 -(Zeta[2]+9/8) Log[r-1] -3/2 Zeta[3] +31/12 Zeta[2] +5/24 ) +
      I Pi (r-1)^2 (-3/4 beta + Zeta[2] + 9/8);
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] >=0.9 &&  Re[s^2/(m1+m2)^2] < 0.9999 ,
(*              Print["quattro"]; *)
ris = -Zeta[3]/2 -Zeta[2]/12 +7/8 - (1-r) (Zeta[3]+Zeta[2]+13/24) +
      (1-r)^2 (3/8 Log[1-r]^2 -(Zeta[2]+9/8) Log[1-r] -3/2 Zeta[3] -1/3 Zeta[2] +5/24 );
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
ris = m1^2/Pi^2 ris,
      

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] <0.9,
ris = -3/2 Zeta[3] -1/2 Zeta[2] + 23/16 + r(Zeta[3]-1/9 Zeta[2] - 25/72) + r^2/8 ( Zeta[2]+25/24);
ris = ris +3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]);
      ris = m1^2/Pi^2 ris,

      True,
      Print["strange arguments",s,m1,m2];

];
			   (*			   Print["actual risA=",ris];*)
			   Return[ris]
];

derPiV[s_,m1_,m2_] := Module[ {r,gamma, ris, s2},
s2=s^2;
If[ m1=!=0 || m2 =!= 0,r = s2/(m1+m2)^2]; 
gamma= Log[ 2 Sqrt[r]];
Which[ s===0 && m1===0 && m2===0,
ris=0,

m1===m2 && m1 === 0,
ris = 1/4/Pi^2 (L[mu2] - Log[s^2/mu2]-I Pi-1),

m1===m2 && Re[s^2/(m1+m2)^2] > 1.01,
ris = 1/(m1+m2)^2D[ -2 r gamma - 6 gamma + 1/r (-3 gamma^2 -5/4 gamma+ Zeta[3]+ 9/2 Zeta[2] + 5/144 )+I Pi (r+3+1/r(3 gamma+5/8)) + r (L[mu2]-Log[m1^2/mu2]), r];
ris = m1^2/Pi^2 ris,

m1===m2 && Re[s^2/(m1+m2)^2] < 0.99 && Re[s^2/(m1+m2)^2] >= 0.5,
ris = 1/(m1+m2)^2D[ -2 r gamma - 6 gamma + 1/r (-3 gamma^2 -5/4 gamma+ Zeta[3]+ 9/2 Zeta[2] + 5/144 )+I Pi (r+3+1/r(3 gamma+5/8)) + r (L[mu2]-Log[m1^2/mu2]), r];
ris = m1^2/Pi^2 ris,
       
m1===m2 && Re[s^2/(m1+m2)^2] < 0.5,
ris= (4 Zeta[3]-5/6 + (L[mu2]-Log[m1^2/mu2]))/(4 m1^2);
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] > 1.01,
ris = D[ -r/4 Log[r] + 3/2 (-1/4 Log[r]^2-1/4 Log[r]+Zeta[2])+1/2 1/r (3/2 Log[r]+1)+I Pi (1/4 r + 3/4 (Log[r]+1/2)-3/4 1/r)+3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]), r]/m1^2;
ris = m1^2/Pi^2 ris,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] < 0.99 && Re[s^2/(m1+m2)^2] >= 0.5,
ris = D[ -r/4 Log[r] + 3/2 (-1/4 Log[r]^2-1/4 Log[r]+Zeta[2])+1/2 1/r (3/2 Log[r]+1)+I Pi (1/4 r + 3/4 (Log[r]+1/2)-3/4 1/r)+3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]), r]/m1^2;
ris = m1^2/Pi^2 ris,
       
m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] <0.5,
ris = D[-3/2 Zeta[3] -1/2 Zeta[2] + 23/16 + r(Zeta[3]-1/9 Zeta[2] - 25/72) + r^2/8 ( Zeta[2]+25/24)+3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (r-9/2) (L[mu2]-Log[m1^2/mu2]), r]/m1^2;
ris = m1^2/Pi^2 ris

];
Return[ris]
];

derPiA[s_,m1_,m2_] := Module[ {r,gamma, ris,s2},
s2=s^2;
If[ m1 =!= 0 || m2 =!=0,r = s^2/(m1+m2)^2];
gamma= Log[ 2 Sqrt[r]];
Which[s===0 && m1===0 && m2===0,
ris=0,

m1===m2 && m1 === 0,
ris = 1/4/Pi^2 (L[mu2]-Log[s^2/mu2]-I Pi-1),

 m1===m2 && Re[s^2/(m1+m2)^2] > 1.01,
ris = D[-2 rr gamma - 6 gamma^2 + 3 gamma + 6 Zeta[2]+ 1/rr (3 gamma^2 +11/4 gamma- 2 Zeta[3]- 9/2 Zeta[2] + 293/144 )+I Pi (rr+6 gamma -3/2+1/rr(-3 gamma-11/8))+3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+ (rr-9/2) (L[mu2]-Log[m1^2/mu2]),rr]/(4 m1^2);
ris = m1^2/Pi^2 ris /. rr->r,

 m1===m2 && Re[s^2/(m1+m2)^2] < 0.99 && Re[s^2/(m1+m2)^2] >= 0.5,
ris = D[-2 rr gamma - 6 gamma^2 + 3 gamma + 6 Zeta[2]+ 1/rr (3 gamma^2 +11/4 gamma- 2 Zeta[3]- 9/2 Zeta[2] + 293/144 )+I Pi (rr+6 gamma -3/2+1/rr(-3 gamma-11/8))+3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+ (rr-9/2) (L[mu2]-Log[m1^2/mu2]),rr]/(4 m1^2);
ris = m1^2/Pi^2 ris /. rr->r,
      
m1===m2 && Re[s^2/(m1+m2)^2] < 0.5,
ris= D[-6 Zeta[3]-3 Zeta[2]+21/4+(4 Zeta[3]-49/18) rr+3/2 (L[mu2]-Log[m1^2/mu2] 0)^2+(rr-9/2) (L[mu2]-Log[m1^2/mu2]),rr]/(4 m1^2);
ris = m1^2/Pi^2 ris /. rr->r,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] > 1.01,
ris = D[-rr/4 Log[rr] + 3/2 (-1/4 Log[rr]^2-1/4 Log[rr]+Zeta[2])+1/2 1/rr (3/2 Log[rr]+1)+I Pi (1/4 rr + 3/4 (Log[rr]+1/2)-3/4 1/rr)+3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (rr-9/2) (L[mu2]-Log[m1^2/mu2]),rr]/m1^2;
ris = m1^2/Pi^2 ris /. rr->r,

m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] < 0.99 && Re[s^2/(m1+m2)^2] >= 0.5,
ris = D[-rr/4 Log[rr] + 3/2 (-1/4 Log[rr]^2-1/4 Log[rr]+Zeta[2])+1/2 1/rr (3/2 Log[rr]+1)+I Pi (1/4 rr + 3/4 (Log[rr]+1/2)-3/4 1/rr)+3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (rr-9/2) (L[mu2]-Log[m1^2/mu2]),rr]/m1^2;
ris = m1^2/Pi^2 ris /. rr->r,
      
m1=!=0 && m2===0 && Re[s^2/(m1+m2)^2] <0.5,
ris = D[-3/2 Zeta[3] -1/2 Zeta[2] + 23/16 + rr(Zeta[3]-1/9 Zeta[2] - 25/72) + rr^2/8 ( Zeta[2]+25/24)+3/8 (L[mu2]-Log[m1^2/mu2] 0)^2+1/4 (rr-9/2) (L[mu2]-Log[m1^2/mu2]),rr]/m1^2;
ris = m1^2/Pi^2 ris /. rr->r

];
Return[ris]
];


(****************************************************************************)
DeltaalphahadOpenLoops = 6593.88-(3529.2-140.7-132.3+473.4);
(* two-loop mixed electroc charge counterterm ,  only O(alpha alphas) contributions *)
(*  divflag = 1/(d-4)  *)
divflag = -1/2 L[mu2];

Pigagapzero1L=Alfa/(4 Pi)   (   16/9 Log[MT2/mu2]     );
Pigagapzero2L=Alfa/(4 Pi) Alfas/Pi (   16/9 Log[MT2/mu2]      -20/3);

Pigaga5mz1L = Alfa/(4 Pi)   4 11/9 (  Log[muZ2/mu2]-5/3 );
Pigaga5mz2L= Alfa/(4 Pi) Alfas/Pi  4 11/9 (  Log[muZ2/mu2]+ 4 Zeta[3]-55/12 );

deltaeovere2L= Pigagapzero2L+ divflag ( Alfa/(4 Pi) Alfas/Pi 16/9 )+
               Pigaga5mz2L  + divflag  (Alfa/(4 Pi) Alfas/Pi 44/9);
(****************************************************************************)

selfAAs12 = Alfas/Pi (PiAA[Sqrt[s12],MT,0] + 2 PiAA[Sqrt[s12],0,0]);

selfAZs12 = Alfas/Pi (PiAZ[Sqrt[s12],MT,0] + 2 PiAZ[Sqrt[s12],0,0]);

dZZZ      = Alfas/Pi (derPiZZ[Sqrt[muZ2], MT, 0] + 2 derPiZZ[Sqrt[muZ2], 0, 0]);
selfZZs12 = Alfas/Pi (PiZZ[Sqrt[s12],MT,0]  + 2 PiZZ[Sqrt[s12],0,0]);
selfZZmz2 = Alfas/Pi (PiZZ[Sqrt[muZ2],MT,0] + 2 PiZZ[Sqrt[muZ2],0,0]);

selfWWs12 = Alfas/Pi (PiWW[Sqrt[s12],MT,0] + 2 PiWW[Sqrt[s12],0,0]);
selfWWmw2 = Alfas/Pi (PiWW[Sqrt[muW2],MT,0] + 2 PiWW[Sqrt[muW2],0,0]);
selfWW0   = Alfas/Pi (PiWW[0,MT,0]          + 2 PiWW[0,0,0]);
diffWW2L    = (selfWWmw2-selfWW0)/muW2;

deltaSW22L=CW2*(selfZZmz2/muZ2 - selfWWmw2/muW2);
numdeltaSW2=CW2*(numselfZZmz2/muZ2 - numselfWWmw2/muW2);

(*  counterterms for the simple (not squared) charge  (then the 1/2 factor)  *)
deltagZminusDeltar2L  =  1/2 (- diffWW2L - deltaSW22L/CW2) ;
deltagAminusDeltar2L  =  1/2 (- diffWW2L - deltaSW22L/SW2)  ;
deltagWGmu2L           = 1/2 ( -diffWW2L );

deltagZalpha02L             =  1/2 ( 2 deltaeovere2L - (SW2-CW2)/(SW2 CW2) deltaSW22L  ) ;
deltagAalpha02L             =  1/2 ( 2 deltaeovere2L) ;
deltagWalpha02L             =  1/2 ( 2 deltaeovere2L - deltaSW22L/SW2 ) ;


Which[ EWinputscheme === Gmu,
           deltagZ = deltagZminusDeltar2L;
           deltagA = deltagAminusDeltar2L;
           deltagW = deltagWGmu2L,
           
       EWinputscheme === alpha0,
           deltagZ = deltagZalpha02L;
           deltagA = deltagAalpha02L;
           deltagW = deltagWalpha02L
];

Print["deltagZ=",deltagZ];


(*****************************************************************************)
(* the factor 2 in front of the wave function accounts for the 2 charges    *)

flagZZ=1;
flagAA=1;
flagAZ=1;
flagZZmZ=1;
flagZZWF=1;
flagAAWF=1;
flagAZWF1=1;
flagAZWF2=1;


ctZZ2L= flagZZ ((selfZZs12 - flagZZmZ selfZZmz2) + 2 flagZZWF (s12-muZ2)*deltagZ);

ctAA2L= flagAA (selfAAs12 + 2 flagAAWF s12*deltagA);

ctAZ2L= flagAZ (selfAZs12 + flagAZWF1 s12*deltaSW22L/Sqrt[SW2]/Sqrt[CW2]);
ctZA2L= flagAZ (selfAZs12 + flagAZWF2 s12*deltaSW22L/Sqrt[SW2]/Sqrt[CW2]);

ctWW2L= flagWW ((selfWWs12 - flagWWmW selfWWmw2) + 2 flagWWWF (s12-muW2)*deltagW);


ctAA2L=ctAA2L;
ctAZ2L=-ctAZ2L;
ctZA2L=-ctZA2L;
ctZZ2L=ctZZ2L;

(*****************************************************************************)







S10110 = Gamma[1+eps]^2 (4 Pi mu2/(-s))^(2 eps) s (-1/4 1/eps -13/8 +eps (Pi^2/12-115/16));
S11110 = Gamma[1+eps]^2 (4 Pi mu2/(-s))^(2 eps) (1/2 1/eps^2 +5/2 1/eps +19/2-Pi^2/6+eps (65/2-5/6 Pi^2 -5 Zeta[3]));
S01111 = Gamma[1+eps]^2 (4 Pi mu2/(-s))^(2 eps) (1/eps^2 +4/eps +12-Pi^2/3+eps (32-4/3 Pi^2-4 Zeta[3]));

f1[s_,0] = (1-eps)/(2 s) S10110 +
  (1-eps)/(2 (3-2 eps) eps) (2-3 eps+2 eps^2 )S11110+
  1/(4 eps) (-(1-eps) (2-eps+2 eps^2)/(3-2 eps) ) S01111;



















(* ::Input:: *)
(*deltaSWtb = CW2 (PiZZ[91.153,173.2,0]/MZ2-PiWW[80.358,173.2, 0]/MW2);*)
(*deltaSW2qqp = CW2(PiZZ[91.153,0,0]/MZ2 - PiWW[80.358,0, 0]/MW2);*)
(*deltaSW2 = deltaSWtb+2   deltaSW2qqp;*)
(*subs={Qup->2/3, Qdown->-1/3, SW2->1-MW2/MZ2, CW2->MW2/MZ2, MW2->80.358^2, MZ2->91.153^2, (*alpha\[Rule]1/137.035999074 *) alpha->1};*)


(* ::Input:: *)
(*deltatheta1=deltaSW2/SW2 //. {SW2->1-MW2/MZ2, CW2->MW2/MZ2, MW2->80.358^2, MZ2->91.153^2};*)
(*deltatheta2 = 1/2 Sqrt[CW2]/Sqrt[SW2] 2 PiAZ[91.153,173.2,0]/MZ2 + 2  Sqrt[CW2]/Sqrt[SW2]  PiAZ[91.153,0,0]/MZ2;*)
(*deltatheta=flag1 deltatheta1+ flag2 deltatheta2;*)


(* ::Input:: *)
(*deltarho = PiZZ[0,MT,0]/MZ2-PiWW[0,MT,0]/MW2 /. MW2-> CW2 MZ2 // Simplify*)


(* ::Input:: *)
(*deltaSW2/SW2 //. subs   // Simplify*)


(* ::Input:: *)
(*deltarho CW2/SW2 //. subs /. MT->173.2 *)


(* ::Input:: *)
(*0.1127/Pi deltatheta 0.2228(*/. L[mu2]\[Rule]L[173.2]/. mu2\[Rule]173.2^2 *) //. subs // Expand*)


(* ::Input:: *)
(*\[Minus]0.0000027304+0.0000620177 +(SW2-CW2)/CW2/SW2 deltaSW2 0.1127/Pi//. subs /. L[_]->0*)


(* ::Input:: *)
(*deltaSWtb /SW2 //. subs // Expand*)


(* ::Input:: *)
(*deltarho 0.1127/Pi //. subs /. MT->173.2*)


(* ::Input:: *)
(*0.1127/Pi deltaSW2/SW2 SW2/CW2 //. subs /. L[_]->0 /. mu2->173.2^2*)


(* ::Input:: *)
(*diffWWheavy= (PiWW[80.358,173.2,0]-PiWW[0,173.2,0])/MW2 //. subs // Expand;*)
(*diffWWlight=(PiWW[80.358,0,0]-PiWW[0,0,0])/MW2 //. subs // Expand;*)
(*diffWW=diffWWheavy+ 2 diffWWlight;*)


(* ::Input:: *)
(*mydZZZ = (derPiZZ[91.153,173.2,0] + 2 derPiZZ[91.153,0,0])//. subs ;*)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*deltagZminusDeltar  = 0.1127/Pi (flag1 mydZZZ - flag2 diffWW - flag3 deltaSW2/CW2 ) //. subs // Expand*)


(* ::Input:: *)
(*deltagZ = 0.1127/Pi (-flag1 mydZZZ + flag2 2 dZe11 - flag3 deltaSW2/SW2 (CW2-SW2)/CW2 )//. subs // Expand*)


(* ::Input:: *)
(*Deltar = 0.1127/Pi ( diffWW + 2 dZe11 +  deltaSW2/SW2 )  //. subs // Expand*)


(* ::Input:: *)
(*Coefficient[ deltatheta, Qup,2 ] /. flag->-1// Simplify*)


(* ::Input:: *)
(*Collect[ deltatheta /. L[mu2]->L[173.2]/. MZ2->91.153^2 , L[_], Simplify]*)


(* ::Input:: *)
(*4 SW2 deltatheta //. subs /. L[mu2]->L[173.2] /. {flag1->1, flag2->1} /.mu2->173.2^2// Expand*)


(* ::Input:: *)
(*0.032321 0.1127/Pi*)


(* ::Input:: *)
(*deltaSW2/SW2 //. subs /. mu2->173.2^2 //Expand*)


(* ::Input:: *)
(*4 Pi / 0.1127 deltagZminusDeltar /. {flag1->1,flag2->1,flag3->1} /. mu2->173.2^2 // Expand*)


(* ::Input:: *)
(*4 Pi/0.1127 deltagZ /. {flag1->1,flag2->1,flag3->1} /. mu2->173.2^2 /. L[_]->0 /. dZe11 ->0.0000620177 // Expand*)


(* ::Input:: *)
(*-0.11466205273513666`/137.0359990740 0.118/0.1127*)
(**)


 


Collect[ ctAA2L //.{myPiV->PiV,myPiA->PiA, muW2->CW2 muZ2, flagAA->1,Qd->-1/3,Qu->2/3,CW2->1-SW2} // Expand, {L[_],divflag}, Simplify]


Collect[ ctZZ2L //. {myPiV -> PiV, myPiA->PiA, muW2->CW2 muZ2 ,flagZZ->1,flagZZmZ->1, Qu->2/3,Qd->-1/3,CW2->1-SW2} // Expand, {L[_],divflag}, Simplify]


Coefficient[ ctZZ2L, L[mu2]] /. {Qu->2/3, Qd->-1/3, CW2->1-SW2} // Simplify


Collect[ diffWW2L /. {myPiV->PiV,myPiA->PiA}, L[_], Simplify]


Collect[ deltaSW22L /. {myPiV->PiV,myPiA->PiA}, L[_], Simplify]


Collect[ deltagZ //. {myPiV->PiV,myPiA->PiA, muW2->CW2 muZ2, Qd->-1/3,Qu->2/3,CW2->1-SW2}, {L[_],divflag}, Simplify]


Collect[ selfZZmz2/muZ2 /. {myPiV->PiV,myPiA->PiA, muW2->CW2 muZ2}, {L[_],divflag}, Simplify]


Collect[ selfWWmw2/(muZ2 CW2)/. {myPiV->PiV,myPiA->PiA, muW2->CW2 muZ2}, {L[_],divflag}, Simplify]


4. Zeta[3]


16/9 Log[MT2/mu2]      -20/3 /. {MT2->173^2,mu2->91.1^2}



