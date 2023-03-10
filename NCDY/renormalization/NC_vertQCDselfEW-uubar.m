(* ::Package:: *)

link2=Install["/Users/vicini/cernbox/codici/LoopTools-2.16/x86_64-Darwin/bin/LoopTools"];
(*mymyB0i[q2_,m12_,mu2_] := Which[ q2=!=0 && m12=!=0, 2 - Log[m12/mu2] - (Sqrt[q2*(-4*m12 + q2)]*Log[(q2 + Sqrt[q2*(-4*m12 + q2)])/(-q2 + Sqrt[q2*(-4*m12 + q2)])])/q2, q2===0 && m12=!=0, -Log[m12/mu2], q2=!=0 && m12===0, 2-Log[-q2/mu2], q2===0 && m12===0, 0 ]*)
SetMudim[91.1353^2];
mymyB0i[q2_,m12_,m22_,mu2_] := Module[{ris,tmp},
qq2=q2;
 (*nume=-NIntegrate[Log[(qq2 x^2-x(qq2+m12-m22)+m12-I 10^(-10))/mu2]   ,{x,0,1}]; 
 ff=B0i[bb0,q2,m12,m22]; 
 *)

                               ris=Which[ qq2=!=0 && m12=!=0 && m22===m12, 
                                             
                        ratio=-(qq2 + Sqrt[qq2*(-4*(m12-I 10^(-18)) + qq2)])/(qq2 - Sqrt[qq2*(-4*(m12-I 10^(-18)) + qq2)]);
                                             argratio=Arg[ratio];
                                             logratio=Log[Abs[ratio]];
                                             Which[ Im[qq2]>=0, segno=1, 
                                                    Im[qq2]<0 && Re[qq2]>=4 Re[m12], segno=-1,
                                                    Im[qq2]<0 && Re[qq2]<4 Re[m12], segno=1];
                                             (*Print[ratio,"  ",argratio];    *)                                         
                                             tmp=2 -Log[m12/mu2]- Sqrt[qq2*(-4*m12 + qq2)]*(logratio+segno I argratio)/qq2;
                                              (*
                                              tmp2 = 2-Log[m12/mu2]-2 Sqrt[4 (m12-I 10^(-18))-qq2]/Sqrt[qq2]*
                                                             ArcTan[Sqrt[qq2]/Sqrt[4 (m12-I 10^(-18))-qq2]];
                                                             *)
                                                             (*
                                              tmp2= 2-Log[m12/mu2] + Sqrt[4 m12/q2-1] Log[-(Sqrt[-q2]-Sqrt[ 4 m12-q2])/(Sqrt[-q2]+Sqrt[ 4 m12-q2])     ];
                                              Print["sqrt=",Sqrt[4 (m12-I 10^(-18))-qq2]/Sqrt[qq2],"  ",Sqrt[4 m12/q2-1]];
                                              Print["logarctan=",2 ArcTan[Sqrt[qq2]/Sqrt[4 (m12-I 10^(-18))-qq2]],"  ",Log[ -(Sqrt[-q2]-Sqrt[ 4 m12-q2])/(Sqrt[-q2]+Sqrt[ 4 m12-q2])     ] ];
*)
(*                                            Print[tmp/nume];
                                            Print[q2,"  ",m12,"  ",m22,"  ",tmp/nume,"  ",tmp/ff,"  ",nume];
                                            Print[argratio,"  ",Arg[qq2 + Sqrt[qq2*(-4*m12 + qq2)]]  ,"  ",Arg[  qq2 - Sqrt[qq2*(-4*m12 + qq2)]   ],"  ",Sqrt[qq2*(-4*m12 + qq2)]   ];*)

                                            tmp,
                                      qq2=!=0 && m12===qq2 && m22===0,
                                       tmp= 2 - Log[qq2/mu2];

                           tmp,
                                      qq2=!=0 && m22===qq2 && m12===0,
                                        2 - Log[qq2/mu2],
                                      qq2=!=0 && m12=!=0 && m22===0,
                                        tmp=2 - (1-m12/qq2)Log[m12-I 10^(-18)-qq2]- m12/qq2 Log[m12]+Log[mu2];
                           (*Print[tmp/nume];*)
                            tmp,
                                      qq2=!=0 && m12===0 && m22=!=0,
                                      If[ Im[qq2]>=0,
                                      tmp=2 - (1-m22/qq2)Log[m22-I 10^(-18)-qq2]- m22/qq2 Log[m22]+Log[mu2],
                                      tmp=2 - (1-m22/qq2)Log[m22-I 10^(-18)-qq2]- m22/qq2 Log[m22]+Log[mu2]+ 2 Pi I (* moving to the second Riemann sheet *)
                                      ];

                                                      (*Print[tmp/nume];*)
                            tmp,
                                      qq2=!=0 && m12===0 && m22===0, 
                                        If[ Im[qq2]>=0,
                                        2 - Log[-(qq2+I 10^(-18))/mu2],
                                        2 - Log[-(qq2+I 10^(-18))/mu2] + 2 Pi I (* moving to the second Riemann sheet *)
                                         ],
                                        
                                        
                                      qq2===0 && m12=!=0 && m22===m12, 
                                          -Log[m12/mu2], 
                                      qq2===0 && m12===0 && m22===0, 
                                    0,
                                      qq2===0 && m12=!=0 && m22===0, 
                                          1-Log[m12/mu2], 
                                      qq2===0 && m22=!=0 && m12===0, 
                                          1-Log[m22/mu2], 
                                       qq2===0 && m22=!=0 && m12=!=0, 
                                         tmp= 1-(m12 Log[m12]-m22 Log[m22])/(m12-m22)+Log[mu2];
                                         (*Print[tmp/nume];*)
                                         tmp, 
                                    qq2=!=0 && m12 =!= m22 && m12=!=0 && m22=!=0,
                          kallen=-4*(m22-I 10^(-18))*qq2 + (-m12 + m22 + qq2)^2;
                                     tmp=(4 - 2*Log[m12/(mu2)] + 
                                      ((-m12 + m22 + qq2 - Sqrt[kallen])*
                                      Log[(m12 - m22 + qq2 + Sqrt[kallen])/
                                              (m12 - m22 - qq2 + Sqrt[kallen])])/qq2 + 
                                      ((-m12 + m22 + qq2 + Sqrt[kallen])*
                                        Log[(-m12 + m22 - qq2 + Sqrt[kallen])/
                                                 (-m12 + m22 + qq2 + Sqrt[kallen])])/qq2)/2;
                          (* Print[tmp/nume]; *)
                          If[ Im[qq2]<0 && Im[m12]===0 && Im[m22]===0 && Re[qq2]>4 Re[(Sqrt[m12]+Sqrt[m22])^2], tmp=tmp+2 Pi I];
                           tmp

                                    ];
                                    (*
                                    If[Abs[ris/ff-1]>0.01,
         Print[qq2,"  ",m12,"  ",m22,"  "];
         Print["-------------> ",Abs[ris/ff]," ",ris," ",nume, "  ",ff];
                                      ];
                                      *)
                                      
                                                                        ris
                                    ];     



