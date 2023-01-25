
(* An 'im' has been taken out which is multipled with ctVV *)
(* That is e.g. PbornSq1 = bornSq1/im *)


dDPbornSq1 = (

       + im*Qd*Ql*borncf*gA^2*DdphC*LlphC*ctAA * (
          + 16*s12^-3*s13*s23
          - 16*s12^-2*ml^2
          - 8*s12^-2*s23
          - 8*s12^-2*s13
          + 4*n*s12^-2*s23
          + 4*n*s12^-2*s13
          ) )/im;


dDPbornSq2 = (

       + im*Qd*borncf*gA*gVl*DdphC*LlphC*LlZ*ctAZ * (
          - 16/( - mZ2 + s12)*s12^-2*s13*s23
          + 16/( - mZ2 + s12)*s12^-1*ml^2
          + 8/( - mZ2 + s12)*s12^-1*s23
          + 8/( - mZ2 + s12)*s12^-1*s13
          - 4/( - mZ2 + s12)*n*s12^-1*s23
          - 4/( - mZ2 + s12)*n*s12^-1*s13
          ) )/im;


dDPbornSq3 = (

       + im*Ql*borncf*gA*gVd*DdphC*DdZ*LlphC*ctZA * (
          - 16/( - mZ2 + s12)*s12^-2*s13*s23
          + 16/( - mZ2 + s12)*s12^-1*ml^2
          + 8/( - mZ2 + s12)*s12^-1*s23
          + 8/( - mZ2 + s12)*s12^-1*s13
          - 4/( - mZ2 + s12)*n*s12^-1*s23
          - 4/( - mZ2 + s12)*n*s12^-1*s13
          ) )/im;


dDPbornSq4 = (

       + im*borncf*gAd*gAl*DdphC*DdZ*LlphC*LlZ*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)*n*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)*n*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)*n^2*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)*n^2*s13
          )

       + im*borncf*gVd*gVl*DdphC*DdZ*LlphC*LlZ*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)*s12^-1*s13*s23
          - 16/( - mZ2 + s12)/( - mZ2 + s12)*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)*n*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)*n*s13
          ) )/im;


dDZbornSq1 = (

       + im*Qd*Ql*borncf*gA^2*gAdC*gAlC*DdZC*LlZC*ctAA * (
          + 24/( - mZC2 + s12)*s12^-1*s23
          - 24/( - mZC2 + s12)*s12^-1*s13
          - 20/( - mZC2 + s12)*n*s12^-1*s23
          + 20/( - mZC2 + s12)*n*s12^-1*s13
          + 4/( - mZC2 + s12)*n^2*s12^-1*s23
          - 4/( - mZC2 + s12)*n^2*s12^-1*s13
          )

       + im*Qd*Ql*borncf*gA^2*gVdC*gVlC*DdZC*LlZC*ctAA * (
          + 16/( - mZC2 + s12)*s12^-2*s13*s23
          - 16/( - mZC2 + s12)*s12^-1*ml^2
          - 8/( - mZC2 + s12)*s12^-1*s23
          - 8/( - mZC2 + s12)*s12^-1*s13
          + 4/( - mZC2 + s12)*n*s12^-1*s23
          + 4/( - mZC2 + s12)*n*s12^-1*s13
          ) )/im;


dDZbornSq2 = (

       + im*Qd*borncf*gA*gAl*gAdC*gVlC*DdZC*LlZ*LlZC*ctAZ * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Qd*borncf*gA*gAl*gVdC*gAlC*DdZC*LlZ*LlZC*ctAZ * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 48/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*n*ml^2
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          )

       + im*Qd*borncf*gA*gVl*gAdC*gAlC*DdZC*LlZ*LlZC*ctAZ * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Qd*borncf*gA*gVl*gVdC*gVlC*DdZC*LlZ*LlZC*ctAZ * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 16/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          ) )/im;


dDZbornSq3 = (

       + im*Ql*borncf*gA*gAd*gAdC*gVlC*DdZ*DdZC*LlZC*ctZA * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 16/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          )

       + im*Ql*borncf*gA*gAd*gVdC*gAlC*DdZ*DdZC*LlZC*ctZA * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Ql*borncf*gA*gVd*gAdC*gAlC*DdZ*DdZC*LlZC*ctZA * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Ql*borncf*gA*gVd*gVdC*gVlC*DdZ*DdZC*LlZC*ctZA * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 16/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          ) )/im;


dDZbornSq4 = (

       + im*borncf*gAd*gAl*gAdC*gAlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 48/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*ml^2
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          )

       + im*borncf*gAd*gAl*gVdC*gVlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gAd*gVl*gAdC*gVlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          )

       + im*borncf*gAd*gVl*gVdC*gAlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gVd*gAl*gAdC*gVlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gVd*gAl*gVdC*gAlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 48/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*ml^2
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          )

       + im*borncf*gVd*gVl*gAdC*gAlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gVd*gVl*gVdC*gVlC*DdZ*DdZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          ) )/im;


bornins=dDPbornSq1+dDPbornSq2+dDPbornSq3+dDPbornSq4+
        dDZbornSq1+dDZbornSq2+dDZbornSq3+dDZbornSq4;

bornins = Collect[ bornins, {ctAA, ctAZ, ctZA, ctZZ}, Simplify];

