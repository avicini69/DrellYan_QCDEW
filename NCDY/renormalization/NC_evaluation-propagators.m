(* ::Package:: *)

(* ::Input::Initialization:: *)
$MinPrecision=32;
$MaxPrecision=32;
maindir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/renormalization2022/";
inputvalues=maindir<>"grid-input-st.res";
Get[inputvalues];

initialstate=dD;

fileborn=maindir<>"NC_" <> ToString[initialstate]<>"_Born.m";
Get[fileborn];
(*fileprop=maindir<>"2L/formula2L-prop-aas.res";*)
fileprop=maindir<>"NC_"   <>ToString[initialstate]<>"_CTLO.m";
Get[fileprop];

EWinputscheme=Gmu;

filect=maindir<>"CT2Ltest.m";
Get[filect];


FILE=maindir<>"NC_numerics/"<>ToString[initialstate] <> "-propagators-"<>ToString[EWinputscheme]<>".dat"; 
DeleteFile[FILE];OpenWrite[FILE];
FILE2=maindir<>"NC_numerics/"<>ToString[initialstate] <> "-propagators-delta-"<>ToString[EWinputscheme]<>".dat"; 
DeleteFile[FILE2];OpenWrite[FILE2];
FILE3 = maindir<>"NC_numerics/"<>ToString[initialstate] <> "-born.dat";
DeleteFile[FILE3];OpenWrite[FILE3];
FILE4 = maindir<>"NC_numerics/"<>ToString[initialstate] <> "-fsrlogs-delta.dat"; 
DeleteFile[FILE4];OpenWrite[FILE4];



(* ::Input::Initialization:: *)
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
	    mZ->91.153,
	    GaW->2.083,
	    GaZ->2.4952,
	    MH2->125^2,
	    Alfa->1/137.035999074,
	    Alfas ->0.118,
	    mu2->muZ2};

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
LlZ->gA/cw/sw,NnZ->gA/cw/sw,LlZC->gA/cwC/swC,LlphC->Ql*gA,Llph->Ql*gA,NlW->gA/sw/2/Sqrt[2],LnW->gA/sw/2/Sqrt[2],UdW->gA/sw/2/Sqrt[2],DuW->gA/sw/2/Sqrt[2],Uuph->Qu*gA,UuphC->Qu*gA,UuZ->gA/cw/sw,UuZC->gA/cwC/swC,Ddph->Qd*gA,DdZ->gA/cw/sw, DdphC->Qd*gA,DdZC->gA/cwC/swC,TtZ->gA/cw/sw,
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


insertconstexpr[expr_,const_,symb_,kin_] := Module[{temp},
(*
sloc=sgrid[[st[[1]] ]];
tloc=-sloc/2 (1-thgrid[[ st[[2]] ]]);
*)
subinvarloc={s12->sloc,s13->tloc,s23->-sloc-tloc+2 ml^2,
                 s->sloc,t->tloc,   u->-sloc-tloc+2 ml^2};
subinvarloc=subinvarloc //.symb//.const;

kinlocal=kin /.subinvarloc//.symb//.const;
kinlocal = Join[subinvarloc,kinlocal];
Print["fatto kinlocal"];
subb1 = subbox1L  /. subinvarloc /. { GPL[x_List,y_] :> G @@ Append[x,y] } /. one->1;
Print["pronti i boxes"];
temp=expr //. const //. kinlocal;
Print["total expr"];
ris={temp,kinlocal,subb1};
ris
];


