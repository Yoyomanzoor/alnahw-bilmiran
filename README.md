# النحو والمران

This project is a heavy work in progress. Please do not copy any material from the text until it is complete.

## This branch

This branch is an attempt at organization. Perhaps it is better to create the piece in two parts: the first being a translation of a work or an adaptation that summarizes the concepts, the second being the reference material for study based on the first part.

Possible texts to use:

https://takw.in/lughah/nahw/qawaed-alirab  
https://takw.in/lughah/nahw/nuktah-alirab  
https://takw.in/lughah/nahw/alaajurrumiyah  
https://takw.in/lughah/nahw/qatr-alnada

Each of these have extensive شروحات and مختصرات.

## Install XeLaTex on Ubuntu

```bash
sudo apt-get install texlive-xetex texlive-lang-arabic texlive-bibtex-extra biber texlive-fonts-extra
```

## Compile

To compile, run `make`.

## Random thoughts on IDEs

VSCode has been the friendliest IDE to work in for arabic+english TeX out-of-the-box. My reviews of other IDEs so far:

- Notepad++: great on windows, not available on linux.
- Vim: even with `mlterm` and spacevim, arabic occasionally gliches and characters get deleted.
- Atom: properly displays both languages, but can't edit arabic.
- Sublime: no bidi support.
