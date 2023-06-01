.PHONY: all
all: clean pdf move open

.PHONY: pdf
pdf:
	xelatex main.tex
	biber main.bcf
	xelatex main.tex
	xelatex main.tex

.PHONY: move
move:
	mkdir -p output
	mv main.* output
	mv output/main.tex .
	mv output/main.pdf .

.PHONY: open
open:
	@xdg-open main.pdf
	
.PHONY: clean
clean:
	rm -f main.pdf
	rm -rf output