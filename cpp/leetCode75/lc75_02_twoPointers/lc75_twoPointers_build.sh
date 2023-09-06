#!/bin/bash

g++ -std=c++14 -o tests.gtests \
    lc75_twoPointers.cpp \
    lc75_twoPointers_main.cpp \
    -lgtest -lgtest_main -pthread