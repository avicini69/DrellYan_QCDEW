(* ::Package:: *)

(* ::Input:: *)
(*maindir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/numerics/complexmass/";*)


(* ::Input:: *)
(*fileborn= maindir <> "uU_outlo.txt";*)
(*fileAA= maindir <> "uU_outAA11.txt";*)
(*fileAZ= maindir <> "uU_outAZ11.txt";*)
(*(*fileZZ= maindir <> "uU_outZZ11-cmplx.dat"; *)
(*fileW= maindir <> "uU_outW11-cmplx.dat";*)*)
(*fileZZ= maindir <> "uU_outZZ11_pialla.dat"; *)
(*fileW= maindir <> "uU_outW11_pialla.dat";*)
(*fileprop= maindir <> "propagators-delta.dat";*)
(*filevertself = maindir <> "vertself-delta.dat";*)
(**)
(*filefsrlog= maindir <> "fsrlogs-delta.dat";*)
(**)
(*fileAZPA= maindir <> "uU_outAZ11PA.txt";*)
(*fileZZPA= maindir <> "resZZPA.dat"; *)
(*fileWPA= maindir <> "resWPA.dat";*)
(**)
(**)
(*fileAAnlo= maindir <> "nloPA/uU_outAA01.txt";*)
(*fileAZnlo= maindir <> "nloPA/uU_outAZ01.txt";*)
(*fileWnlo= maindir <> "nloPA/uU_outW01.txt";*)
(*fileZZnlo= maindir <> "nloPA/uU_outZZ01.txt";*)
(*filepropnlo= maindir <> "propagators-nloew.dat";*)
(**)
(*fileAZnloPA= maindir <> "nloPA/uU_outAZ01PA.txt";*)
(*fileWnloPA= maindir <> "nloPA/uU_outW01PA.txt";*)
(*fileZZnloPA= maindir <> "nloPA/uU_outZZ01PA.txt";*)
(**)
(*(*  "amodresW.dat"; "resWPA.dat"; "uU_outAZ11PA.txt"; *)*)
(*Get[maindir<>"grid-input-st.res"];*)
(**)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*valborn = ReadList[fileborn,{Real,Real,Expression}];*)
(*valAA = ReadList[fileAA,{Real,Real,Expression}];*)
(*valAZ = ReadList[fileAZ,{Real,Real,Expression}];*)
(*valZZ = ReadList[fileZZ,{Real,Real,Expression}];*)
(*valW = ReadList[fileW,{Real,Real,Expression}];*)
(*valAZPA = ReadList[fileAZPA,{Real,Real,Expression}];*)
(*valZZPA = ReadList[fileZZPA,{Real,Real,Expression}];*)
(*valWPA = ReadList[fileWPA,{Real,Real,Expression}];*)
(*valpropdelta = ReadList[fileprop,{Real,Real,Expression}];*)
(*valvertselfdelta = ReadList[filevertself,{Real,Real,Expression}];*)
(**)
(*valfsrlogsdelta = ReadList[filefsrlog,{Real,Real,Expression}];*)
(**)
(*nloAA = ReadList[fileAAnlo,{Real,Real,Expression}];*)
(*nloAZ = ReadList[fileAZnlo,{Real,Real,Expression}];*)
(*nloZZ = ReadList[fileZZnlo,{Real,Real,Expression}];*)
(*nloW = ReadList[fileWnlo,{Real,Real,Expression}];*)
(*nloprop = ReadList[filepropnlo,{Real,Real,Expression}];*)
(**)
(*nloAZPA = ReadList[fileAZnloPA,{Real,Real,Expression}];*)
(*nloZZPA = ReadList[fileZZnloPA,{Real,Real,Expression}];*)
(*nloWPA = ReadList[fileWnloPA,{Real,Real,Expression}];*)
(**)
(**)


fullborn = Table[ {valborn[[i,1]],valborn[[i,2]], valborn[[i,3]] 48 Pi^2 (1/137.035999074)^2   }, {i,1,Length[ valborn]}];
modborn = Table[ {valborn[[i,1]],valborn[[i,2]], valborn[[i,3]]}, {i,1,Length[ valborn]}];
valAAdelta=Table[ {valAA[[i,1]],valAA[[i,2]], valAA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valAA]}];
valAZdelta=Table[ {valAZ[[i,1]],valAZ[[i,2]], valAZ[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valAZ]}];
valZZdelta=Table[ {valZZ[[i,1]],valZZ[[i,2]], valZZ[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valZZ]}];
valWdelta=Table[  {valW[[i,1]], valW[[i,2]],  valW[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valW]}];
valAZdeltaPA=Table[ {valAZPA[[i,1]],valAZPA[[i,2]], valAZPA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valAZPA]}];
valZZdeltaPA=Table[ {valZZPA[[i,1]],valZZPA[[i,2]], valZZPA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valZZPA]}];
valWdeltaPA=Table[  {valWPA[[i,1]], valWPA[[i,2]],  valWPA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valWPA]}];

