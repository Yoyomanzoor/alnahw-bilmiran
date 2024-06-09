# النحو والمران

This project is a heavy work in progress. Please do not copy any material from the text until it is complete.

## Install XeLaTex 

### Ubuntu

```bash
sudo apt-get install texlive-xetex texlive-lang-arabic texlive-bibtex-extra biber texlive-fonts-extra
```

### Arch

```bash
sudo pacman -S texlive-xetex texlive-langarabic texlive-bibtexextra biber texlive-latexrecommended texlive-latexextra texlive-fontsrecommended texlive-fontsextra
```

## Compile

To compile, run `make`.

## Random thoughts on IDEs

VSCode has been the friendliest IDE to work in for arabic+english TeX out-of-the-box. My reviews of other IDEs so far:

- Notepad++: great on windows, not available on linux.
- Vim: even with `mlterm` and spacevim, arabic occasionally gliches and characters get deleted.
- Atom: properly displays both languages, but can't edit arabic.
- Sublime: no bidi support.