(* ::Input::Initialization:: *)
evaluate[expr_,st_List,const_,ord_] := Module[{temp,sbx,kin},
Clear[ggg];
subloc={sloc->sgrid[[st[[1]] ]]^2,
        tloc->MM^2-sgrid[[st[[1]] ]]^2/2 (1-Sqrt[1-4 MM^2/sgrid[[ st[[1]]]]^2] thgrid[[ st[[2]] ]]),
        mu->sgrid[[st[[1]] ]]  }//. const;

kin=expr[[2]] /. subloc ;

temp=expr[[1]];


temp = temp /. {ctAA->ctAA2L, ctAZ->ctAZ2L, ctZA->ctZA2L, ctZZ->ctZZ2L};
temp = temp /. {s12->sloc, s13->tloc, s23->-sloc-tloc+2 ml2};
temp = temp /. subloc /. {n->4,NC->3} //. const;

temp= temp /. {myPiV->PiV, myPiA->PiA, myderPiV->derPiV, myderPiA->derPiA};
temp = temp /. {L[_]->0,mu2->muZ2} /. subsymbols /. subcharges//. const ;
temp = temp /. {H[0,m1]->I Pi, H[0,x_] -> Log[x]};
temp = temp /. { fTopo21Lbox->1};
(*Print[st,subloc, temp];*)
(*temp =  temp /. {flagAA->1, flagAZ->1, flagZZ->1, flagW->1, fTopo21Lbox->1};*)
temp

];


(* ::Input::Initialization:: *)
propcorrection = bornins //. subsymbols /. subcharges //. subconst;

preprop = insertconstexpr[propcorrection,subconst,subsymbols,subkinvar];


bornins


Do[If[ Mod[i,130]===0,Print["Prop ",i,"  ",j]]; aasprop[i,j]=evaluate[preprop,{i,j},subconst,Prop],  {j,1,25}, {i,1,130}]
Print["valutati i propagatori"];



aasprop[1,1] /. subflags


preborn


