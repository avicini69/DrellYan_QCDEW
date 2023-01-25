(* ::Package:: *)

link2=Install["/Users/vicini/cernbox/codici/LoopTools-2.16/x86_64-Darwin/bin/LoopTools"];
mymyB0i[q2_,m12_,mu2_] := Which[ q2=!=0 && m12=!=0, 2 - Log[m12/mu2] - (Sqrt[q2*(-4*m12 + q2)]*Log[(q2 + Sqrt[q2*(-4*m12 + q2)])/(-q2 + Sqrt[q2*(-4*m12 + q2)])])/q2, q2===0 && m12=!=0, -Log[m12/mu2], q2=!=0 && m12===0, 2-Log[-q2/mu2], q2===0 && m12===0, 0 ]


$MinPrecision=32;
$MaxPrecision=32;
maindir = "/Users/vicini/cernbox/fisica/DY/DY-aas/narayan/DrellYan_QCDxEW/";
inputvalues=maindir<>"2L/grid-input-st.res";
Get[inputvalues];
fileborn=maindir<>"numerics/dD_Born.m";
Get[fileborn];
filect=maindir<>"2L/Propagators/CT1L.m";
Get[filect];

FILE=maindir<>"numerics/dD-vertself-delta.dat";
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
	      gVdC->1/2 I3d-Qd*sw2C,
	      gAdC->1/2 I3d,
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
temp = temp //. subsymbols //. subconst /. subloc;
temp = temp /. {flagAA1L->1, flagAZ1L->1, flagZZ1L->1};

(*temp = temp /. myB0i[bb0,a_,b_,c_]:>mymyB0i[a,b,91.1876^2];*)
temp = temp /. myB0i->B0i;
temp

];


vertself= asr*borncf*Cf*gA4*
 ((((8*ctAZ0*Qd*(gAlC*gAdC*gVl*s12*(s12 + 2*s13) + gAl*gAdC*gVlC*s12*
          (s12 + 2*s13) + gAl*gAlC*gVdC*(-2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2) + gVl*gVlC*gVdC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2))*(8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12*(-mZC2 + s12)) + 
      (8*ctZA0*Ql*(gAlC*gAdC*gVd*s12*(s12 + 2*s13) + gAlC*gAd*gVdC*s12*
          (s12 + 2*s13) + gAd*gAdC*gVlC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2) + gVlC*gVd*gVdC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
           2*s13^2))*(8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12*(-mZC2 + s12)))/
     (cwC^2*swC^2) + (8*ctZA0*gVd*Ql^2*Qd*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
       2*s13^2)*(8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12^2) + 
    (8*ctAZ0*gVl*Ql*Qd^2*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)*
      (8 + 3*IPi - 7*z2))/((mZ2 - s12)*s12^2))/(cw*sw) + 
  ((8*ctZZ0*Ql*Qd*(gAl*gAd*s12*(s12 + 2*s13) + 
       gVl*gVd*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2))*
      (8 + 3*IPi - 7*z2))/((mZ2 - s12)^2*s12) + 
    (8*ctZZ0*(gAl*(gVlC*(gAdC*gVd + gAd*gVdC)*s12*(s12 + 2*s13) - 
         gAlC*(gAd*gAdC + gVd*gVdC)*(2*ml^2*s12 - s12^2 - 2*s12*s13 - 
           2*s13^2)) + gVl*(gAlC*gAdC*gVd*s12*(s12 + 2*s13) + 
         gAlC*gAd*gVdC*s12*(s12 + 2*s13) + gAd*gAdC*gVlC*
          (2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2) + 
         gVlC*gVd*gVdC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2)))*
      (8 + 3*IPi - 7*z2))/(cwC^2*(mZ2 - s12)^2*(-mZC2 + s12)*swC^2))/
   (cw^2*sw^2) + (8*ctAA0*Ql^2*Qd^2*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 
     2*s13^2)*(8 + 3*IPi - 7*z2))/s12^3 + 
  (8*ctAA0*Ql*Qd*(gAlC*gAdC*s12*(s12 + 2*s13) + 
     gVlC*gVdC*(2*ml^2*s12 + s12^2 + 2*s12*s13 + 2*s13^2))*
    (8 + 3*IPi - 7*z2))/(cwC^2*s12^2*(-mZC2 + s12)*swC^2));




prevertself=vertself //. subsymbols /. subcharges //. subconst// Simplify


Do[If[ Mod[i,130]===0,Print["VertSelf ",i,"  ",j]]; aasvertself[i,j]=evaluate[prevertself,{i,j},subconst],  {j,1,25}, {i,1,130}]
Print["valutati vert-self"];



preborn= squaredborn /.{n->4, NC->3} //. {s23->-s12-s13+2 ml^2} //. subsymbols /. subcharges //. subconst;
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


squaredborn //. subsymbols //. subconst //. subcharges
