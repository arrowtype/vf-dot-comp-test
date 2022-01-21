# Variable Font Dot Components Test

This repo was testing work for [name-sans-roadmap/issues/44](https://github.com/arrowtype/name-sans-roadmap/issues/44).

Here’s a webpage showing the problem and solution: https://arrowtype.github.io/vf-dot-comp-test/

**TL;DR: path directions must match between dots and bases, e.g. between the `dotcomb` and `idotless`, or rendering issues can occur in variable fonts.**

Furthermore, as a designer, you should draw cubic curves (e.g. the default curves in every mainstream font editor) with counter-clockwise paths for exterior contours, and clockwise paths for inner shapes (counters/whitespace/cutouts) ([source](https://forum.glyphsapp.com/t/wrong-path-direction/19395)). Fontmake reverses all paths when converting to quadratic paths for TTF fonts, assuming that you have drawn with CCW outer paths ([source](https://github.com/googlefonts/fontmake/issues/489)).


## Building the Fonts

Setup:

```bash
python3 -m venv venv                  # create virtual environment
source venv/bin/activate              # activate virtual environment
pip install -r requirements.txt       # install dependencies
chmod +x ./build.sh                     # give build script permission to run
```

Build:

```
./build.sh
```

This will build several types of working fonts that were different experiments.
