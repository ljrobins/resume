.PHONY: all clean clean_after resume open opencv cv

all: clean resume open clean_after
allcv: clean cv opencv clean_after

resume:
	lualatex -shell-escape resume
	biber resume
	lualatex -shell-escape resume
	lualatex -shell-escape resume

cv:
	lualatex -shell-escape cv
	biber cv
	lualatex -shell-escape cv
	lualatex -shell-escape cv

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

clean_after:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

open:
	open resume.pdf

opencv:
	open cv.pdf