.PHONY: all clean clean_after resume open opencv cv

all: clean resume cv clean_after

resume:
	lualatex -shell-escape resume
	biber resume
	lualatex -shell-escape resume
	lualatex -shell-escape resume
	cp resume.pdf ../../sites/personal-site/static
	rsync -v -e ssh resume.pdf liam@192.168.4.219:/home/liam/containers/blog/personal-site/static/resume.pdf


cv:
	lualatex -shell-escape cv
	biber cv
	lualatex -shell-escape cv
	lualatex -shell-escape cv
	rsync -v -e ssh cv.pdf liam@192.168.4.219:/home/liam/containers/blog/personal-site/static/cv.pdf

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

clean_after:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

open:
	open resume.pdf

opencv:
	open cv.pdf