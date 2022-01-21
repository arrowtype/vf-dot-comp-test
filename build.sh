# !/bin/bash

# build VF with supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o variable  --output-dir fonts/full-designspace

# build VF with NO supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96.designspace -o variable --output-dir fonts/no-supports

# build statics with supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o ttf -i  --output-dir fonts/full-designspace/static --expand-features-to-instances

# build static with NO supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96.designspace -o ttf -i --output-dir fonts/no-supports/static --expand-features-to-instances