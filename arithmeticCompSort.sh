#!/bin/bash -x

read -p "Enter the value of a : " a;
echo "You have entered :" $a "for a";

read -p "Enter the value of b : " b;
echo "You have entered :" $b "for b";

read -p "Enter the value of c : " c;
echo "You have entered :" $c "for c";

echo "Computing a + b * c"
compute=$(($a+$b*$c));
echo "After Doing Computation "$a" + "$b" *" $c" we got "$compute;
