#!/bin/bash -x

##UserCase1
read -p "enter first value: " a
read -p "enter second value: " b
read -p "enter third value: " c

##UserCase2
UC2=$((($a+$b)*$c))

##UserCase3
UC3=$((($a*$b)+$c))

##UserCase4
UC4=$((($c+$a)/$b))

##UserCase5
UC5=$((($a%$b)+$c))

##Storing the results in a dictionary
declare -A dictionary
dictionary[key1]=$UC2
dictionary[key2]=$UC3
dictionary[key3]=$UC4
dictionary[key4]=$UC5

##Reading values from dictionary to array
array=${dictionary[@]}
echo  "array values are: "${array[@]}

##Sorting the values in descending order
DescendingOrder=`echo ${array[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort -nr`
echo "values in descending order are: " ${DescendingOrder[@]}

##Sorting the values in ascending order
AscendingOrder=`echo ${array[@]} | awk 'BEGIN{RS=" ";} {print $1}' | sort -n`
echo "values in ascending order are: " ${AscendingOrder[@]}