$MinPrecision=32;
$MaxPrecision=32;
maindir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/";
inputvalues=maindir<>"NCDY/numerics/inputdata/grid-input-st.res";
Get[inputvalues];
fileborn=maindir<>"NCDY/numerics/renormalization/NC_uU_Born.m";
Get[fileborn];

EWinputscheme=Gmu;

filect=maindir<>"renormalization2022/CT1L.m";
Get[filect];

FILE=maindir<>"NCDY/numerics/renormalization/NC_numerics/uU-vertself-delta-"<>ToString[EWinputscheme]<>".dat";
DeleteFile[FILE]; OpenWrite[FILE];



subconst = {
	    ME->0.000511,
	    MM->0.105658,
	    ML->1.77682,
	    MUP->0.06983,
	    MD->0.06984,
	    MS->0.15,
	    MC->1.2,
	    MB->4.6,
	    MT->173.2,
	    ME2->ME^2,
	    MM2->MM^2,
	    ML2->ML^2,
	    MU2->MUP^2,
	    MD2->MD^2,
	    MS2->MS^2,
	    MC2->MC^2,
	    MB2->MB^2,
	    MT2->MT^2,
	    muW2->mW^2 - I GaW mW,
	    muZ2->mZ^2 - I GaZ mZ,
	    muWC2->mW^2 + I GaW mW,
	    muZC2->mZ^2 + I GaZ mZ,
	    muW->Sqrt[muW2],
	    muZ->Sqrt[muZ2],
	    mW->80.358,
	    mZ->91.1535,
	    GaW->2.084,
	    GaZ->2.4943,
	    MH2->125^2,
	    Alfa->1/137.035999074,
	    Alfas ->0.118};

