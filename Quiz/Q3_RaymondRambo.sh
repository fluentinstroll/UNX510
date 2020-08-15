#!/bin/bash

add(){
# Take input from user and calculate sum.
 
 
sum=$(( $num1 + $num2 ))
 
echo "Sum is: $sum"
}


read -p "Enter first number: " num1
read -p "Enter second number: " num2

add $num1 $num2