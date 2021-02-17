#new rim types for old data


#create a lookup table with old and new sites:
rimtype_lkup <- c(S1 = "S1", S2 = "S1",
                  S18 = "S12",
                  S19 = "S13",
                  S21 =  "S15",
                  S7 = "S9",
                  S9 = "S10",
                  S10 = "S11",
                  N14 = "S12",
                  E1 = "Es1",
                  E4 = "Es6",
                  E2 = "Es8",
                  E3 = "Es8",
                  E5 = "Es15",
                  E7 = "Es20",
                  E8 = "Es24",
                  E10 = "Es27",
                  E58 = "Es29",
                  E57 = "Es31",
                  E7b = "Es32",
                  E105 = "Es33",
                  E95 = "Es34",
                  E81 = "Es35",
                  E65 = "Es37",
                  E71 = "Es38",
                  N13 = "Es40",
                  N15 = "Es41",
                  E9  = "Et1",
                  E11 = "Et4",
                  E12 = "Et9",
                  E91 = "Et11",
                  E102 = "Et12",
                  N3 = "Et13",
                  N2 = "Et14",
                  E93 = "Et15",
                  E51 = "Ef1",
                  E54 = "Ef3",
                  E62 = "Ef5",
                  E68 = "Ef6",
                  E64 = "Ep1",
                  E66 = "Ep2",
                  E70 = "Ep3",
                  E72 = "Ep4",
                  E79 = "Ep5",
                  E52 = "Esg1",
                  E104 = "Esg3",
                  E56  = "Esg4",
                  E59  = "Esg7",
                  E53  = "Esg10",
                  E63  = "Esg11",
                  E69  = "Esg13",
                  E80  = "Esg15",
                  E94  = "Esg17",
                  N9   = "Esg18",
                  E59  = "Esg19",

                  E55  = "Emg1",
                  E61  = "Emg3",
                  E92  = "Emg4",
                  E103 = "Emg5",
                  N1   = "Emg6",
                  N4   = "Emg7",

                  S3   = "Th1",
                  S4   = "Th5",
                  S5   = "Th7",
                  MD18 = "Th9",
                  S16  = "Th10",
                  S6   = "Th11",
                  S11  = "Th12",
                  T1   = "Th15",

                  C1 = "C1",
                  C2 = "C2",
                  C3 = "C3",
                  C4 = "C4",
                  C6 = "C5",


                  S7   = "Fl1",
                  S13  = "Fl2",
                  S14  = "Fl4",
                  E6   = "Fl6",
                  E101 = "Fl10",
                  S20  = "Fl11",
                  N7   = "Fl12",
                  N10  = "Fl13",
                  N12  = "Fl14",


                  M1  = "Y1",
                  XY1 = "Y3",
                  YX1 = "Y3",
                  XY2 = "Y4",
                  XY3 = "Y5",
                  XY4 = "Y6",
                  C5  = "Y7",
                  N5  = "Y8",
                  N5b = "Y9",
                  N11 = "Y10",


                  N8 = "I1",
                  S9 = "I2",
                  S9NEW = "I2",
                  BT1 = "BT1",
                  BT2 = "BT2",
                  BT3 = "BT3",
                  BT4 = "BT4",
                  E60 = "BT5",
                  E67 = "BT6",
                  L1 = "L1",
                  L2 = "L2",
                  E90 = "L3",
                  F2 = "L5",
                  L3 = "B11",
                  B = "B",
                  B1 = "B1",
                  B2 = "B2",
                  B3 = "B3",
                  B4 = "B4",
                  B5 = "B5",
                  'B5/6' = "B5",
                  B6 = "B6",
                  B7 = "B7",
                  B8 = "B8",
                  B9 = "B9",
                  B10 = "B10",
                  S15 = "S15",
                  Y = "Y",
                  "L2/F2" = "L2",
                  "L2 OR F2" = "L2",
                  E = "E",
                  "L2?" = "L2",
                  XY = "Y",
                  BT = "BT"

)

#add rim category
library(stringi)
library(stringdist)
#function to create general rim categories
create_rimcats <- function(data, types){
  #the amatch function only works on character
  types <- as.character(types)
  c <- c("S", "ES", "Emg", "Et", "Ef", "Ep", "Esg", "T", "Fl", "F","C", "D", "B", "L", "BT", "I", "Y")
  #amatch will help to correlate the generalrimtypes to the more complex ones
  i <- amatch(types, c, maxDist = 8)
  #the code is applied to the data
  data$RimType.general <- c[i]
  #turned back into a factor
  types <- as.factor(types)
  data$RimType.general <- as.factor(data$RimType.general)
}
