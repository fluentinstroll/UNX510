#!/bin/bash
clear >$(tty)
echo ""
echo "Welcome to amazing script!"

uparrow=$'\x1b[A'
downarrow=$'\x1b[B'
leftarrow=$'\x1b[D'
rightarrow=$'\x1b[C'
ctrlc_count=0
trap no_ctrlc SIGINT


function no_ctrlc()
{
    if [[ $ctrlc_count == 0 ]]; then
        echo "You pressed Ctrl+C. Use q if you want to quit"
    fi
}

while [ "$key" != "q" ]
do
  read -s -n3 -p "Press a key " x
  case "$x" in
  $uparrow)
     echo "You pressed up-arrow"; key="$x"
     ;;
  $downarrow)
     echo "You pressed down-arrow";key="$x"
     ;;
  $leftarrow)
     echo "You pressed left-arrow";key="$x"
     ;;
  $rightarrow)
     echo "You pressed right-arrow";key="$x"
     ;;
  esac
done