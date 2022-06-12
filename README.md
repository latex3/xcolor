## Package `xcolor` by Dr. Uwe Kern

Version 2022-06-12 v2.14

Maintained by the LaTeX Project https://github.com/latex3/xcolor/issues

`xcolor` provides easy driver-independent access to several kinds of
colors, tints, shades, tones, and mixes of arbitrary colors by means of
color expressions like \color{red!50!green!20!blue}.
It allows to select a document-wide target color model and offers tools
for automatic color schemes, conversion between nine color models,
alternating table row colors, color blending and masking, color
separation, and color wheel calculations.

## Copyright (C)
- 2003-2021    Dr. Uwe Kern 
- 2021-2022    The LaTeX Project 

## License
LaTeX Project Public License, version 1.3c or later.

## Installation instructions

* Extract all package files:
  
  ~~~~
  latex xcolor.ins
  ~~~~

* Put the generated files to their respective locations
within the TeX installation:

  ~~~~
  *.sty -> /tex/latex/xcolor/
  *.def -> /tex/latex/xcolor/
  *.pro -> /dvips/xcolor/
  ~~~~

* Create the documentation:

  ~~~~ 
  latex xcolor.dtx
  latex xcolor.dtx
  makeindex -s gind.ist xcolor.idx
  latex xcolor.dtx
  latex xcolor.dtx
  ~~~~
  
* Run the test files (N=1,2,...):

  ~~~~
  latex xcolorN.tex
  latex xcolorN.tex
  ~~~~

## Notes

- `xcolor1.tex` should run with both LaTeX and pdfLaTeX, it yields a
  50-page document with several systematic color conversion examples
- `xcolor2.tex` is a 3-page `pstricks` example document that won't run
  with pdfLaTeX
- `xcolor3.tex` is a 2-page example for demonstrating several display
  and logging facilities
- `xcolor4.tex` is a 1-page driver test file;
  uncomment the relevant code line in the header and run it with the
  appropriate program, e.g., `latex xcolor4` or any other processor;
  apply any desired post-processing like dvips, dvipdfm, etc.
- If the file `xcolor.ins` is missing, run `latex xcolor.dtx` once
  and quit the LaTeX compiler as soon as the first error message
  appears.

## History

See file `ChangeLog`.
