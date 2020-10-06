#!/bin/bash -x

read -p "Enter the value of a : " a;
echo "You have entered :" $a "for a";

read -p "Enter the value of b : " b;
echo "You have entered :" $b "for b";

read -p "Enter the value of c : " c;
echo "You have entered :" $c "for c";

echo "Computing c + a / b"
compute=$(($c+$a/$b));
echo "After Doing Computation "$c" + "$a" /" $b" we got "$compute;
