
(* An 'im' has been taken out which is multipled with ctVV *)
(* That is e.g. PbornSq1 = bornSq1/im *)


PbornSq1 = (

       + im*Qu*Ql*borncf*gA^2*UuphC*LlphC*ctAA * (
          + 16*s12^-3*s13*s23
          - 16*s12^-2*ml^2
          - 8*s12^-2*s23
          - 8*s12^-2*s13
          + 4*n*s12^-2*s23
          + 4*n*s12^-2*s13
          ) )/im;


PbornSq2 = (

       + im*Qu*borncf*gA*gVl*UuphC*LlphC*LlZ*ctAZ * (
          - 16/( - mZ2 + s12)*s12^-2*s13*s23
          + 16/( - mZ2 + s12)*s12^-1*ml^2
          + 8/( - mZ2 + s12)*s12^-1*s23
          + 8/( - mZ2 + s12)*s12^-1*s13
          - 4/( - mZ2 + s12)*n*s12^-1*s23
          - 4/( - mZ2 + s12)*n*s12^-1*s13
          ) )/im;


PbornSq3 = (

       + im*Ql*borncf*gA*gVu*UuphC*UuZ*LlphC*ctZA * (
          - 16/( - mZ2 + s12)*s12^-2*s13*s23
          + 16/( - mZ2 + s12)*s12^-1*ml^2
          + 8/( - mZ2 + s12)*s12^-1*s23
          + 8/( - mZ2 + s12)*s12^-1*s13
          - 4/( - mZ2 + s12)*n*s12^-1*s23
          - 4/( - mZ2 + s12)*n*s12^-1*s13
          ) )/im;


PbornSq4 = (

       + im*borncf*gAu*gAl*UuphC*UuZ*LlphC*LlZ*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)*n*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)*n*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)*n^2*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)*n^2*s13
          )

       + im*borncf*gVu*gVl*UuphC*UuZ*LlphC*LlZ*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)*s12^-1*s13*s23
          - 16/( - mZ2 + s12)/( - mZ2 + s12)*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)*n*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)*n*s13
          ) )/im;


ZbornSq1 = (

       + im*Qu*Ql*borncf*gA^2*gAuC*gAlC*UuZC*LlZC*ctAA * (
          + 24/( - mZC2 + s12)*s12^-1*s23
          - 24/( - mZC2 + s12)*s12^-1*s13
          - 20/( - mZC2 + s12)*n*s12^-1*s23
          + 20/( - mZC2 + s12)*n*s12^-1*s13
          + 4/( - mZC2 + s12)*n^2*s12^-1*s23
          - 4/( - mZC2 + s12)*n^2*s12^-1*s13
          )

       + im*Qu*Ql*borncf*gA^2*gVuC*gVlC*UuZC*LlZC*ctAA * (
          + 16/( - mZC2 + s12)*s12^-2*s13*s23
          - 16/( - mZC2 + s12)*s12^-1*ml^2
          - 8/( - mZC2 + s12)*s12^-1*s23
          - 8/( - mZC2 + s12)*s12^-1*s13
          + 4/( - mZC2 + s12)*n*s12^-1*s23
          + 4/( - mZC2 + s12)*n*s12^-1*s13
          ) )/im;


ZbornSq2 = (

       + im*Qu*borncf*gA*gAl*gAuC*gVlC*UuZC*LlZ*LlZC*ctAZ * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Qu*borncf*gA*gAl*gVuC*gAlC*UuZC*LlZ*LlZC*ctAZ * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 48/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*n*ml^2
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          )

       + im*Qu*borncf*gA*gVl*gAuC*gAlC*UuZC*LlZ*LlZC*ctAZ * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Qu*borncf*gA*gVl*gVuC*gVlC*UuZC*LlZ*LlZC*ctAZ * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 16/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          ) )/im;


ZbornSq3 = (

       + im*Ql*borncf*gA*gAu*gAuC*gVlC*UuZ*UuZC*LlZC*ctZA * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 16/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          )

       + im*Ql*borncf*gA*gAu*gVuC*gAlC*UuZ*UuZC*LlZC*ctZA * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Ql*borncf*gA*gVu*gAuC*gAlC*UuZ*UuZC*LlZC*ctZA * (
          - 24/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 24/( - mZ2 + s12)/( - mZC2 + s12)*s13
          + 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 20/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s23
          + 4/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s13
          )

       + im*Ql*borncf*gA*gVu*gVuC*gVlC*UuZ*UuZC*LlZC*ctZA * (
          - 16/( - mZ2 + s12)/( - mZC2 + s12)*s12^-1*s13*s23
          + 16/( - mZ2 + s12)/( - mZC2 + s12)*ml^2
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s23
          + 8/( - mZ2 + s12)/( - mZC2 + s12)*s13
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s23
          - 4/( - mZ2 + s12)/( - mZC2 + s12)*n*s13
          ) )/im;


ZbornSq4 = (

       + im*borncf*gAu*gAl*gAuC*gAlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 48/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*ml^2
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          )

       + im*borncf*gAu*gAl*gVuC*gVlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gAu*gVl*gAuC*gVlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          )

       + im*borncf*gAu*gVl*gVuC*gAlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gVu*gAl*gAuC*gVlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gVu*gAl*gVuC*gAlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 48/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*ml^2
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          )

       + im*borncf*gVu*gVl*gAuC*gAlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 24/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          - 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 20/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s23
          - 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n^2*s12*s13
          )

       + im*borncf*gVu*gVl*gVuC*gVlC*UuZ*UuZC*LlZ*LlZC*ctZZ * (
          + 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s13*s23
          - 16/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*ml^2
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s23
          - 8/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*s12*s13
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s23
          + 4/( - mZ2 + s12)/( - mZ2 + s12)/( - mZC2 + s12)*n*s12*s13
          ) )/im;


bornins=PbornSq1+PbornSq2+PbornSq3+PbornSq4+
        ZbornSq1+ZbornSq2+ZbornSq3+ZbornSq4;

bornins = Collect[ bornins, {ctAA, ctAZ, ctZA, ctZZ}, Simplify];
