#!/bin/bash

awk 'BEGIN {print "BookID  Book Title              Year    Publisher               Price\n---------------------------------------------------------------------"} {print $0 } END {print "---------------------------------------------------------------------"}' BookStore.txt