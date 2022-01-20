# Variable Font Dot Components Test

Testing for https://github.com/arrowtype/name-sans-roadmap/issues/44.

Static fonts don’t have this issue, so they will be used as "controls" in testing.
## Basic Component Test

**Goal:** Reproduce the basic problem in a font with a limited character set. (Include sparse sources in this test.)

### Test (fonts with limited character sets, but full Name Sans designspace)

|          | With Components | Decomposed |
|----------|-----------------|------------|
| Variable | `i j ö !`       | `i j ö !`  |
| Static   | `i j ö !`       | `i j ö !`  |

## Support/Sparse Sources Test

Goal: Test whether sparse sources are the culprit, by building fonts *without* sparse sources included
### Test (fonts with no sparse/support sources)

|          | With Components | Decomposed |
|----------|-----------------|------------|
| Variable | `i j ö !`       | `i j ö !`  |
| Static   | `i j ö !`       | `i j ö !`  |
## AVAR Test

Goal: Test whether the removal of the AVAR table affects the rendering of dot components.

### Test (fonts with no axis mapping)

|          | With Components | Decomposed |
|----------|-----------------|------------|
| Variable | `i j ö !`       | `i j ö !`  |
| Static   | `i j ö !`       | `i j ö !`  |

## Path Direction Test

Goal: Test whether path direction matters for components.

|                | With Components | Decomposed |
|----------------|-----------------|------------|
| Variable (CW   | `i j ö !`       | `i j ö !`  |
| Variable (CCW) | `i j ö !`       | `i j ö !`  |
| Static         | `i j ö !`       | `i j ö !`  |