subcharges = {
	      Ql->-1,
	      Qu->2/3,
	      Qd->-1/3,
	      I3l->-1/2,
	      I3u->1/2,
	      I3d->-1/2,
	      I3n->1/2,
	      NC->3};

subsymbols = {
	      gA4->gA^4,
	      gA->Sqrt[4 Pi Alfa],
	      aem->Alfa/4/Pi,
	      asr->Alfas/4/Pi,
	      Cf->(NC^2-1)/(2 NC),
	      borncf-> NC,
	      factml2L->factml1L^2,
	      mlflag->1,
	      IPi->I Pi,
	      gVu->1/2 I3u-Qu*sw2,
	      gAu->1/2 I3u,
	      gVd->1/2 I3d-Qd*sw2,
	      gAd->1/2 I3d,
	      gVl->1/2 I3l-Ql*sw2,
	      gAl->1/2 I3l,
	      gVn->1/2 I3n,
	      gAn->1/2 I3n,
	      gVuC->1/2 I3u-Qu*sw2C,
	      gAuC->1/2 I3u,
	      gVlC->1/2 I3l-Ql*sw2C,
	      gAlC->1/2 I3l,
	      gVuxx1->gVu^2 gVuC + gAu^2 gVuC + 2 gAu gAuC gVu,
	      gAuxx1->gAu^2 gAuC + gVu^2 gAuC + 2 gAu gVuC gVu,
	      gVlxx1->gVl^2 gVlC + gAl^2 gVlC + 2 gAl gAlC gVl,
	      gAlxx1->gAl^2 gAlC + gVl^2 gAlC + 2 gAl gVlC gVl,
	      gAlAuVlVu -> gAl gAu gVl,
	      gVl2PgAl2 -> gVl^2 gAl^2 ,
	      gVu2PgAu2 -> gVu^2 gAu^2,
	      gVlCPgAlC -> gVlC gAlC,
	      gVuCPgAuC -> gVuC gAuC,
	      ml->Sqrt[MM2],
	      ml2->MM2,
	      mZC2->muZC2,
	      mZ2->muZ2,
	      MZ2->muZ2,
	      MW2->muW2,
	      SW2->1-muW2/muZ2,
	      CW2->muW2/muZ2,
	      SW->Sqrt[SW2],
	      CW->Sqrt[CW2],
	      sw2->1-muW2/muZ2,
	      cw2->muW2/muZ2,
	      sw->Sqrt[sw2],
	      cw->Sqrt[1-sw2],
	      SW2C->1-muWC2/muZC2,
	      CW2C->muWC2/muZC2,
	      SWC->Sqrt[SW2C],
	      CWC->Sqrt[CW2C],
	      sw2C->1-muWC2/muZC2,
	      cw2C->muWC2/muZC2,
	      swC->Sqrt[sw2C],
	      cwC->Sqrt[1-sw2C],
	      S12->s12,
	      prc[x_,y_]->1/(x-y),
	      ratZoL2->muZ2/ml2,
	      ratZoW2->muZ2/muW2,
	      xsupx ->xZ/(1+xZ),
	      prop[S12,mZC2]->muZ2/(s12-muZC2),
	      cBpropmW->muW2/(s12-muZC2),
	      cBpropmZ->muZ2/(s12-muZC2),
	      conjBprop->1/(s12-muZC2),
	      cBpropml->ml2/(s12-muZC2),
	      c->1/2 + I Sqrt[3]/2,
	      cb->1/2-I Sqrt[3]/2,
	      G[0,m1]->I Pi,
	      z2->Zeta[2],
	      z3->1.20205690315959428539973768831929090417};
