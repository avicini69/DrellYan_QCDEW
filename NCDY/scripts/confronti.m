(* ::Package:: *)

(* ::Input:: *)
(**)
(**)
(*(**)
(*/Users/vicini/cernbox/fisica/DY/DY-aas/narayan/DrellYan_QCDxEW/numerics/uU_outZZ11.dat*)
(**)
(*/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/numerics/complexmass/newuU_outZZ11.dat*)
(**)
(**)
(**)
(**)
(*/Users/vicini/cernbox/fisica/DY/DY-aas/narayan/DrellYan_QCDxEW/numerics/real_uU_totaldelta_vertbox.dat*)
(**)
(**)
(**)*)
(**)
(**)
(*maindir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/NCDY/numerics/";*)
(*Get[maindir<>"inputdata/grid-input-st.res"];*)
(**)
(*oldfiles={"/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/latex/paperlong/JHEP-revised/anc/uU_totaldelta_vertbox.dat",*)
(* maindir<>"results/checks/Matrix-uubar_full_FSRsub.dat" ,*)
(*                    maindir<>"results/checks/Matrix-ddbar_full_FSRsub.dat"   };*)
(**)
(*newfiles = {maindir<>"results/finaloutput/uU_totaldelta2022_vertbox2L-Gmu.dat",*)
(*                   maindir<>"results/finaloutput/dD_totaldelta2022_vertbox2L-Gmu.dat"};*)
(**)
(**)
(*confronta[file1_, file2_] := Module[{temp},*)
(**)
(*old=ReadList[file1, {Real,Real,Expression}];*)
(*new=ReadList[file2, {Real,Real,Expression}];*)
(*ratio = old/new;*)
(*deltas = Map[ #[[3]]&, ratio];*)
(*Print["minmax=",Min[deltas],"  ", Max[deltas],"  ",Mean[deltas],"  ",StandardDeviation[deltas] ];*)
(**)
(*graph=ListPlot3D[ Table[ val=Re[ file1[[i,3]] ] /Re[ file2[[i,3]] ] ;{sgrid[[ file1[[i,1]] ]], thgrid[[file2[[i,2]] ]],val},*)
(*{i,1851,3250}], PlotRange->{0.95,1.05}];*)
(**)
(*];*)
(**)


(* ::Input:: *)
(*(*old=ReadList["/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/latex/paperlong/JHEP-revised/anc/uU_totaldelta_vertbox.dat",{Real,Real,Expression}]*)*)


(* ::Input:: *)
(*(*new=ReadList["/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/NCDY/numerics/results/finaloutput/uU_totaldelta2022_vertbox2L-Gmu.dat",{Real,Real,Expression}]*)*)


(* ::Input:: *)
(*(*ratio=old/new*)*)


(* ::Input:: *)
(*(*Do[ k=(i-1)*25+j;*)
(*     If[ Abs[ratio[[k,3]]-1]>0.01, Print[i,"  ",j,"  ",ratio[[k]] ]  ],*)
(*{i,1,130},{j,1,25}]*)*)


(* ::Input:: *)
(*(*myplotdelta:=*)
(*ListPlot3D[ Table[ val=Re[ new[[i,3]] ] /Re[ old[[i,3]] ] ;{sgrid[[ old[[i,1]] ]], thgrid[[old[[i,2]] ]],val},*)
(*{i,1851,3250}], PlotRange->{0.95,1.05}];*)*)


(* ::Input:: *)
(*(*maindir = "/Users/vicini/cernbox/fisica/DY/DrellYan_QCDxEW/NCDY/numerics/inputdata/";*)*)


(* ::Input:: *)
(*(*Get[maindir<>"grid-input-st.res"];*)*)


(* ::Input:: *)
(*(*myplotdelta*)*)


(* ::Input:: *)
(*(*Abs[old[[1]] ]*)*)


(* ::Input:: *)
(*(*Abs[new[[1]]]*)*)


(* ::Input:: *)
(*(*%18/%19*)*)


(* ::Input:: *)
(*(*myplotold:=*)
(*ListPlot3D[ Table[ val=Re[ old[[i,3]] ] ;{sgrid[[ old[[i,1]] ]], thgrid[[old[[i,2]] ]],val},*)
(*{i,1,2250}],PlotRange\[Rule]{-300,100}];*)*)


(* ::Input:: *)
(*(*myplotold*)*)


(* ::Input:: *)
(*(*myplotnew:=*)
(*ListPlot3D[ Table[ val=Re[ new[[i,3]] ] ;{sgrid[[ old[[i,1]] ]], thgrid[[old[[i,2]] ]],val},*)
(*{i,1,2250}],PlotRange\[Rule]{-300,100}];*)*)


(* ::Input:: *)
(*(*myplotnew*)*)


(* ::Input:: *)
(*confronta[oldfiles[[1]], newfiles[[1]] ]*)
(**)


(* ::Input:: *)
(*ratio*)


(* ::Input:: *)
(*deltas*)
