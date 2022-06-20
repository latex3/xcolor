#!/usr/bin/env texlua

-- Build script for "xcolor" files

-- Identify the bundle and module
bundle = ""
module = "xcolor"

installfiles = {"svgnam.def", "x11nam.def", "xcolor.pro", "xcolor.sty","xcolor-2021-10-31.sty"}
sourcefiles = {"xcolor.dtx", "xcolor.ins","xcolor-2021-10-31.sty"}
unpackfiles = {"xcolor.ins"}

-- Get the .pro files in the right place
tdslocations = {"dvips/xcolor/xcolor.pro"}

function typeset_xcolor2 (f)
 typesetexe='latex'
 cp('xcolor2.tex',unpackdir,'.')
 tex(f)
 tex(f)
 runcmd('dvips xcolor2')
 runcmd('ps2pdf -dALLOWPSTRANSPARENCY xcolor2.ps')
 cp('xcolor2.pdf','.',ctandir .. '/xcolor')
 rm('.','xcolor2.tex')
 rm(ctandir .. '/xcolor','xcolor2.tex')
 return 0
end
 

typesetfiles={"xcolor.dtx","xcolor2.tex"}
specialtypesetting={}
specialtypesetting['xcolor2.tex'] = {func = typeset_xcolor2}


textfiles= {"ChangeLog", "README.md"}