nloAAdelta=Table[ {nloAA[[i,1]],nloAA[[i,2]], nloAA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ nloAA]}];
nloAZdelta=Table[ {nloAZ[[i,1]],nloAZ[[i,2]], nloAZ[[i,3]]/modborn[[i,3]] }, {i,1,Length[ nloAZ]}];
nloZZdelta=Table[ {nloZZ[[i,1]],nloZZ[[i,2]], nloZZ[[i,3]]/modborn[[i,3]] }, {i,1,Length[ nloZZ]}];
nloWdelta=Table[  {nloW[[i,1]], nloW[[i,2]],  nloW[[i,3]]/modborn[[i,3]] }, {i,1,Length[ nloW]}];
nloAZdeltaPA=Table[ {nloAZPA[[i,1]],nloAZPA[[i,2]], nloAZPA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ nloAZPA]}];
nloZZdeltaPA=Table[ {nloZZPA[[i,1]],nloZZPA[[i,2]], nloZZPA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ nloZZPA]}];
nloWdeltaPA=Table[  {nloWPA[[i,1]], nloWPA[[i,2]],  nloWPA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ nloWPA]}];
nlopropdelta=Table[ {nloprop[[i,1]],nloprop[[i,2]], nloprop[[i,3]]/fullborn[[i,3]] }, {i,1,Length[ nloprop]}];


(* ::Input:: *)
(*myplot[dl_List, col_]:=ListPlot3D[ Table[ {sgrid[[ dl[[i,1]] ]], thgrid[[dl[[i,2]] ]],2 Re[dl[[i,3]]]},*)
(*{i,50,1650}], PlotRange->{-300,300}, PlotStyle->col, Background->White];*)
(*myplotdelta[nl_List, dl_List]:=*)
(*ListPlot3D[ Table[ val=Re[nl[[i,3]] ]/Re[dl[[i,3]]];{sgrid[[ dl[[i,1]] ]], thgrid[[dl[[i,2]] ]],val},*)
(*{i,1,3250}], PlotRange->{-0.02,0.02}];*)
(**)


val0 = Flatten[ Table[index=25 (i-1)+j; val= valAZdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val1 = Flatten[ Table[index=25 (i-1)+j; val=valAZdeltaPA[[index,3]]+ valZZdeltaPA[[index,3]]+ valWdeltaPA[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val2 = Flatten[ Table[index=25 (i-1)+j; val=valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val3 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val3bis = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]]-valfsrlogsdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val4 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]] + valpropdelta[[index,3]] ;  {i,j,val },{i,1,130},{j,1,25}], 1];
val5 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]] + valpropdelta[[index,3]] + valvertselfdelta[[index,3]] ;  {i,j,val },{i,1,130},{j,1,25}], 1];
val6 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]] + valpropdelta[[index,3]] + valvertselfdelta[[index,3]] -valfsrlogsdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];


outputfile= maindir <> "uU_totaldelta_vertbox.dat"; DeleteFile[outputfile]; OpenWrite[outputfile];
valtotaldelta = Table[{val3bis[[i,1]],val3bis[[i,2]], 2 Re[val3bis[[i,3]]]},{i,1,3250}];
Do[index=25*(i-1)+j; WriteString[outputfile,i,"  ",j,"  ",valtotaldelta[[index,3]],"\n" ], {i,1,130},{j,1,25}];
Close[outputfile];
outputfile= maindir <> "uU_totaldelta_unsubtracted.dat"; DeleteFile[outputfile]; OpenWrite[outputfile];
valtotaldeltanosub = Table[{val5[[i,1]],val5[[i,2]], 2 Re[val5[[i,3]]]},{i,1,3250}];
Do[index=25*(i-1)+j; WriteString[outputfile,i,"  ",j,"  ",valtotaldeltanosub[[index,3]],"\n" ], {i,1,130},{j,1,25}];
Close[outputfile];
outputfile= maindir <> "uU_totaldelta_PA.dat"; DeleteFile[outputfile]; OpenWrite[outputfile];
valtotaldeltaPA = Table[{val1[[i,1]],val1[[i,2]], 2 Re[val1[[i,3]]]},{i,1,3250}];
Do[index=25*(i-1)+j; WriteString[outputfile,i,"  ",j,"  ",valtotaldeltaPA[[index,3]],"\n" ], {i,1,130},{j,1,25}];
Close[outputfile];


(* ::InheritFromParent:: *)
(**)


valW[[100]]


(* ::InheritFromParent:: *)
(**)


