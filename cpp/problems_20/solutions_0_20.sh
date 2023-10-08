#!/bin/bash

g++ -std=c++14 -o tests.gtests \
    ../data_structures/list_node.cpp \
    solution_1.cpp \
    solution_2.cpp \
    solutions_0_20_main.cpp \
    -lgtest -lgtest_main -pthread