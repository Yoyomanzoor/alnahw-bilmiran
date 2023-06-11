# Sumeed Manzoor
# June 2023
# The University of Michigan Medical School

DATE := $(shell date --iso=seconds)
SRC_FILES = main.tex main.pdf main.mst main.ist
RM_FILES = $(filter-out $(SRC_FILES), $(wildcard main.*))
RAW_SRC_FILES = $(wildcard sections/*.tex)
RM_SECTION_FILES = $(filter-out $(RAW_SRC_FILES), $(wildcard sections/*))

.PHONY: all
all:
	$(MAKE) everything 2>&1 | tee -a Make.log

.PHONY: everything
everything: clean pdf move open

.PHONY: compile
compile:
	$(MAKE) rebuild 2>&1 | tee -a Make.log

.PHONY: rebuild
rebuild: pdf open

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
	makeindex main.idx
	xelatex main.tex
	# xindy -C utf8 -M numeric-sort -M latex -M latex-loc-fmts -M texindy -M latin-alph main.idx
	# xindy -C utf8 -M texindy -L arabic main.idx

.PHONY: move
move:
	mkdir -p output
	mv $(RM_FILES) output
	mv $(RM_SECTION_FILES) output

.PHONY: open
open:
	@xdg-open main.pdf

.PHONY: clean
clean:
	rm -f main.pdf
	rm -rf output
	rm -f Make.log