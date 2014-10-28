#!/bin/bash
# shell script file for black box testing lecture 3 23/10/2014

echo "Test case 1 for combined less than 50"
echo "Inputs 49 49"
echo "Expected result: Fail"
AR=$(java grades 49 49)
echo "Actual result: " $AR
echo
echo "Test case 2 for combined result between 50 and 100"
echo "Inputs 50 50"
echo "Expected result: Pass"
AR=$(java grades 50 50)
echo "Actual result: " $AR
echo
echo "Test case 3 for combined result between 80 and 100"
echo "Inputs 80 80"
echo "Expected result: Pass with distinction"
AR=$(java grades 80 80 )
echo "Actual result: " $AR
echo
echo "Test case 4 for exam score less than 40"
echo "Inputs 39 100"
echo "Expected result: Component Fail"
AR=$(java grades 39 100)
echo "Actual result: " $AR
echo
echo "Test case 5 for practical score less than 40"
echo "Inputs 100 39"
echo "Expected result: Component Fail"
AR=$(java grades 100 39)
echo "Actual result: " $AR
echo
echo "Test case 6 for invalid inputs"
echo "Inputs 50 h"
echo "Expected result: Invalid Input"
AR=$(java grades 50 h)
echo "Actual result: " $AR