preborn= {squaredborn /.{n->4, NC->3} //. {s12->sloc,s13->tloc,s23->-sloc-tloc+2 ml^2} /. subsymbols //. subconst,subkinvar, ciao};
Do[If[ Mod[i,130]===0,Print["Born ",i,"  ",j]]; born[i,j]=evaluate[preborn,{i,j},subconst,Born],  {j,1,25}, {i,1,130}];
Print["valutati il born"];



(* ::Input::Initialization:: *)
lprop=Table[ val=Re[aasprop[i,j]  /. subflags /. {flagZZmZ->1, flagZZWF->1, flagAZct1->1, flagAZct2->1, flagAAct->1}]; {sgrid[[i]],thgrid[[j]], val} , {i,1,130},{j,1,25}];



ListPlot3D[Flatten[lprop,1], PlotRange->All]


lprop[[12,12]]


lpropdelta=Table[ val=lprop[[i,j,3]] /( Re[born[i,j]]); {sgrid[[i]],thgrid[[j]], val} , {i,1,67},{j,1,25}];


Flatten[lpropdelta, 1];



ListPlot3D[Flatten[lpropdelta,1] /. {flagAA->1, flagAZ->1, flagZZmZ->1, flagZZWF->1}, PlotRange->All]


lborn=Table[ val=Re[born[i,j]]; {sgrid[[i]],thgrid[[j]], val} , {i,1,130},{j,1,25}];


ListPlot3D[Flatten[lborn,1], PlotRange->{0,10}]


normalization = Alfa^3 Alfas 16 3


numnorm = normalization /. subconst





Do[ WriteString[FILE,i," ",j," "]; Write[FILE,lprop[[i,j,3]] ], {i,1,130},{j,1,25}]


Close[FILE];





Do[ WriteString[FILE2,i," ",j," "]; Write[FILE2,Re[lprop[[i,j,3]]]/Re[lborn[[i,j,3]]] *(Pi/Alfa) (Pi/Alfas) /. subconst       ], {i,1,130},{j,1,25}]





Do[ WriteString[FILE3,i," ",j," "]; Write[FILE3,lborn[[i,j,3]] ], {i,1,130},{j,1,25}]


NNLOmlLOG = (Cf*Ql^2*(-1 + Log[ml2/s12])*Log[ml2/s12]*(-48 + 7*Pi^2))/96;


fsrlog[s12_] =NNLOmlLOG /. subsymbols /. subcharges //. subconst


lfsrlog = Table[ val=fsrlog[ sgrid[[i]]^2   ]; {sgrid[[i]],thgrid[[j]], val} , {i,1,130},{j,1,25}];


ListPlot3D[Flatten[lfsrlog,1], PlotRange->All]





Do[ WriteString[FILE4,i," ",j," "]; Write[FILE4,lfsrlog[[i,j,3]] ], {i,1,130},{j,1,25}]


(*
sigma = sigma_0 (1 + alpha/Pi delta_alpha + alphas/Pi delta_alphas + (alpha/Pi) (alphas/Pi) delta_{a as}+...)
*)


lprop


Collect[CF/8 * ( ( -8 + 43*Pi^2/6 )* Log[s/ml^2] + (-8+7*Pi^2/6)*Log[s/ml^2]^2 ) /.{Log[s/ml^2]->-Log[ml^2/s]-I Pi } ,Log[_],Simplify]


PiV[a,0,0]


Normal[Series[f1[a,0],{eps,0,0}]]


Collect[%51 /. Log[4]->2 Log[2],{eps,Log[_]},Simplify]


%54 /. Log[Pi] -> Log[4 Pi] -2 Log[2]  // Expand


55./48 - Zeta[3]


prova[s12_] =ctZZ2L /. {MT->173, Qu->2/3, Qd->-1/3, SW2->0.2222, CW2->0.7778, Alfa->1/137., Alfas->0.118, muW2->(80.38+I 1.02)^2, muZ2->(91.187+I 1.22)^2,flagZZWF->1,flagZZmZ->1}
(*prova[s12_] =myPiV[Sqrt[s12],MT,MT] /. {MT\[Rule]173, Qu\[Rule]2/3, Qd\[Rule]-1/3, SW2\[Rule]0.2222, CW2\[Rule]0.7778, Alfa\[Rule]1/137., Alfas\[Rule]0.118, muW2\[Rule](80.38+I 1.02)^2, muZ2\[Rule](91.187+I 1.22)^2,flagZZWF\[Rule]1,flagZZmZ\[Rule]1}*)


protab=Table[ {sgrid[[i]], prova[sgrid[[i]]^2] //. {myPiA->PiA,myPiV->PiV, L[_]->0,mu2->sgrid[[i]]^2}},{i,1,90}]


ListPlot[ Map[ {#[[1]], Re[#[[2]]]}&, protab], PlotRange->All]


Collect[deltagZminusDeltar2L //. {MT->173.2, SW2->1-CW2, CW2->muW2/muZ2, Qu->2/3, Qd->-1/3,mu2->91.153^2, muZ2->(91.153)^2, muW2->(80.358)^2,MW2-> 80.358^2,Alfa->1/137.035, Alfas->0.118}/. {myPiA->PiA,myPiV->PiV} /. {flagAA->1, mu2->(91.153)^2}, L[_], Simplify]


Collect[( deltaSW22L/SW2) //. {s12-> 40^2, MT->173.2, SW2->1-CW2, CW2->muW2/muZ2, Qu->2/3, Qd->-1/3,mu2->91.1876^2, muZ2->(91.1876)^2, muW2->(80.358)^2,MW2-> 80.358^2,Alfa->1/137.035, Alfas->0.118}/. {myPiA->PiA,myPiV->PiV} /. {flagAA->1, mu2->(91.1876)^2} , L[_], Simplify]


Collect[diffWW2L //. {s12-> 40^2, MT->173.2, SW2->1-CW2, CW2->muW2/muZ2, Qu->2/3, Qd->-1/3,mu2->91.1876^2, muZ2->(91.1876)^2, muW2->(80.358)^2,MW2-> 80.358^2,Alfa->1/137.035, Alfas->0.118}/. {myPiA->PiA,myPiV->PiV} /. {flagAA->1, mu2->(91.1876)^2} , L[_], Simplify]


Collect[ctAZ2L //. {s12-> 40^2, MT->173.2, SW2->1-CW2, CW2->muW2/muZ2, Qu->2/3, Qd->-1/3,mu2->91.1876^2, muZ2->(91.1876)^2, muW2->(80.358)^2,MW2-> 80.358^2,Alfa->1/137.035, Alfas->0.118}/. {myPiA->PiA,myPiV->PiV} /. {mu2->(91.1876)^2}, L[_], Simplify]


Collect[ selfAAs12 //. { MT->173.2, SW2->1-CW2, CW2->muW2/muZ2,Qu->2/3, Qd->-1/3, mu2->91.1876^2, muZ2->(91.1876)^2, muW2->(80.358)^2,MW2-> 80.358^2,Alfa->1/137.035, Alfas->0.118}/. {myPiA->PiA,myPiV->PiV} /. {mu2->(91.1876)^2}, L[_], Simplify]


Collect[ selfAAs12 /. {myPiA->PiA,myPiV->PiV}, L[_], Simplify]


Collect[ctAA2L //. {s12-> 91.18^2, MT->173.2, SW2->1-CW2, CW2->muW2/muZ2, Qu->2/3, Qd->-1/3,mu2->91.1876^2, muZ2->(91.1876)^2, muW2->(80.358)^2,MW2-> 80.358^2,Alfa->1/137.035, Alfas->0.118}/. {myPiA->PiA,myPiV->PiV} /. {mu2->(91.1876)^2}, L[_], Simplify]


lpropdelta /. {flagAZ->1, flagZZWF->0,flagZZmZ->0, flagAA->0}


ListPlot3D[ Take[Flatten[%137,1],1300] , PlotRange->{-0.01,0.01}  ]





aasprop[1,1] /. {flagAZct1->0,flagAZct2->0, flagAZ->0, flagZZmZ->0, flagZZWF->0} // Expand


Coefficient[propcorrection, flagAA]  /. n->4 /. {myPiV[___,MT,___]->0, myPiA[___,MT,___]->0, myPiV[0,0,0]->0, myPiA[0,0,0]->0, myPiV[Sqrt[muW2],0,0]->0, myPiA[Sqrt[muW2],0,0]->0, myPiV[Sqrt[muZ2],0,0]->0, myPiA[Sqrt[muZ2],0,0]->0} // Simplify


Coefficient[ %80, myPiV[Sqrt[s12],0,0] ] /.{s23->-s12-s13} // Simplify


ctAZ2L /. flagAZct1->1 /.subsymbols /. subcharges//. subconst /. s12->91.1876^2  /. {myPiV->PiV , myPiA->PiA} /. L[_]->0 /. mu2->91.1876^2


Coefficient[ %88, Qu^2] /. myPiV[___]->s12/(4 Pi^2)


nar=Alfa/(4 Pi) Alfas/(4 Pi) 4 Qu^2 s12 ( 2/eps +  4 Log[mu2/s12] +55/3 - 16 Zeta[3]) // Expand // Simplify


Collect[ nar, eps, Simplify]


ale = Alfas/Pi PiAA[ Sqrt[s12],0,0] /. myPiV->PiV /. Qd->0 /. L[_]->1/(2 eps) // Expand


ene={40,91,300}


Table[ctAZ2L /.subsymbols /. subcharges//. subconst /. s12->ene[[i]]^2  /. {myPiV->PiV , myPiA->PiA} /. L[_]->0 /. mu2->91.1876^2, {i,1,3}]


Table[ctZZ2L /.subsymbols /. subcharges//. subconst /. s12->ene[[i]]^2  /. {myPiV->PiV , myPiA->PiA} /. L[_]->0 /. mu2->91.1876^2, {i,1,3}]


Table[ctAA2L /.subsymbols /. subcharges//. subconst /. s12->ene[[i]]^2  /. {myPiV->PiV , myPiA->PiA} /. L[_]->0 /. mu2->91.1876^2, {i,1,3}]


squaredborn //. subconst /. n->4 /. NC->3 /. {s13->-s12/2, s23->-s12/2} /. s12->40^2


1.79/%


\[AliasDelimiter]
