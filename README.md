# Variable Font Dot Components Test – WORK IN PROGRESS

Testing for https://github.com/arrowtype/name-sans-roadmap/issues/44.

Static fonts don’t have this issue, so they will be used as "controls" in testing.

## Plan for webpage to test this

The following is a rough outline of how I intend to test this.

### Basic Component Testing Plan

**Goal:** Reproduce the basic problem in a font with a limited character set. (Include sparse sources in this test.)

#### Test (fonts with limited character sets, but full Name Sans designspace)

|          | With Components | Decomposed |
|----------|-----------------|------------|
| Variable | `i j ö !`       | `i j ö !`  |
| Static   | `i j ö !`       | `i j ö !`  |

### Support/Sparse Sources Test

Goal: Test whether sparse sources are the culprit, by building fonts *without* sparse sources included
#### Test (fonts with no sparse/support sources)

|          | With Components | Decomposed |
|----------|-----------------|------------|
| Variable | `i j ö !`       | `i j ö !`  |
| Static   | `i j ö !`       | `i j ö !`  |
### AVAR Test

Goal: Test whether the removal of the AVAR table affects the rendering of dot components.

#### Test (fonts with no axis mapping)

|          | With Components | Decomposed |
|----------|-----------------|------------|
| Variable | `i j ö !`       | `i j ö !`  |
| Static   | `i j ö !`       | `i j ö !`  |

### Path Direction Test

Goal: Test whether path direction matters for components.

|                | With Components | Decomposed |
|----------------|-----------------|------------|
| Variable (CW   | `i j ö !`       | `i j ö !`  |
| Variable (CCW) | `i j ö !`       | `i j ö !`  |
| Static         | `i j ö !`       | `i j ö !`  |


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