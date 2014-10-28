#!/bin/bash
# shell script file for black box testing lecture 3 23/10/2014

I=$"Inputs: "
ER=$"Expected result: "

echo Test case 1 for combined result less than 50
echo $I "49 49"
echo $ER "Fail"
AR=$(java grades 49 49)
echo "Actual result: " $AR
echo
echo "Test case 2 for combined result between 50 and 100"
echo $I "50 50"
echo $ER "Pass"
AR=$(java grades 50 50)
echo "Actual result: " $AR
echo
echo "Test case 3 for combined result between 80 and 100"
echo $I "80 80"
echo $ER "Pass with distinction"
AR=$(java grades 80 80 )
echo "Actual result: " $AR
echo
echo "Test case 4 for exam score less than 40"
echo $I "39 100"
echo $ER "Component Fail"
AR=$(java grades 39 100)
echo "Actual result: " $AR
echo
echo "Test case 5 for practical score less than 40"
echo $I "100 39"
echo $ER "Component Fail"
AR=$(java grades 100 39)
echo "Actual result: " $AR
echo
echo "Test case 6 for invalid inputs"
echo $I "50 h"
echo $ER "Invalid Input"
AR=$(java grades 50 h)
echo "Actual result: " $AR
