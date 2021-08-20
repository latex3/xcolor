#!/usr/bin/env texlua

-- Build script for "xcolor" files

-- Identify the bundle and module
bundle = ""
module = "xcolor"

installfiles = {"svgnam.def", "x11nam.def", "xcolor.pro", "xcolor.sty"}
sourcefiles = {"xcolor.dtx", "xcolor.ins"}
unpackfiles = {"xcolor.ins"}

-- Get the .pro files in the right place
tdslocations = {"dvips/xcolor/xcolor.pro"}

textfiles= {"ChangeLog", "README"}


