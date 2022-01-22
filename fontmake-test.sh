# !/bin/bash

set -e

# mkdir -p fontmake-test ### FontMake option --output-path ONLY works if you first create the directory. Why?

fontmake -m 'source/counter_clockwise-paths/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace' -o variable --output-path 'fontmake-test/Dot_Comp_Test-CCW-VF.ttf'