subkinvar={ vZ->zmz, vpZ -> zpmz, ypZ -> zZ, ypW->zW, vpW->zpmw,
       isqvpw->I Sqrt[zpmw], 
       isqvpz->I Sqrt[zpmz],
       isqvz->I Sqrt[zmz],
	   xl->-(Sqrt[s12]-Sqrt[-4*ml^2+s12])/(Sqrt[s12]+Sqrt[-4*ml^2+s12]),
	   yl->-s13/ml^2,
	   zl-> -s23/ml^2,
	   xW->-(Sqrt[s12]-Sqrt[-4*muW2+s12])/(Sqrt[s12]+Sqrt[-4*muW2+s12]),
	   yW->-s13/muW2, 
	   zW->-s23/muW2, 
	   xrW->-s12/muW2,
	   xZ-> -(Sqrt[s12]-Sqrt[-4*muZ2+s12])/(Sqrt[s12]+Sqrt[-4*muZ2+s12]),
	   yZ->-s13/muZ2,
	   zZ->-s23/muZ2,
	   xrZ->-s12/muZ2}; 

subflags={flagAA->1, flagAZ->1, flagZZ->1,flagW->1};


evaluate[expr_,st_List,subconst_] := Module[{temp,sbx,kin},

subloc={s12->sgrid[[st[[1]] ]]^2,
        s13->MM^2-sgrid[[st[[1]] ]]^2/2 (1-Sqrt[1-4 MM^2/sgrid[[ st[[1]]]]^2] thgrid[[ st[[2]] ]]),
        mu->sgrid[[st[[1]] ]]  }//. subconst;


temp = expr /. subloc /. {n->4,NC->3};
temp = temp /. {ctAA0-> ctAA1L, ctAZ0-> ctAZ1L, ctZA0-> ctZA1L, ctZZ0-> ctZZ1L};
temp = temp /. {mu2->91.1535^2,divflag->0};
temp = temp //. subsymbols //. subconst /. subloc;
temp = temp /. {flagAA1L->1, flagAZ1L->1, flagZZ1L->1,flagZZWF->1,flagZZmZ->1};

 temp = temp /. myB0i[bb0,a_,b_,c_]:>mymyB0i[a,b,c,91.1535^2]; 
(*temp = temp /. myB0i->B0i; *)
temp

];


vertself = asr*borncf*Cf*gA4*
 ((((8*ctAZ0*Qu*(gAlC*gAuC*gVl*s12*(s12 + 2*s13) + gAl*gAuC*gVlC*s12*
          (s12 + 2*s13) + gAl*gAlC*gVuC*(-2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2) + gVl*gVlC*gVuC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2))*(8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12*(-mZC2 + s12)) + 
      (8*ctZA0*Ql*(gAlC*gAuC*gVu*s12*(s12 + 2*s13) + gAlC*gAu*gVuC*s12*
          (s12 + 2*s13) + gAu*gAuC*gVlC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2) + gVlC*gVu*gVuC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2))*(8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12*(-mZC2 + s12)))/
     (cwC^2*swC^2) + (8*ctZA0*gVu*Ql^2*Qu*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
       2*s13^2)*(8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12^2) + 
    (8*ctAZ0*gVl*Ql*Qu^2*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)*
      (8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12^2))/(cw*sw) + 
  ((8*ctZZ0*Ql*Qu*(gAl*gAu*s12*(s12 + 2*s13) + 
       gVl*gVu*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2))*
      (8 + 3*IPi - 7*z2))/((mZ2 - s12)^2*s12) + 
    (8*ctZZ0*(gAl*(gVlC*(gAuC*gVu + gAu*gVuC)*s12*(s12 + 2*s13) - 
         gAlC*(gAu*gAuC + gVu*gVuC)*(2*ml^2*s12 - s12^2 - 2*s12*s13 - 
           2*s13^2)) + gVl*(gAlC*gAuC*gVu*s12*(s12 + 2*s13) + 
         gAlC*gAu*gVuC*s12*(s12 + 2*s13) + gAu*gAuC*gVlC*
          (2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2) + 
         gVlC*gVu*gVuC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)))*
      (8 + 3*IPi - 7*z2))/(cwC^2*(mZ2 - s12)^2*(-mZC2 + s12)*swC^2))/
   (cw^2*sw^2) + (8*ctAA0*Ql^2*Qu^2*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
     2*s13^2)*(8 + 3*IPi - 7*z2))/s12^3 + 
  (8*ctAA0*Ql*Qu*(gAlC*gAuC*s12*(s12 + 2*s13) + 
     gVlC*gVuC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2))*
    (8 + 3*IPi - 7*z2))/(cwC^2*s12^2*(-mZC2 + s12)*swC^2))




