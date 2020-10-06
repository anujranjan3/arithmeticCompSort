#!/bin/bash -x

declare -A computeDict;
i=0;

read -p "Enter the value of a : " a;
echo "You have entered :" $a "for a";

read -p "Enter the value of b : " b;
echo "You have entered :" $b "for b";

read -p "Enter the value of c : " c;
echo "You have entered :" $c "for c";

storingDict () {
	compute=$1;
	computeDict[(($i))]=$compute;
	(( i++ ));
}

echo "Computing a + b * c"
compute=$(($a+$b*$c));
storingDict $compute;
echo "After Doing Computation "$a" + "$b" *" $c" we got "$compute;

echo "Computing a * b + c"
compute=$(($a*$b+$c));
storingDict $compute;
echo "After Doing Computation "$a" * "$b" +" $c" we got "$compute

echo "Computing c + a / b"
compute=$(($c+$a/$b));
storingDict $compute;
echo "After Doing Computation "$c" + "$a" /" $b" we got "$compute;

echo "Computing a % b + c"
compute=$(($a%$b+$c));
storingDict $compute;
echo "After Doing Computation "$a" % "$b" +" $c" we got "$compute;

echo "All The Compuations are stored in Dictionary : "${computeDict[@]};
