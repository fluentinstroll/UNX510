#!/bin/bash

awk '$5 > 2010 && $4 > 2010 { print $1}'  BookStore.txt