(*
vertself=asr*borncf*Cf*gA4*
 (
  (((8*ctAZ0*Qu*(gAl*(gAuC*gVlC*s12*(s12 + 2*s13) + gAlC*gVuC*
            (-2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)) + 
         gVl*(gAlC*gAuC*s12*(s12 + 2*s13) + gVlC*gVuC*(2*ml^2*s12 + s12^2 + 
             2*s12*s13 + 2*s13^2)))*(8 + 3*IPi - 7*z2))/
       (s12*(-mZ2 + s12)*(-mZC2 + s12)) - 
      (8*ctZA0*Ql*(gAu*(gAlC*gVuC*s12*(s12 + 2*s13) + 
           gAuC*gVlC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)) + 
         gVu*(gAlC*gAuC*s12*(s12 + 2*s13) + gVlC*gVuC*(2*ml^2*s12 + s12^2 + 
             2*s12*s13 + 2*s13^2)))*(8 + 3*IPi - 7*z2))/
       ((mZ2 - s12)*s12*(-mZC2 + s12)))/(cwC^2*swC^2) - 
    (8*ctZA0*gVu*Ql^2*Qu*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)*
      (8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12^2) - 
    (8*ctAZ0*gVl*Ql*Qu^2*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)*
      (8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12^2))/(cw*sw) + 
  ((8*ctZZ0*Ql*Qu*(gAl*gAu*s12*(s12 + 2*s13) + 
       gVl*gVu*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2))*
      (8 + 3*IPi - 7*z2))/((mZ2 - s12)^2*s12) + 
    (8*ctZZ0*(gAl*(gVlC*(gAuC*gVu + gAu*gVuC)*s12*(s12 + 2*s13) - 
         gAlC*(gAu*gAuC + gVu*gVuC)*(2*ml^2*s12 - s12^2 - 2*s12*s13 - 
           2*s13^2)) + gVl*(gAu*(gAlC*gVuC*s12*(s12 + 2*s13) + 
           gAuC*gVlC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)) + 
         gVu*(gAlC*gAuC*s12*(s12 + 2*s13) + gVlC*gVuC*(2*ml^2*s12 + s12^2 + 
             2*s12*s13 + 2*s13^2))))*(8 + 3*IPi - 7*z2))/
     (cwC^2*(mZ2 - s12)^2*(-mZC2 + s12)*swC^2))/(cw^2*sw^2) + 
  (8*ctAA0*Ql^2*Qu^2*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)*
    (8 + 3*IPi - 7*z2))/s12^3 - 
  (8*ctAA0*Ql*Qu*(gAlC*gAuC*s12*(s12 + 2*s13) + 
     gVlC*gVuC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2))*
    (8 + 3*IPi - 7*z2))/(cwC^2*(mZC2 - s12)*s12^2*swC^2));
    (*vertself = vertself /. {IPi\[Rule] f5IPi}*) *)


prevertself=vertself //. subsymbols /. subcharges //. subconst// Simplify


