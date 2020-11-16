#! /bin/bash 
random=$(( RANDOM%2 ))
if (( $random == 1))
then
  echo "head"
else
  echo "tail"
fi
