*This site should help you to install LaTeX on your personal computer, LaTeX basics are discussed in the propaedeutic course (slides below)*. 
Before you come to the propaedeutic LaTeX introduction course (offered by us -i.e. the students council- usually at the start of the winter term)
you should ideally have successfully installed LaTeX on your computer.
Note: if you don't want to install anything on your computer: [Overleaf](https://www.overleaf.com/) is an Online LaTeX editor.

# Installation: General remarks
*Operating system specific instructions further below in subsections*

Installing LaTeX basically consists of **two** parts (assuming you already have a PDF viewer installed): 
installing a TeX distribution and an editor.

1. **TeX distribution:** this is usually operating system dependent. Usually [TexLive](https://www.tug.org/texlive/) for Unix, [MikTex](https://miktex.org/) on Windows, [MacTex](https://www.tug.org/mactex/) on Mac. 
However, this is not enough, you additionally need a editor, see the next point:
2. **Editor:** since tex files are basically plain text files, you can use any editor that will let you edit plain text files (e.g. Notepad++, Sublime, Atom, VS code...). Some of them might support things like syntax-highlighting and certain forms of auto-complete for LaTeX.  There are, however, also specific editors for (La)TeX: They usually include more LaTeX-specific functionality/options, support the compilation of `.tex` files natively and have a built-in PDF Viewer. We can highly recommend using such a TeX editor. More specifically we will use [TeXStudio](http://texstudio.sourceforge.net/) in the propaedeutic LaTeX introduction course. It is a cross-platform LaTeX editor, [TexMaker](https://www.xm1math.net/texmaker/index.html) is another one. There are a lot more TeX editors, Wikipedia offers an extensive [comparison of TeX editors](https://en.wikipedia.org/wiki/Comparison_of_TeX_editors).

See also [Wikibooks.org: LaTeX: Installation](https://en.wikibooks.org/wiki/LaTeX/Installation).

## Linux

_(These instructions at least work for Ubuntu.)_

Under Linux, it is best to install the TeX distribution [**TeX Live**](https://www.tug.org/texlive/). Open a terminal and simply type the following command:
```shell
sudo apt-get install texlive-full
```

(Attention! The download is quite large!)

You can find and install different (La)TeX editors using the Ubuntu Software center (search for 'tex editor'). As said before, we can recommend [TeXstudio (download page)](https://www.texstudio.org/). Another editor is [**texmaker**](https://www.xm1math.net/texmaker/) whose installatuon can be done conveniently via the following command: 
```shell
sudo apt-get install texmaker
```

See also

- [help.ubunu.com LaTeX](https://help.ubuntu.com/community/LaTeX)
- [texlive and Debian/Ubuntu](https://www.tug.org/texlive/debian.html)
- [wiki.ubuntuusers.de (German): TeX Live](https://wiki.ubuntuusers.de/TeX_Live/)

## Apple OS X
 
The installation of [MacTex](https://www.tug.org/mactex/mactex-download.html) is highly recommended, as it is pretty simple. For older operating system versions you might need to check out [this page](https://www.tug.org/mactex/faq/3-4.html). Afterwards, a TeX editor such as [**texmaker**](https://www.xm1math.net/texmaker/) can be installed and used. 

## Microsoft Windows 7, 8 &amp; 10

[MiKTeX](https://miktex.org/download) is a TeX/LaTeX distrbution for windows. A step-by-step manual for the (not very complicated) installation process is available [here](https://miktex.org/howto/install-miktex).

# LaTeX: Basics

For a very basic introduction you can look at the [slides of the propaedeutic LaTeX introduction](../pdf/LatexPraes_eng.pdf), the proaedeutic course usually takes place at the start of each winter term and is organized by us (the students council).




