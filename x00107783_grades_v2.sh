echo ----------------------------
echo Test Case 1 - Parameters: 50 40
echo Expected: 
echo Fail
echo Result:
java grades_v2 50 40
echo ----------------------------
echo Test Case 2 - Parameters: 39 100
echo Expected: 
echo Component Fail
echo Result:
java grades_v2 39 100
echo ----------------------------
echo Test Case 3 - Parameters: 100 39
echo Expected: 
echo Component Fail
echo Result:
java grades_v2 100 39
echo ----------------------------
echo Test Case 4 - Parameters: 50 50
echo Expected: 
echo Pass
echo Result:
java grades_v2 50 50
echo ----------------------------
echo Test Case 5 - Parameters: 100 51
echo Expected: 
echo Pass with distinction
echo Result:
java grades_v2 100 51
echo ----------------------------
echo Test Case 6 - Parameters: 120 -2
echo Expected: 
echo Invalid Input
echo Result:
java grades_v2 120 -2