Do[Print[valW[[i]]," ",modborn[[i,3]]," ",valWdelta[[i]]     ],{i,96,100}]


Do[Print[valWdelta[[i]]],{i,121,125}]


Do[Print[valWdelta[[i]]],{i,101,105}]


myplot[val0, Automatic]


myplot[val1, Automatic]


myplot[val2, Automatic]


myplot[val3, Automatic]


myplot[val3bis, Automatic]


myplot[val4, Automatic]


myplot[val5, Automatic]


myplot[val6, Automatic]


(* ::InheritFromParent:: *)
(**)


myplot[valvertselfdelta, Automatic]


myplot[valpropdelta, Automatic]


myborn=Map[ #[[3]] &, valborn];


mypropdelta=Map[ #[[3]] &, valpropdelta];
myvertselfdelta=Map[ #[[3]] &, valvertselfdelta];
myNfaasdelta=(*mypropdelta+*)myvertselfdelta;


Nfaas = myborn myNfaasdelta 1/137. 0.118 1/Pi^2;


Nfaass=Table[ Sum[ Nfaas[[i]], {i,25 (j-1) + 1, 25 j}], {j,1,130}];


borns = Table[ Sum[ myborn[[i]], {i,25 (j-1) + 1, 25 j}], {j,1,130}];


deltaNfaas=Nfaass/borns;


ListPlot[ Table[ {sgrid[[i]],deltaNfaas[[i]]}, {i,1,70}],PlotRange->All]


Show[myplot[nloAZdelta,Red],myplot[nloAZdeltaPA,Blue]]


Show[myplot[nloZZdelta,Red],myplot[nloZZdeltaPA,Blue]]


Show[myplot[nloWdelta,Red],myplot[nloWdeltaPA,Blue]]


thgrid[[25]]


nloAZPA


nloPA=Table[  { nloAZPA[[i,1]], nloAZPA[[i,2]],  nloAZPA[[i,3]]+nloZZPA[[i,3]]+nloWPA[[i,3]] }, {i,1,3250}]


nloexactnoself=Table[  { nloAZ[[i,1]], nloAZ[[i,2]],  nloAA[[i,3]]+nloAZ[[i,3]]+nloZZ[[i,3]]+nloW[[i,3]] }, {i,1,3250}]


norm=48 Pi^2 Alfa^2 //. {Alfa -> 1/137.035999}


nloexact=Table[  { nloAZ[[i,1]], nloAZ[[i,2]],  nloAA[[i,3]]+nloAZ[[i,3]]+nloZZ[[i,3]]+nloW[[i,3]]+  nloprop[[i,3]]/norm }, {i,1,3250}]


nloratio = Table[  { nloAZ[[i,1]], nloAZ[[i,2]],  Re[(nloAA[[i,3]]+nloAZ[[i,3]]+nloZZ[[i,3]]+nloW[[i,3]]+nloprop[[i,3]]/norm)]/Re[(nloAZPA[[i,3]]+nloZZPA[[i,3]]+nloWPA[[i,3]] )] }, {i,1,3250}]




Show[ myplot[ nloPA,Blue], myplot[nloexact,Yellow] ]


myplot[nloratio, Automatic]


myborn[[1]]


nloPAs =Table[ Sum[ nloPA[[i]], {i,25 (j-1) + 1, 25 j}], {j,1,130}];
nloexacts =Table[ Sum[ nloexact[[i]], {i,25 (j-1) + 1, 25 j}], {j,1,130}];
nloprops =Table[ Sum[ nloprop[[i]], {i,25 (j-1) + 1, 25 j}], {j,1,130}];
nloratios=Table[ Re[nloexacts[[i,3]] ]/Re[nloPAs[[i,3]] ], {i,1,130} ];


nloratios[[35]]


ListPlot[ Table[ {sgrid[[i]],Re[nloratios[[i,3]] ]}, {i,1,70}],PlotRange->{0.9,1.1}]


deltanloprops= Re[nloprops]/norm/Re[borns];


ListPlot[ Table[ {sgrid[[i]],deltanloprops[[i,3]]}, {i,1,70}],PlotRange->All]


totint = myborn val1 1/137.035999/Pi 0.118/Pi;
totints =Table[ Sum[ 2 Re[totint[[i,3]] ], {i,25 (j-1) + 1, 25 j}], {j,1,130}];
deltatotints = totints/Re[borns];
ListPlot[ Table[ {sgrid[[i]],deltatotints[[i]]}, {i,1,70}],PlotRange->All]


thgrid


nloprop[[1000]]


fullborn[[1000]]


modborn[[1000]]


3 16 Pi^2 (1/137.)^2


1/137.03555/Pi 0.118/Pi


Length[ valvertselfdelta]
