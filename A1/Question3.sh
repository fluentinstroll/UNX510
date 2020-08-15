#!/bin/bash

awk -F 'IPv4 Address' '{ print $2 }' ipconfig.txt | awk -F ':' '{print $2}'