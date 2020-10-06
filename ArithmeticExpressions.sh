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
