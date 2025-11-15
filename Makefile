.PHONY: all resume open opencv cv

all:
	latexmk -lualatex -shell-escape -output-directory=build *.tex
	cp build/*.pdf .
	rm -rf build

resume:
	latexmk -lualatex -shell-escape -output-directory=build resume
	cp build/resume.pdf .
	rm -rf build
	cp resume.pdf ../../sites/personal-site/static
	rsync -v -e ssh resume.pdf liam@192.168.4.219:/home/liam/containers/blog/personal-site/static/resume.pdf
	open resume.pdf

cv:
	latexmk -lualatex -shell-escape -output-directory=build cv
	cp build/cv.pdf .
	rm -rf build
	rsync -v -e ssh cv.pdf liam@192.168.4.219:/home/liam/containers/blog/personal-site/static/cv.pdf
	open cv.pdf

open:
	open resume.pdf

opencv:
	open cv.pdf