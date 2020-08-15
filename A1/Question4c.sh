#!/bin/bash

awk '$5 == "Prentice"; $6 == "Prentice" { print $0 }'  BookStore.txt | tr [:lower:] [:upper:]