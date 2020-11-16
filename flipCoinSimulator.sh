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
     echo "Match draw and continues till diff equal to 2"
     while (( $num != 0 ))
     do
   random1=$(( RANDOM%2 ))
  if (( $random1 == 1))
  then
    ((heads++))
  else
    ((tails++))
  fi
  if (( $heads==23 ))
  then
    echo "head reached 23 points "
    break
  fi
  if (( $tails==23 ))
  then
    echo "tail reached 23 points"
    break
  fi
  done
  
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
