(* ::Package:: *)

(* ::Input:: *)
(*(*maindir = "/Users/vicini/cernbox/fisica/DY/DY-aas/narayan/DrellYan_QCDxEW/numerics/";*)*)
(**)
(*maindir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/NCDY/numerics/inputdata/";*)
(*renormdir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/NCDY/numerics/renormalization/NC_numerics/";*)
(*outputdir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/NCDY/numerics/results/finaloutput/";*)


(* ::Input:: *)
(*fileborn= maindir <> "newdD_outlo.txt";*)
(*fileAA= maindir <> "dD_outAA11.txt";*)
(*fileAZ= maindir <> "dD_outAZ11.txt";*)
(*fileZZ= maindir <> "dD_outZZ11_2022.dat"; *)
(*fileW= maindir <> "dD_outW11_2022.dat";*)
(**)
(*EWinputscheme=alpha0;*)
(**)
(*fileprop= renormdir <> "dD-propagators-delta-"<>ToString[EWinputscheme]<>".dat";*)
(*filevertself = renormdir <> "dD-vertself-delta-"<>ToString[EWinputscheme]<>".dat";*)
(*filefsrlog= renormdir <> "dD-fsrlogs-delta.dat";*)
(**)
(*Get[maindir<>"grid-input-st.res"];*)
(**)
(*outputfile1= outputdir <> "dD_totaldelta2022-"<>ToString[EWinputscheme]<>".dat"; DeleteFile[outputfile1]; OpenWrite[outputfile1];*)
(*outputfile2= outputdir <> "dD_totaldelta2022_unsubtracted-"<>ToString[EWinputscheme]<>".dat"; DeleteFile[outputfile2]; OpenWrite[outputfile2];*)
(*outputfile3= outputdir  <>  "dD_totaldelta2022_vertbox2L-"<>ToString[EWinputscheme]<>".dat";  DeleteFile[outputfile3]; OpenWrite[outputfile3];*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*valborn = ReadList[fileborn,{Real,Real,Expression}];*)
(*valAA = ReadList[fileAA,{Real,Real,Expression}];*)
(*valAZ = ReadList[fileAZ,{Real,Real,Expression}];*)
(*valZZ = ReadList[fileZZ,{Real,Real,Expression}];*)
(*valW = ReadList[fileW,{Real,Real,Expression}];*)
(**)
(*valpropdelta = ReadList[fileprop,{Real,Real,Expression}];*)
(*valvertselfdelta = ReadList[filevertself,{Real,Real,Expression}];*)
(**)
(*valfsrlogsdelta = ReadList[filefsrlog,{Real,Real,Expression}];*)
(**)
(**)


fullborn = Table[ {valborn[[i,1]],valborn[[i,2]], valborn[[i,3]] 48 Pi^2 (1/137.035999074)^2   }, {i,1,Length[ valborn]}];
modborn = Table[ {valborn[[i,1]],valborn[[i,2]], valborn[[i,3]]}, {i,1,Length[ valborn]}];
valAAdelta=Table[ {valAA[[i,1]],valAA[[i,2]], valAA[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valAA]}];
valAZdelta=Table[ {valAZ[[i,1]],valAZ[[i,2]], valAZ[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valAZ]}];
valZZdelta=Table[ {valZZ[[i,1]],valZZ[[i,2]], valZZ[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valZZ]}];
valWdelta=Table[  {valW[[i,1]], valW[[i,2]],  valW[[i,3]]/modborn[[i,3]] }, {i,1,Length[ valW]}];




(* ::Input:: *)
(*myplot[dl_List, col_]:=ListPlot3D[ Table[ {sgrid[[ dl[[i,1]] ]], thgrid[[dl[[i,2]] ]],Re[dl[[i,3]]]},*)
(*{i,250,1250}], PlotRange->{-100,100}, PlotStyle->col];*)
(*myplotdelta[nl_List, dl_List]:=*)
(*ListPlot3D[ Table[ val=Re[nl[[i,3]] ]/Re[dl[[i,3]]];{sgrid[[ dl[[i,1]] ]], thgrid[[dl[[i,2]] ]],val},*)
(*{i,1,3250}], PlotRange->{-0.02,0.02}];*)
(**)


val2 = Flatten[ Table[index=25 (i-1)+j; val=valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val3 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val4 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]] + valpropdelta[[index,3]] ;  {i,j,val },{i,1,130},{j,1,25}], 1];
val5 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]] + valpropdelta[[index,3]] + valvertselfdelta[[index,3]] ;  {i,j,val },{i,1,130},{j,1,25}], 1];
val6 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]] + valpropdelta[[index,3]] + valvertselfdelta[[index,3]] -valfsrlogsdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];
val7 = Flatten[ Table[index=25 (i-1)+j; val=valAAdelta[[index,3]]+valAZdelta[[index,3]]+ valZZdelta[[index,3]]+ valWdelta[[index,3]]  -valfsrlogsdelta[[index,3]];  {i,j,val },{i,1,130},{j,1,25}], 1];



valtotaldelta = Table[{val6[[i,1]],val6[[i,2]], 2 Re[val6[[i,3]]]},{i,1,3250}];
Do[index=25*(i-1)+j; WriteString[outputfile1,i,"  ",j,"  ",valtotaldelta[[index,3]],"\n" ], {i,1,130},{j,1,25}];


valtotaldeltanosub = Table[{val5[[i,1]],val5[[i,2]], 2 Re[val5[[i,3]]]},{i,1,3250}];
Do[index=25*(i-1)+j; WriteString[outputfile2,i,"  ",j,"  ",valtotaldeltanosub[[index,3]],"\n" ], {i,1,130},{j,1,25}];

valtotaldeltavertbox = Table[{val7[[i,1]],val7[[i,2]], 2 Re[val7[[i,3]]]},{i,1,3250}];
Do[index=25*(i-1)+j; WriteString[outputfile3,i,"  ",j,"  ",valtotaldeltavertbox[[index,3]],"\n" ], {i,1,130},{j,1,25}];

Close[outputfile1];
Close[outputfile2];
Close[outputfile3];



(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


myplot[val1, Automatic]


myplot[val2, Automatic]


myplot[val3, Automatic]


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


s 
