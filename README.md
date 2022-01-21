# Variable Font Dot Components Test

Web test showing problem and solution: https://arrowtype.github.io/vf-dot-comp-test/

**TL;DR: path directions must match between dots and bases, e.g. between the `dotcomb` and `idotless`, or rendering issues can occur in variable fonts.**

Testing for [name-sans-roadmap/issues/44](https://github.com/arrowtype/name-sans-roadmap/issues/44).

## Building the Fonts, etc

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
