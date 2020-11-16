#! /bin/bash 
heads=0
tails=0
num=1
while (( num=1 ))
do
random=$(( RANDOM%2 ))
if (( $random == 1))
then
  ((heads++))
else
  ((tails++))
fi
if (( $heads==21 && $tails==21 ))
then
   echo "Match draw"
   break
fi

if (( $heads==21 ))
then
   echo "head won"
   diff=$((heads-tails))
    echo "head won by $diff points"
   break
fi
if (( $tails==21))
then
    echo "tail won"
     diff=$((tails-heads))
    echo "tail won by $diff points"
    break
fi
done
echo "head points $heads "
echo "tail points $tails "
