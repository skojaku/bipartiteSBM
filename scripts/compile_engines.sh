#!/bin/bash
set -e

(
  cd engines/bipartiteSBM-MCMC/ && cmake -DBOOST_ROOT=/tmp/boost_local . && make
)
(
  cd engines/bipartiteSBM-KL/ && g++ -O3 -Wall -g -pedantic -o biSBM biSBM.cpp
)
