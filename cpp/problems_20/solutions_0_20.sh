#!/bin/bash

g++ -std=c++14 -o tests.gtests \
    solution_1.cpp \
    solutions_0_20_main.cpp \
    -lgtest -lgtest_main -pthread