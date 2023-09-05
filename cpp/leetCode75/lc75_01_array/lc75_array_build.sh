#!/bin/bash

g++ -std=c++14 -o tests.gtests \
    lc75_array.cpp \
    lc75_array_main.cpp \
    -lgtest -lgtest_main -pthread
