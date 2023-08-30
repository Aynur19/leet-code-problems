#!/bin/bash

g++ -std=c++14 -o tests.gtests \
    problem_1768.cpp \
    problem_1071.cpp \
    problem_1431.cpp \
    solutions.cpp \
    -lgtest -lgtest_main -pthread
