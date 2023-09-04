#!/bin/bash

g++ -std=c++14 -o tests.gtests \
    lc75_arrayProblems.cpp \
    solutions.cpp \
    -lgtest -lgtest_main -pthread
