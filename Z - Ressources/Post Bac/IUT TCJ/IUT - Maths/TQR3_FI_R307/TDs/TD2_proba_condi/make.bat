SET TARGET=td_spatial

del *.aux %TARGET%.toc %TARGET%.log %TARGET%.bbl %TARGET%.nav %TARGET%.snm %TARGET%.dvi %TARGET%.blg %TARGET%.out %TARGET%.ps %TARGET%.pdf
PAUSE
latex %TARGET%
latex %TARGET%
bibtex %TARGET%
latex %TARGET%
latex %TARGET%
dvips %TARGET%.dvi -o %TARGET%.ps
ps2pdf14 %TARGET%.ps

del *.aux  %TARGET%.toc %TARGET%.log %TARGET%.bbl %TARGET%.nav %TARGET%.snm %TARGET%.dvi %TARGET%.blg %TARGET%.out %TARGET%.ps
