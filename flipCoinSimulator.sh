#! /bin/bash 
num=0
heads=0
tails=0
while (( num <100 ))
do
((num++))
random=$(( RANDOM%2 ))
if (( $random == 1))
then
  ((heads++))
else
  ((tails++))
fi
done
echo "head won $heads times"
echo "tail won $tails times"
