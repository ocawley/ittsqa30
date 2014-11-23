#!/bin/bash
#Eriberto Soffiato Student Id: X00107779 --- Grades Program ---

EXAM=$"Exam Result = "
PRACTICAL=$"Practical Result = "
EXR=$"Expected Result: "
RES=$"Result from program: "

TOTP=0
TOTPF=0

STUDE1=55
STUDP1=42
R1=$"Fail"

STUDE2=39
STUDP2=41
R2=$"Component Fail"

STUDE3=41
STUDP3=39
R3=$"Component Fail"

STUDE4=56
STUDP4=42
R4=$"Pass"

STUDE5=86
STUDP5=71
R5=$"Pass"

STUDE6=1000
STUDP6=1000
R6=$"Invalid input"

for (( i = 1; i <= 6; i++ ))
do
   varSTUDE="STUDE$i"
   varSTUDP="STUDP$i"
   varR="R$i"

echo "- - - - - - - - -"
echo
echo "Test Case $i"
echo "$EXAM ${!varSTUDE} --- $PRACTICAL ${!varSTUDP}"
echo "- - - - - - - - -"
AR=$(java grades_v2 ${!varSTUDE} ${!varSTUDP})
echo "$EXR ${!varR} < ---------- > $RES $AR"
echo
if [ "${!varR}" == "$AR" ]
  then 
echo "<<< TEST PASSED >>>"
 TOTP=$((TOTP+1))
  else
echo "<<< TEST FAILED >>>"
  TOTF=$((TOTF+1))
fi
echo

done

echo
echo "Total Number of Passed Test is: $TOTP"
echo "Total Number of Failed Test is: $TOTF"
echo
echo "- - - - - - - - -"
echo
