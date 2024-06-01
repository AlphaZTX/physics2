# The `physics2` package

This package defines commands for typesetting math formulae faster and
more simply. `physics2` is a modularized package, each module provides its
own function while `physics2.sty` itself only provides very few functions.
Therefore you can load modules separately after loading `physics2`.

## Functions

Modules of `physics2` provide the following supports:

- Automatic-sized braces;
- Dirac bra-ket notation;
- Easy way to typeset diagonal matrices and matrices with similar entries;
- Double cross and double dot (binary) operators for tensors;
- Most of the legacy functions provided by `physics.sty`.

## Build

This package uses DocStrip to generate package files. To get package files, run

```
xetex physics-code.dtx
```

To get code documentation, run

```
xelatex physics-code.dtx
```

at least twice.

## For developers and deep users

If you want to contribute to this repo, you can

- pull requests [here](https://github.com/AlphaZTX/physics2/pulls);
- report bugs or request enhancement [here](https://github.com/AlphaZTX/physics2/issues).

Enhancement may not get applied quickly.

## License

This work may be distributed and/or modified under the conditions of the
[LaTeX Project Public License](http://www.latex-project.org/lppl.txt),
either version 1.3c of this license or (at your option) any later version.

This work has the LPPL maintenance status `maintained`.

The Current Maintainer of this work is
[Zhang Tingxuan](https://www.ctan.org/author/zhang-tx).

