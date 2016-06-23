#!/bin/bash

set -e

$CXX $@ -std=c++11 -I. -Wall -Werror -Wextra -pedantic test_visit_struct.cpp
./a.out

$CXX $@ -std=c++11 -I. -I/usr/include -Wall -Werror -Wextra -pedantic test_visit_struct_fusion.cpp
./a.out
