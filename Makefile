DATE = $(shell date --iso=seconds)
SRC_FILES = main.tex main.pdf
RM_FILES = $(filter-out $(SRC_FILES), $(wildcard main.*))

.PHONY: all
all:
	$(MAKE) everything 2>&1 | tee -a Make.log

.PHONY: everything
everything: clean pdf move open

.PHONY: pdf
pdf:
	@echo ""
	@echo ""
	@echo " *"
	@echo " *       |\ | /\ |__||  |   "
	@echo " *       | \|/~~\|  ||/\|   "
	@echo " *          __              "
	@echo " *         |__)||           "
	@echo " *         |__)||___        "
	@echo " *            __            "
	@echo " *      |\/|||__) /\ |\ |   "
	@echo " *      |  |||  \/~~\| \|   "
	@echo " *"
	@echo " *      Author: $$(whoami)"
	@echo " *      Date: $(DATE)"
	@echo " *"
	@echo " *"
	@echo ""
	xelatex main.tex
	biber main.bcf
	xelatex main.tex
	xelatex main.tex
	# xindy -C utf8 -M numeric-sort -M latex -M latex-loc-fmts -M texindy -M latin-alph main.idx
	# xindy -C utf8 -M texindy -L arabic main.idx

.PHONY: move
move:
	mkdir -p output
	mv $(RM_FILES) output

.PHONY: open
open:
	@xdg-open main.pdf

.PHONY: clean
clean:
	rm -f main.pdf
	rm -rf output