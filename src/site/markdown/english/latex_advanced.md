**Under construction**: still lots of to do notes in here

<!-- to do: do I need to add it to build.gradle ext pageTitles ??-->
<!-- should this rather be transformed to a PDF? -->

This site contains information on more advanced features of LaTeX including

- some packages relevant for coli (linguistics, computer science, math related)
- some cool stuff aka tips and tricks
- presentations with LaTeX (with beamer)
- bibliographies with LaTeX (bibtex/biblatex and citations)


## coli-related packages

Coming back to the question "have you ever been annoyed by typesetting lots of formulas, syntax trees, pseudo and source code, linguistic examples/ glosses and such with Word/OpenOffice?".
Below you'll find a list of packages that might be useful in the field of CoLi:

#### math packages
`amsmath, amsfonts, amssymb`
See also [Wikibooks:LaTeX: list of math symbols](https://en.wikibooks.org/wiki/LaTeX/Mathematics#List_of_mathematical_symbols). **todo** equation, align, math modes
see also below section about "Math symbols and more".

#### Linguistic glosses

**to do**
In the field of linguistics you often need (numbered) examples, sometimes with annotations in a meta-language and/or with a translation.
There are several packages to achieve this, for instance [`gb4e`](https://www.ctan.org/pkg/gb4e) and [`linguex`](https://www.ctan.org/pkg/linguex). 

The below example uses `gb4e`:
```
%% in preamble (that is, before \begin{document})
\usepackage{gb4e}  %% include this package late, because it modifies _ and ^ (sub/superscript)
\noautomath  %% disable _ and ^ in text to avoid problems: https://tex.stackexchange.com/a/101311
\usepackage{hyperref}  %% for the cross-referencing

%% after \begin{document}
\begin{exe}
  \ex\label{ex:one} This is example one
  \ex[*]\label{ex:two} This is example two
\end{exe}

We refer back to \ref{ex:one}, but there is also \ref{ex:two}.
Coming to glosses (copied from the gb4e documentation):
\begin{exe}
\ex
\gll Wenn jemand in die W\"uste zieht ... \\
If someone in the desert draws and lives ... \\
\trans `if one retreats to the desert and ... '
\end{exe}
```
For how to do automatic referencing using cleverref see [here](https://tex.stackexchange.com/a/318983) or you can do your own [hack](https://tex.stackexchange.com/a/211871).

#### Syntactic trees

**to do**
For *constituency trees* one can try [`qtree`](https://www.ctan.org/pkg/qtree), [`tikz-qtree`](https://www.ctan.org/pkg/tikz-qtree), but there are also other packages.
*Dependency trees* can be drawn with [`tikz-dependency`](https://www.ctan.org/pkg/tikz-dependency).

<!--
Below just a very basic example, read the respective documentation for all the customization options, commands and caveats.
```
%% before \begin{document}
\usepackage{tikz}  %% neded for packages tikz-qtree and tikz-dependency
\usepackage{tikz-qtree} %% for constituency trees
\usepackage{tikz-dependency}  %% for dependency trees

%% after \begin{document}
A constituency tree with tikz-qtree:\\
\begin{tikzpicture}
%\tikzset{frontier/.style={distance from root=120pt}}  %% all leaves on one line hopefully
\Tree
[.CP
  [ .DP$_{\langle et, t \rangle}$ \edge[roof]; {every man} ]
  [ .VP$_{et}$
    [ .V loves$_{\langle e, et \rangle}$ ]
    [ .DP 
      [ .Det some ]
      [ .N woman$_{et}$ ]
    ]
  ]
]
\end{tikzpicture}

A dependency tree with tikz-dependency:\\
\begin{dependency}
  \begin{deptext}
    Every \& man \& loves \& some \& woman \\
  \end{deptext}
  \depedge{2}{1}{det} % edge from second to first word (start counting at 1) with label 'det'
  \depedge{3}{2}{nsubj}
  \depedge{3}{5}{dobj}
  \depedge{5}{4}{det}
  \deproot{3}{root}
\end{dependency}
```
-->
<!-- 
qtree and tikz-qtree: space between label and rest is important! 
qtree: qroof (and qsetw for spacing)
There are other packages too, like [xyling](https://www.ctan.org/pkg/xyling) more cluttered and old?, [synttree](https://www.ctan.org/pkg/synttree) not updated anymore?
-->

#### Other grammar formalisms (CCG, HPSG)
**to do**
- CCG?  bussproofs? what about [mathpartir](https://www.ctan.org/pkg/mathpartir), [semantic](https://www.ctan.org/pkg/semantic) or others?
<!--
\begin{prooftree}
    \AxiomC{father-of' :: $\langle e,\typet \rangle $}
    \AxiomC{luke' :: $e$}
    \BinaryInfC{father-of'(luke') :: $\typet$}
    \AxiomC{darth-vader' :: $e$}
    \BinaryInfC{father-of'(luke')(darth-vader') :: $t$}
\end{prooftree}	
-->
- attribute-value matrices for HPSG: check out the documentation for
[Christopher Manning's](https://nlp.stanford.edu/manning/tex/) [`avm` package](https://nlp.stanford.edu/manning/tex/avm-1.03.zip) or the newer [`langsci-avm` package](https://www.ctan.org/pkg/langsci-avm)

#### Pseudo code and source code

You would like to add pseudocode or actual source code in your tex file?

There are multiple packages for typesetting pseudocode algorithms see for instance [Wikibooks:LaTeX: algorithms](https://en.wikibooks.org/wiki/LaTeX/Algorithms). One of the possibilities is the [`algorithmicx` package](https://www.ctan.org/tex-archive/macros/latex/contrib/algorithmicx/).

Actual source code listings (e.g. a python function) with [`listings`](https://www.ctan.org/pkg/listings). If python is installed, [`minted`](https://www.ctan.org/pkg/minted) provides functionality to insert beautiful syntax-highlighted source code (both inline and as a separate block). See also [Wikibooks:LaTeX: source code listings](https://en.wikibooks.org/wiki/LaTeX/Source_Code_Listings)
<!--
\mintinline{c++}{some inline code}
\begin{minted}{c++}  some code block \end{minted}
--->

#### IPA symbols 
**to do**
IPA symbols: [`tipa`](https://www.ctan.org/pkg/tipa)


#### Tables
**to do**
- [`siunitx`](https://www.ctan.org/pkg/siunitx): would you like to align a column on the decimal point? Would you like to uniformly display only 2 digits after the decimal point but your numbers contain more? check out the `S` column provided by this package and its options like `round-mode` and `round-precision` or `table-format`. (note for bold font: add `\usepackage{etoolbox}` and `\robustify\bfseries`).
siunitx in general? https://tex.stackexchange.com/a/497329 and https://tex.stackexchange.com/a/497329 ? **to do**
- [`booktabs`](https://www.ctan.org/pkg/booktabs) should be used for cleaner tables using only `\toprule`, `\bottomrule` and `\midrule` to insert rules (i.e. lines between rows), read [its intro in the documentation](http://mirrors.ctan.org/macros/latex/contrib/booktabs/booktabs.pdf) on what makes a table easy to read.


#### Misc

- [`graphviz`](https://www.ctan.org/pkg/graphviz): write graphviz style graphs directly in a LaTeX document (e.g. for finite state automata)
- for more see [CTAN linguistic-tagged packages](https://www.ctan.org/topic/linguistic):
[drs](https://www.ctan.org/pkg/drs), [sdrt](https://www.ctan.org/pkg/sdrt), [rst](https://www.ctan.org/pkg/rst), leipzig glosses [leipzig](https://www.ctan.org/pkg/leipzig)

Although a bit outdated sometimes [latex4ling](https://www1.essex.ac.uk/linguistics/external/clmt/latex4ling/) points to a couple of packages relevant to linguists: how to write attribute-value matrices (e.g. for HPSG), categorial grammar (e.g. CCG), glosses (i.e. numbered examples), IPA symbols, semantics (relevant math symbols, denotation brackets, disourse representation structures), (syntactic) trees among others


## some cool stuff

These are all things you might not care about as a beginner, but eventually turned out to be quite useful sometimes:

- **Overleaf account**: with your `stud.uni-saarland.de` email address (last checked May 2021) you basically get the 'Professional' functionality for free, which --among others-- includes support of git for instance: https://www.overleaf.com/edu/saarland 

- **`\ref` and `\label` commands**: you can put a label on differnt things inside your document (figures, tables, sections, glosses, source code listings...) and later refer back to them using that label. This will create a hyperlink (if you imported the [`hyperref` package](https://www.ctan.org/pkg/hyperref)) to that label.
*Pro-Tipp*: Check out the packages [`varioref`](https://www.ctan.org/pkg/varioref) and [`cleveref`](https://www.ctan.org/pkg/cleveref) to automatically generate e.g. `Figure 2 on the previous page` from just `\vref{fig:sample}` in the source code. We would recommend reading [Wikibooks:LaTeX: Labels and cross-referencing](https://en.wikibooks.org/wiki/LaTeX/Labels_and_Cross-referencing).
By the way: hyperref is a very powerful package: you can also create hyperlinks with it (see also [Wikibooks:LaTeX: hyperlinks](https://en.wikibooks.org/wiki/LaTeX/Hyperlinks), e.g. for URLs with the `\url{some-url-here}` command and more importantly the `\href{url}{description}` command (that way you can also insert email addresses: `\href{mailto:dummy@email.com}{dummy@email.com}`). Additionally, it lets you control certain PDF metadata. You might also want to check the `colorlinks` and `hidelinks` flags to control the appearance of all links in the document.  


- **automatically generate table of contents, list of figures, list of tables**: `\tableofcontents`, `\listoffigures`, `\listoftables`. Whenever you convert your document to PDF it will automatically determine page numbers and the titles. NB: if the caption or section title is very long, you can use the `[..]` brackets to provide a shorter one for the table of contents/list of whatever: `\caption[short title]{imagine this to be a very long title}`. Rhetorical question: how complicated would it be to achieve the same thing in MS Word/OpenOffice?

- to do: be careful about encoding: special chars in tex documents,  also resevered chars like `&%#$` escape them like `\&` if you mean them literally. how to diagnose the problem? `\DeclareUnicodeCharacter{PROBLEMATICNUMBER}{***HERE***}` and compile and check where this appears

- to do: **defining your own commands**:
    - see [Wikibooks:LaTeX: macros](https://en.wikibooks.org/wiki/LaTeX/Macros) 
    - (also [`xspace`](https://www.ctan.org/pkg/xspace)), 
    - own commands for 
        - words/sentences/annotation format so you can later more easily change from it in italics to in quoation marks: `\newcommand{\word}{\textit{#1}} % use like \word{hello}`
        - or for so-called things: `\newcommand{\socalled}[1]{'#1'}` and then call with `\socalled{meaning}`
    - to-do command or package [`todonotes`](https://www.ctan.org/pkg/todonotes)? `\newcommand{\todo}[1]{\colorbox{yellow}{#1}} % doesn't work with line break, need xcolor`  or `\newcommand{\todo}[1]{\textcolor{red}{\bfseries (TO DO: #1)}}`

- **skipping content**: you don't want to comment/uncomment 50 lines? You can also sourround them with an if-statement: `\iffalse some content to be skipped, can span muliple lines \fi`. If no longer skip change `\iffalse` to `\iftrue`: note, still might be safer to comment/uncomment using `%`.

- [Wikibooks:LaTeX: FAQ](https://en.wikibooks.org/wiki/LaTeX/FAQ) and [Wikibooks:LaTeX: tips and tricks](https://en.wikibooks.org/wiki/LaTeX/Tips_and_Tricks)

- to do: `input` and `include` commands: for chapters, tables, drawings

- to do: [`gitinfo2`](https://www.ctan.org/pkg/gitinfo2) (but needs git hook, need to add [a text file](https://ctan.kako-dev.de/macros/latex/contrib/gitinfo2/post-xxx-sample.txt) to git directory) and timestamp (could do own, or [prelim2e](https://www.ctan.org/pkg/prelim2e), [datetime2](https://ctan.org/pkg/datetime2), roll your own [see this for instance](https://tex.stackexchange.com/a/996),


- to do: **denotation brackets**: can define own command for denotation brackets without need for extra packages **to do** other posssibilities, command for left and right together, ensuremath...
```
\newcommand{\denl}{[\![}
\newcommand{\denr}{]\!]}
```

- **Templates**: Conferences usually provide style templates which also include certain packages. For instance for [COLING2020](https://coling2020.org/pages/submission) (a one-column format), [EMNLP2021](https://2021.emnlp.org/call-for-papers/style-and-formatting) (a two-column format), [NeurIPS 2021](https://neurips.cc/Conferences/2021/PaperInformation/StyleFiles) (a one-column format). These style templates usually get a slight update every year.

- **Customizing list environments** using the [`enumitem` package](https://www.ctan.org/pkg/enumitem)  
  - inline lists with starred option, i.e. `enumerate*` instead of `enumerate` if you include the package option `inline`: `\usepackage[inline]{enumitem}`
  - customize labels: 
    - `roman` (i, ii, iii, iv, ...) or upppercase: `Roman` (I, II, III, IV, ...), 
    -  `arabic` (1, 2, 3, 4, ...)
    - `alph`/`Alph`: (a, b, c, d, ... / A, B, C, D, ...)
  - no separating space between items or between the list and surrounding text: options `noitemsep` and `topsep`, combined as `nosep`, e.g. `\begin{enumerate}[nosep]` or setting it globaly `\setlist{nosep}`
  - example (with package option `inline` to enable in-line lists): `\begin{enumerate*}[label={\alph*)},font={\color{red!50!black}\bfseries}]` inline list (starred enumerate), with lowercase alphabetical labels and closing parenthesis `label={\alph*)}` results in `a).., b) ...`, font is a red tone and bold(`\bfseries`).
  - see also [Wikibooks:LaTeX: List structures](https://en.wikibooks.org/wiki/LaTeX/List_Structures)

<!--
- `\setlength\parindent{0pt}`
-->


#### Math symbols and more

**Math symbols**
[Wikibooks:LaTeX: list of math symbols](https://en.wikibooks.org/wiki/LaTeX/Mathematics#List_of_mathematical_symbols)

frequently used math symbols:

- *greek letters*. Basically slash and then spelled out. Use first letter upper/lowercase to distinguish upper/lower case, i.e. `\Theta` vs `\theta`: `\alpha, \beta, \gamma, \delta,.., \phi, \chi, psi, \omega`. Sometimes additionally `var`in front: `\varbeta, \varepsilon, \vartheta, \varkappa, \varpi, \varrho, \varsigma, \varypsilon, , \varphi`.
- *logic*: negation `\neg`, disjunction `\lor` (old: `\vee`), conjunction `\land` (old: `\wedge`), logical implication `Rightarrow` or `implies`. Equivalence `Leftrightarrow` (what about `\equiv`?).
Tautology `\top` and contradiction `\bot`. Universal quantification `\forall`, existential quantification `\exists`.
- *set theory*: `\in` and `\notin`, empty set: `\emptyset` or `\varnothing`. Subset and subset equal: `\subset`, `subseteq`. Same with superset. Union `\cup` and intersection `\cap`.
- other: `\pm` plusminus, `\neq` not equal, `\leq` less or equal, `\geq` greater or equal, `\approx` approximately equal to, `\propto` proportional to
- parenthesis: `\langle . \rangle` for tuples, `\{ . \}` for sets.
- `cdot`, `\dots`, `bullet`, `\circ`
- Infinity: `\infty`
- cross-product: `\times`
- mid, nmid, 
- vdash, models, to, mapsto,
- `\partial` partial derivative
- `\sum, \prod, \limits, \max, \log, , \frac{numerator}{denominator}, \textrm{text inside math mode}`
- `\{   ... \}`cury braces
- [Detexify](https://detexify.kirelabs.org/classify.html) website: draw the symbol for which you would like to know the LaTeX command.

wtf [halloween-math](https://www.ctan.org/pkg/halloweenmath)

**bracktes and parenthesis** to do  
can try `\big( ... \big)`  or `\left( \right)` (also work with other parenthesis types.
For tuples don't use `< ... >`, use `\langle ... \rangle` instead.

**bold math**  to do  
[`bm` package](https://www.ctan.org/pkg/bm), but also `\mathbf{...}` command, see stackexchange

**math environments** to do  
equation and equation
align environments (plus intertext): `align, alignat, flalign` and their starred variants. `\nolabel`

**Misc** to do 

- defining own commands [Wikibooks:LaTeX: macros](https://en.wikibooks.org/wiki/LaTeX/Macros)
e.g. for real numbers, argmax, denoation brackets..
- text in math mode: can do `\text{...}`: maybe inside the braces first have space..
- space size: need more or less space between math symbols?   `\, \: \; \quad \qquad`


<!---
#### Header and footer for assignment sheets
**to do: delete?**
```
%% in the preamble, i.e. before \begin{document}
\usepackage{lastpage} %% for \pageref{LastPage} command   (page X of \pageref{LastPage} )
\usepackage{fancyhdr}\pagestyle{fancy}
\lhead{course title} %% header left
\chead{assignment 1} %% header center
\rhead{\today}  %% header right
\lfoot{name
    \texttt{\href{mailto:name@mail.com}{name@mail.com}}} %% footer left
%\lfoot{} %% footer left
\cfoot{} %% footer center
\rfoot{ page \textbf{\thepage} of \textbf{\pageref{LastPage}}}   %% footer right
\renewcommand\headrulewidth{0.5pt} %% small line aka rule between main content and header
\renewcommand\footrulewidth{0.5pt}
%% \maketitle automatically leads to \thispagestyle{plain} (see fancyhdr manual)
%% therefore, we redefine the plain style as follows:
%% ( note we could also make the title page with no header/footer by  \thispagestyle{empty} directly after \maketitle )
\fancypagestyle{plain}{%
  \renewcommand{\headrulewidth}{0pt} %% no rule for header
  \fancyhf{} %% delete all header/footer content
  \rfoot{ page \textbf{\thepage} of \textbf{\pageref{LastPage}}}
}
```
-->

## presentations with LaTeX using beamer

You can also create presentation slides with LaTeX using the `beamer` class.
beamer class and beamer cheatsheet or overview styles  http://www.cpt.univ-mrs.fr/~masson/latex/Beamer-appearance-cheat-sheet.pdf

**to do**


## bibliographies with LaTeX

**to do**

There is one major choice you have to make: using bibtex or biblatex?

see also [tex.stackexchange question](https://tex.stackexchange.com/questions/8411/what-is-the-difference-between-bibtex-and-biblatex) 

BibTeX is older, more limited, but still somewhat the default. BibLaTeX is newer, allows for instance more Unicode...
See also [Wikibooks:LaTeX: here](https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management).
See also [Overleaf bibliography management with biblatex](https://www.overleaf.com/learn/latex/Bibliography_management_with_biblatex) and [Overleaf biblatex bibliography styles](https://www.overleaf.com/learn/latex/Biblatex_bibliography_styles) and [Overleaf getting started with biblatex](https://www.overleaf.com/learn/latex/Articles/Getting_started_with_BibLaTeX)

For your bibliography you collect all your literature into a `.bib` file. You then in your main `.tex` document specify the name of your bib file(s) and further formating information.
You additionally have to run more commands too (e.g. `bibtex`, `biber`..) and repeated pdflatex calls: editor can do this for you, maybe run biblio again if changed...**todo**
Maybe you want to automate this using a bash script/makefile.


also use [`csquotes` package](https://www.ctan.org/pkg/csquotes) ? enquote, textquoate, blockquote  and language-specifier

### bib files
All your literature is stored in one or more `.bib` files. 

There are many bibliography tools, e.g. [JabRef](https://www.jabref.org/) or [Citavi](https://www.citavi.com/en), that can generate bib files.

The [ACL anthology](https://www.aclweb.org/anthology/) and other sites such as [arXiv](https://arxiv.org/) usually provide a way to copy the bib(la)tex entry for the corresponding paper. Beware: for sites like [Google scholar](https://scholar.google.com/) or [Semantic scholar](https://www.semanticscholar.org/) you might need to post-edit the bib entries provided by them!

bib files: name of an entry,
key-value pairs specific to x,
beware of special characters (especially with bibtex) and when certain parts get lowercased


### bibtex

[`bibtex` documentation](https://www.ctan.org/pkg/bibtex)
```
%% in preamble
% nothing? natbib maybe?
%% inside the document environment:
\bibliographystyle{apacite}  %% other options: plain, abbrv, alpha, abstract, acm, named
\bibliography{references,other} % bib files have to be in same folder
```
compile: pdflatex, bibtex, pdflatex, pdflatex

### biblatex with biber

[`biblatex` documentation](https://www.ctan.org/pkg/biblatex)
**to do: biber** [`biber` documentation](https://www.ctan.org/pkg/biber)
```
%% in preamble (recommended to use utf8 inputenc and csquotes as well)
\usepackage[style=authoryear,sorting=nyt,backend=biber]{biblatex}
\addbibresource{references.bib}  % bib files have to be in same folder, or you have to provide the path to it
\addbibresource{other.bib}
%% inside the document environment
\printbibliography
```
compile: pdflatex, biber, pdflatex, pdflatex
biblatex cheatsheet: http://tug.ctan.org/info/biblatex-cheatsheet/biblatex-cheatsheet.pdf

### citation commands

**to do**
How to cite: `\cite`
with natbib: `\citep`, `\citet`   [`natbib` documentation](https://www.ctan.org/pkg/natbib), especially the [reference sheet](https://ctan.net/macros/latex/contrib/natbib/natnotes.pdf)
citeauthor? citeyear? multiple at once `\cite{a,b,c}`
`\nocite{*}` to make every entry in the bib file appear in the bibliography (implicitly all entries cited by this command). Useful for debugging, but should probably turned off before the submission.
`\cite[prenote][postnote]{citation}` useful for page numbers

overleaf natbib citation sytles: https://www.overleaf.com/learn/latex/Natbib_citation_styles
overleaf bib management with natbib: https://www.overleaf.com/learn/latex/Bibliography_management_with_natbib