Do[If[ Mod[i,130]===0,Print["VertSelf ",i,"  ",j]]; aasvertself[i,j]=evaluate[prevertself,{i,j},subconst],  {j,1,25}, {i,1,130}]
Print["valutati vert-self"];



preborn= squaredborn /.{n->4, NC->3} //. {s23->-s12-s13+2 ml^2} /. subsymbols //. subconst;
Do[If[ Mod[i,130]===0,Print["Born ",i,"  ",j]]; born[i,j]=evaluate[preborn,{i,j},subconst],  {j,1,25}, {i,1,130}]
Print["valutati il born"];


born[2,3]


lvs=Table[ val=Re[aasvertself[i,j]  ]; {sgrid[[i]],thgrid[[j]], val} , {i,1,130},{j,1,25}]; 


lvsdelta=Table[ val= Re[aasvertself[i,j]  ] / Re[born[i,j]] ; {sgrid[[i]],thgrid[[j]], val} , {i,1,130},{j,1,25}];


ListPlot3D[ Flatten[lvsdelta,1], PlotRange->All ]



norm=Alfa^3 Alfas 48;
Do[

WriteString[FILE,i,"  ",j,"  ",(Re[aasvertself[i,j]]/Re[born[i,j]] *(Pi/Alfa) (Pi/Alfas))/.subconst ,"\n"],
{i,1,130},{j,1,25}
]


-Log[10.]+2


Coefficient[ prevertself, ctAZ0] /. {s13->-s12/2 (1-cth), s23->-s12/2 (1+cth)} /. {s12->91.1876^2, cth->0}


8.-7 Zeta[2]


Collect[ctAA1L /. flagAA1L->0 /. myB0i[__]->1/eps, eps, Simplify]


mio=-Integrate[ Log[x-x1] + Log[x-x2] + Log[q2/mu2], {x,0,1}] // Expand


mio=mio //. {-Log[1-x1]-Log[1-x2]->-Log[(1-x1)(1-x2)], x1 Log[1-x1]-x1 Log[-x1]-> x1 Log[(1-x1)/(-x1)], x2 Log[1-x2]-x2 Log[-x2] -> x2 Log[(1-x2)/(-x2)]}


due=x^2 q2 -x q2 + m12;


sol=x /. Solve[due==0,x] // Simplify


xr=1-1/sol[[1]] //Together // Simplify


1-1/sol[[2]] //Together // Simplify


mio=mio /. Times[x1,Log[Times[-1,Plus[1,Times[-1,x1]],Power[x1,-1]]]]-> x1 Log[xr] /. Times[x2,Log[Times[-1,Plus[1,Times[-1,x2]],Power[x2,-1]]]]->-x2 Log[xr] /.   //Simplify


FullForm[mio]


mio=mio //. Log[(-1+x1)(-1+x2)]->Log[m12/mu2]-Log[q2/mu2]


mio=mio /. (x1-x2) -> sol[[1]]-sol[[2]] // Simplify





B0i[bb0,0,10,10]


mymyB0i[0,0,1.]


-Integrate[ Log[q2/mu2] + Log[x^2-x], {x,0,1}]


mio // InputForm


lvsdelta


aasvertself[1,1]


VB


deltagAminusDeltar1L /. subsymbols //. subconst /. myB0i->B0i





137.035999 ctAA1L//.subsymbols /. subcharges//. subconst /. s12->300^2  /. {myB0i->B0i } /. mu2->91.1535^2// Expand


SetMudim[91.1535^2]


Collect[ ctAA1L /. myB0i[__]->1/eps /. {MW2->muW2, MZ2->muZ2, CW2->muW2/muZ2, SW2->1-muW2/muZ2}, eps, Simplify]


Coefficient[ %23, eps, -1] /. {flagAA1L->1, flagSW2->-1} // Simplify


lvs


Pigagalept1L /. {mu2->91.1535^2} //. subconst


DeltaalphahadOpenLoops


mymyB0i[100000.-I ,0,0,91.1535^2]
