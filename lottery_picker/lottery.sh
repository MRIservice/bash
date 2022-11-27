#! /bin/bash
#######################################################
#############  Lotto Pick #############################
#######################################################

while :
do
    echo "How many PowerBalls?"
    read balls
    if [ $balls != -z ]
    then
        break
    fi
done

while :
do
    echo "How many Picks?"
    read picks
    if [ $picks != -z ]
    then
        break
    fi
done

while :
do
    echo "Number range ..1 to ? "
    read range
    if [ $range != -z ]
    then
        break
    fi
done

echo ""
echo "=========================================================="
echo "PowerBalls $balls"
echo "Picks $picks";echo
#######################################################
RANDOM=$(date +%s%N | cut -b10-19)
echo " Random = $RANDOM"
loops=$((range/picks))
echo "loops ----- $loops"
echo
#######################################################
# Main Loop


for((i=1;i<=$loops;i++)); do
    
    # Main Loop
    for ((p=1; p<=$picks; p++))
    do
        Rand=$(( $RANDOM % $range + 1 ))
        
        
        a[$p]=$Rand
        
        if (( $p==$picks ))
        then
            echo ${a[*]}
        fi
        
    done
done
###################################
