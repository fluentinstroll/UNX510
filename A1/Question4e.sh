#!/bin/bash

awk '/^[A-Z]-[0-9][0-9][0-9]-[A-Z]/ { print $0 }'  BookStore.txt