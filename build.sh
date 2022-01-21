# !/bin/bash

# ---------------------------------------------
# PATHS MISMATCHED TO SHOW PROBLEM

# build VF with supports
fontmake -m source/problem-sources/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o variable  --output-path fonts/problem-fonts/Dot_Comp_Test-VF.ttf

# build statics with supports
fontmake -m source/problem-sources/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o ttf -i  --output-dir fonts/problem-fonts/static --expand-features-to-instances


# ---------------------------------------------
# PATH DIRECTIONS MATCHING

# build VF with supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o variable  --output-path fonts/full-designspace/Dot_Comp_Test-VF.ttf

# build statics with supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o ttf -i  --output-dir fonts/full-designspace/static --expand-features-to-instances


# ---------------------------------------------
# PATH DIRECTIONS MATCHING, SUPPORT SOURCES SKIPPED

# build VF with NO supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96.designspace -o variable --output-path fonts/no-supports/Dot_Comp_Test-no_supports-VF.ttf

# build static with NO supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96.designspace -o ttf -i --output-dir fonts/no-supports/static --expand-features-to-instances


# ---------------------------------------------
# PATHS CCW IN SOURCES

# build VF with supports, CCW paths
fontmake -m source/counter_clockwise-paths/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o variable  --output-path fonts/counter_clockwise-paths/Dot_Comp_Test-CCW-VF.ttf

# build statics with supports, CCW paths
fontmake -m source/counter_clockwise-paths/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o ttf -i  --output-dir fonts/counter_clockwise-paths/static --expand-features-to-instances


# copy fonts to /docs for GitHub Pages
cp -r fonts docs
