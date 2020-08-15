#!/bin/bash

declare -A myCourses

myCourses[ULI101]="Intro to Unix"
myCourses[GAM534]="Game Content Creation"
myCourses[PRJ666]="Project Implementation"
myCourses[DBS201]="SQL Database Scripting"

for course in ${!myCourses[*]}; do echo "Course $course is ${myCourses[$course]}"; done;

echo "Number of courses is: ${#myCourses[*]}"

for course in ${!myCourses[*]}; do echo "Size of course: $course is: ${#myCourses[$course]}"; done;

