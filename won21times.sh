#!/bin/bash -x
flip=0
heads=0
tails=0
function flipCoin() {
	flipCheck=$(( RANDOM%2 ))
	echo $flipCheck
}
while [ $flip -le 31 ]
do
        result="$(flipCoin $flipCheck)"
        case $result in
                1)
                  echo "Heads"$heads
                  ((heads++))
                  ;;
                *)
                  echo "tails"$tails
                  ((tails++))
                ;;
        esac
        ((flip++))
done

         if [ $heads -eq 21 ]
            then
            echo "Heads won $heads times"
         elif [ $tails -eq 21 ]
            then
            echo "Tails won $tails times"
         elif [ $heads -eq $tails ]
            then
            echo "tie"
         fi

echo "Heads=$heads, Tails=$tails"
