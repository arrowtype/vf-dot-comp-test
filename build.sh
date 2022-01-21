# !/bin/bash

# build VF with supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o variable  --output-path fonts/full-designspace/Dot_Comp_Test-VF.ttf

# build VF with NO supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96.designspace -o variable --output-path fonts/no-supports/Dot_Comp_Test-no_supports-VF.ttf

# build statics with supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96--w_sparse_supports.designspace -o ttf -i  --output-dir fonts/full-designspace/static --expand-features-to-instances

# build static with NO supports
fontmake -m source/Dot_Comp_Test-wght_1_1000-opsz_12_96.designspace -o ttf -i --output-dir fonts/no-supports/static --expand-features-to-instances

# copy fonts to /docs for GitHub Pages
cp -r fonts docs/fonts