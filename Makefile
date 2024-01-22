.PHONY: all clean clean_after resume open

all: clean resume open clean_after

resume:
	lualatex -shell-escape resume

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

clean_after:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

open:
	open resume.pdf