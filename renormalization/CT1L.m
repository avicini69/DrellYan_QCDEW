(* ::Package:: *)

(*<</Users/vicini/cernbox/fisica/DY/DY-aas/narayan/DrellYan_QCDxEW/1L/selfenergies.m;*)

<</Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/renormalization2022/selfenergies1L.m;





(****************************************************************************)
DeltaalphahadOpenLoops = ( 6593.88-(3529.2-140.7-132.3+473.4) )/100000;
(* two-loop mixed electroc charge counterterm ,  only O(alpha alphas) contributions *)
(*  divflag = 1/(d-4)  *)
(*  divflag = -1/2 L[mu2];  *)

(* 1-loop *)
Pigagalept1L=Alfa/(4 Pi) 4/3 (Log[ME2/mu2]+Log[MM2/mu2]+Log[ML2/mu2]);
Pigagabos1L= Alfa/(4 Pi) (-7 Log[muW2/mu2] + 2/3);
Pigagapzero1L=Alfa/(4 Pi)   (   16/9 Log[MT2/mu2]     );
Pigaga5mz1L = Alfa/(4 Pi)   4 11/9 (  Log[muZ2/mu2]-5/3 );



deltaeovere1L= Pigagapzero1L + Pigaga5mz1L + Pigagabos1L + Pigagalept1L +
      divflag  Alfa/(4 Pi) (  8 -14 + 32/9  + 88/9 ) + 
      (-1) DeltaalphahadOpenLoops;
               
(****************************************************************************)

diffWW1L    = (selfWW[muW2]-selfWW[0])/muW2;
deltaSW21L=CW2*(selfZZ[muZ2]/muZ2 -  selfWW[muW2]/muW2);

(*VB=0.007;*)
VB=0.056988921198354 +0.0025043783395031012 I;

deltagZminusDeltar1L  = 1/2 ( -  diffWW1L - deltaSW21L/CW2 -VB );
deltagAminusDeltar1L  = 1/2 ( -  diffWW1L - deltaSW21L/SW2 -VB );
deltagWGmu1L          = 1/2 ( -  diffWW1L -VB);

deltagZalpha01L       =  1/2 (  deltaeovere1L - (SW2-CW2)/(SW2 CW2) deltaSW21L  ) ;
deltagAalpha01L       =  1/2 (  deltaeovere1L ) ;
deltagWalpha01L       =  1/2 (  deltaeovere1L - deltaSW21L/SW2 ) ;


Which[ EWinputscheme === Gmu,
           deltagZ = deltagZminusDeltar1L;
           deltagA = deltagAminusDeltar1L;
           deltagW = deltagWGmu1L,
           
       EWinputscheme === alpha0,
           deltagZ = deltagZalpha01L;
           deltagA = deltagAalpha01L;
           deltagW = deltagWalpha01L
];


(*****************************************************************************)

ctZZ1L= flagZZmZ (selfZZ[s12]-  selfZZ[muZ2]) +flagZZWF 2 (s12-muZ2)*deltagZ;

ctAA1L= selfAA[s12] + flagAA1L 2 s12*deltagA;

ctAZ1L= selfAZ[s12] -flagAZ1L s12*deltaSW21L/Sqrt[SW2]/Sqrt[CW2];
ctZA1L= selfAZ[s12] -flagAZ1L s12*deltaSW21L/Sqrt[SW2]/Sqrt[CW2];

ctWW1L= selfWW[s12]-  selfWW[muW2] +flagWW1L (s12-muW)*(-diffWW1L-VB);

ctAA1L=  ctAA1L;
ctAZ1L=  ctAZ1L;
ctZA1L=  ctZA1L;
ctZZ1L=  ctZZ1L;

ctWW1L=  ctWW1L;




(*****************************************************************************)




