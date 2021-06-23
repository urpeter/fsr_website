## General remarks
LaTeX is a software package for typography. It is especially popular in academics, especially MINT, and is the de facto standard of many publications.  In contrast to programms like Microsoft Word or LibreOffice, LaTeX is not a WYSIWYG ("What you see is what you get") system which during the writing process display the document in a fashion that is very similar to the final output. 
Instead, **LaTeX documents are written in an own language (similar to a programming language) and only at the end this is translated (compiled) to the actual document format (in practice mostly PDF)**.
Therefore the document creation process is less "intuitive", on the other hand offering many advantages one of them being improved microtypography. 

## <font color="#F00000">Before you start:</font>

To work with LaTeX several preprequisites have to be fullfilled. Please read the [tutorial](latex_tut_en.html) if you don't know how to install it.

<div class="panel panel-danger">
  <div class="panel-heading">
    <h3 class="panel-title">Very important</h3>
  </div>
  <div class="panel-body">
    For the propaedeutic LaTeX course at the start of the winter term your laptop or CoLi-Account should be already configures such that you can directly start. That is, you should have a working LaTeX installation. During the propaedeutic course we don't have time to navigate you through the installation process.  
<font color="#F00000">Therefore: If you encounter problems during the installation, please tell us in advance and we will find a solution together.Otherwise you will have to limit yourself to watching during the introduction.</font>
  </div>
</div>


## Structure of a `.tex` file

A `.tex` file usually consists of two parts: the first part is the so-called **preamble** in which general properties of the document will be set and needed packages (see below) are loaded. The second part is the **main part** which contains the actual content of the document. In both parts you can find **commands** which control the form of the document. They always start with a backslash (`\`).

The preamble start with the `\documentclass` command which states the kind of document the file should be. Possible document classes are for example `article`, `report` or `book`.  This is usually followed by several `\usepackage` commands with which additional functionalities are provided. Packages define desired commands so you don't have to do the low-level work. For instance, there are packages for chemical formulas, IPA symbols or even drawings.

The main part of the document is surrounded by the commands `\begin{document}` and `\end{document}`. In between you have to place all contents which should appear in your final document (text, tables, figures etc.). In practice most `.tex` files you will write will differ more in the main part than in the preamble. Therefore it can be helpful to create a sample template, i.e. a simple, empty `.tex` file with a complete preamble covering essential packages. This template can then be used as a basis for other documents, so you just have to insert the content in the main part, which will save you from writing the basically same preamble for several documents again and again. 

*Note: You can find templates on the web too. However, for a beginner it might be easier to start from scratch, to avoid running into error messages from packages for which you don't know what they are doing and also don't actually need them*.

## Packages

There are countless number of LaTeX packages for all different kinds of applications.  Here we can only mention some important ones.   Remember that packages are loaded in the preamble (i.e. before the `\begin{document}`) with `\usepackage{packagename}` or with options: `\usepackage[option1,option2,option3]{packagename}`. For package documentations [CTAN](https://www.ctan.org/) is a good ressource: Documentations are available there as PDFs, sometimes even in multiple languages (for instance for the [`booktabs`](https://www.ctan.org/pkg/booktabs) package). 

### Recommended packages in general: 

(Link to the package documentation on CTAN at the end as '(doc)')

- `\usepackage[utf8]{inputenc}` - activates UTF8-support (helpful for documents with umlauts and/or special symbols) [(doc)](https://www.ctan.org/pkg/inputenc)
- `\usepackage[T1]{fontenc}` - among others responsible for correct appearance of umlauts in the compiled documents. [(doc)](https://www.ctan.org/pkg/fontenc)
- `\usepackage[english]{babel}` - Correct hypenation according to English spelling rules (use `ngerman` instead of `english` for document written in German), also controls other language-dependent output, e.g. the title of the table of contents or the title for the bibliography. [(doc)](https://www.ctan.org/pkg/babel)
- `\usepackage{microtype}` - activates advanced microtypographic features which could improve the appearance of the doucment. [(doc)](https://www.ctan.org/pkg/microtype)

### Recommended packages for specific purposes: 

- `\usepackage{lmodern}` - a different font: better appearancce of diacritic symbols
- `\usepackage{amsmath}` - better math formulas 
- `\usepackage{geometry}` - easy settings for page margins among others, see also the documentation [(doc)](https://www.ctan.org/pkg/geometry)
- `\usepackage{booktabs}` - more beautiful tables using `\toprule`, `\midrule` and `\bottomrule`. [(doc)](https://www.ctan.org/pkg/booktabs)
- `\usepackage{tipa}` - IPA symbols
- `\usepackage{graphicx}` - for importing graphics such as PNG (see also [Wikibooks:LaTeX: importing graphics](https://en.wikibooks.org/wiki/LaTeX/Importing_Graphics)). [(doc)](https://www.ctan.org/pkg/graphicx)
- `\usepackage{hyperref}` - for inserting hyperlinks and URLs among others, check out the documentation [(doc)](https://www.ctan.org/pkg/hyperref)

see also [tex.stackexchange: what packages do people load by default in LaTeX?](https://tex.stackexchange.com/q/553)


## Include document parts

Sometimes it is helpful to split a file into multiple parts, for instance if you are working with other people on this document or if the document is very large (e.g. structuring a thesis as one file per chapter). Then you should consider the `\input` command. With this command you can insert the content of another `.tex` file in the current file at any position. For the compilation this is basically the same as if the input command would have been replaced with the content of the included file (therefore included files usually don't have an own preamble!). The `\input` command can also be nested, i.e. the included file can itself contain `\input` commands.

*Note*: There is also the `\include` command, this offers a similar, albeit not the same functionality.  **todo**

## Compilation

Because you would usually like to have a PDF file as output, one of the most important commands in `pdflatex`. So if you've finished your `.tex` file, you can type the following into your command line/terminal/shell:
```shell
pdflatex myfile.tex
```

Calling this command results in either

1. a lot of error messages, e.g. when the input file contains syntax errors like missing closing brackets, or
2. a PDF file `myfile.pdf` containing the final document, and additionally some auxiliary files (ending in e.g. `.aux`, `.out`, `.log`). Eventually some warnings might be written when pdflatex can indeed create a PDF file but there were some "impurities"; for instance one common cause are lines which are either too short or too long for the full justification.

## Editors
Purists might prefer a simple text editor and command line, however there are multiple different editors specifically for writing LaTeX documents. We can for instance recommend [TeXStudio](http://texstudio.sourceforge.net/) which convinced us with a built-in PDF preview and shortcuts for the most important commands. However there are many other editors too, differing in features and their main focus.

See for instance [Wikipedia's comparison of TeX editors](https://en.wikipedia.org/wiki/Comparison_of_TeX_editors).

## Handout

Some general remarks and links can be found in [this handout](../pdf/Handout_eng.pdf). Specifically we would like to highlight the link to [Detexify](https://detexify.kirelabs.org/classify.html), a small web page, which helps you to find the right LaTeX command for various symbols. You can just draw the symbol and Detexify detects automatically which symbol you mean.

## Advanced things
see [our site about advanced features of LaTeX](latex_advanced.html), including more information about packages relevant for colis, tips and tricks, bibliographies

