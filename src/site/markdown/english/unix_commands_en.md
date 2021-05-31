
**Disclaimer**: *For the features and commands discussed below we will assume a Linux computer. Usually the same commands work on a Mac too. For Windows things are a bit trickier. Don't expect anything below to work on your Windows machine, although we sometimes do mention Windows.*

## Why should I care?

- small analysis of text files can be done with command line too (you could also write your own python script of course)
- if you access the coli servers ([see our how-to-coli-server site](how_to_coli_server.html)), then you will use shell commands most of the time
- did you know you can also use some of the commands in a jupyter notebook? using so called 'line/cell magic' (see below)

## Opening a terminal/shell/command line

- Linux: search for 'terminal', 'cmd' or 'shell'. Or in a folder rightclick and select 'Open in terminal'
- Mac Terminal: see Linux, most bash shell commands should work like on Linux
- Windows: 
    - important: the built-in terminals on windows don't use the same commands as Linux
    - for Windows 10: consider using  the terminal in the [Windows subsystem for Linux (WSL)](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux) ([Wikipedia](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)): then you can most of the time successfully pretend you would be on a Linux machine
    - `cmd.exe`[(Wikipedia)](https://en.wikipedia.org/wiki/Cmd.exe): search for `cmd.exe` (Windows terminal). To open it in a certain folder, press Shift while right clicking in the folder and then select 'Open command window here'. (Copying things is a bit difficult: rightclick in window, then select option that you want to mark/select something, afterwards you can select text and with right click on text you can select copy...)
    - `powershell` [(Wikipedia)](https://en.wikipedia.org/wiki/PowerShell): commands are different
    - [cygwin](https://www.cygwin.com/) ([Wikipedia](https://en.wikipedia.org/wiki/Cygwin)), [MingW](https://sourceforge.net/projects/mingw/) ([Wikipedia)](https://en.wikipedia.org/wiki/MinGW)) try to emulate a Linux terminal on Windows.
    - Two differences of Windows should be mentioned. First, the default encoding on Windows is not [UTF-8](https://en.wikipedia.org/wiki/UTF-8), unlike Linux (call `chcp` on Windows command line to view the current code page): keep that in mind when processing files or printing their content to the terminal. Second, Windows uses different file path syntax...`C:` (hence `:` is not allowed in a file/directory name unlike on Linux), forward vs bachward slash, but maybe can use forward slash on windows too, just not the default?
    **todo**


## Commands

**todo** manual link, options, example explained

### general remarks

Whenever below we refer to Windows we mean the `cmd.exe`, not necessarily the powershell.

On Linux, options of commands are usually preceded by one or two dashes. One dash is used for single letter options, two dashes are used for the more elaborate form of a short letter option, e.g. `-h` and `--help` both display help/usage information.

In general: use `COMMAND --help` to get usage info for the command named `COMMAND` . In the Windows command prompt you should use `/?` instead of `--help`.

You can use the up/down keys to access earlier executed commands: when you press the up arrow once you will see the last entered command (can press it multiple times to navigate through the command line history).

With pressing the [tab(ulator) key](https://en.wikipedia.org/wiki/Tab_key) (that is usually the key above the caps lock) you can sometimes spare typing work: Linux can complete file paths for you given a specific prefix, press the tab key multiple times to navigate through the suggestions.

See also [Wikipedia: List of Unix commands](https://en.wikipedia.org/wiki/List_of_Unix_commands)

### some commands

- `man`  an interface to on-line reference manuals

- **to do** file paths (windows vs linux, absolute vs relative, spaces in file path, and so on)

#### navigation in directory structure

- `cd` - "change directory"
    - without arguments changes to HOME directory (alias `cd ~`)
    - `~` means HOME directory
    - `.` means current directory
    - `..` means parent directory
    - `..` superdirectory, can also do `../../this/that`
    - `cd subdir` change to the direct subdirectory named 'subdir'
    - (on windows the command is also called `cd` too)
    - You can even change to completely different directories when you either enter their full absolute path (`~/Documents/uni/thesis`) or the path relative to your current working directory (`../../this/that`).
    - [Wikipedia](https://en.wikipedia.org/wiki/Cd_(command))
- `pwd` - "print name of current/working directory"
    - on Windows can achieve this by using `cd` without further arguments?
    - [Wikipedia](https://en.wikipedia.org/wiki/Pwd)
- `ls` - "list directory contents" (of current directory)
    - [Wikipedia entry](https://en.wikipedia.org/wiki/Ls)
    - options 
        - note: you can combine options, e.g. `ls -l -a` can be written as `ls -la`
        - `-l` details for all files
        - `-a` (`--all`) also list hidden files (hidden files start with a `.` in their filename, e.g. `.gitignore`)
    - called `dir` on Windows

#### creating, deleting, copying files and directories
- `mkdir` - "make directories": create a new directory in the current folder
    - works on Windows too
    - [Wikipedia](https://en.wikipedia.org/wiki/Mkdir)
- `cp`  - "copy files and directories"
    - `-r` copies directories including content
    - Windows: `copy`
    - [Wikipedia entry for `cp`](https://en.wikipedia.org/wiki/Cp_(Unix))
- `mv` - "move (rename) files"
    - Windows: `move` and `rename`
    - [Wikipedia about `mv`](https://en.wikipedia.org/wiki/Mv)
- `rm` - "remove files or directories"
    - **attention**: if you remove something using this command it is truly gone (not moved to waste bin)
    - `-r` selectes directories including content recursively
    - `-f` : no "are you sure?" question beforehand (USE IT WITH CAUTION!)
    - options **to do**
    - how to remove directories? evtl plus all contents in it?
    - windows: `del`  but not for directories? `rmdir`?
    - [Wikipedia on `rm`](https://en.wikipedia.org/wiki/Rm_(Unix))
- `chmod` - "change permissions"
    - **todo** `+x` `u+x` for executable

#### peaking at file contents

Peaking at the start (more, head) or the end (less, tail) of a file.
**to do**

- more and less: 
    - `more`, [Wikipedia on `more`](https://en.wikipedia.org/wiki/More_(command))
    - `less` - "opposite of more"
        - simple display of text
        - to search: `/[what you search for]`, `n` for next result
        - enter for more lines, space bar for next page
        - type `q` to quit
        - [Wikipedia](https://en.wikipedia.org/wiki/Less_(Unix))
- head and tail:
    - `head`, [Wikipedia on `head`](https://en.wikipedia.org/wiki/Head_(Unix))
    - `tail`  [Wikipedia on `tail`](https://en.wikipedia.org/wiki/Tail_(Unix))
    - `-n 100?` **to do**

#### doing basic corpus linguistics with it

- `cat` - "concatenate files and print on the standard output"
    - example with multiple arguments
    - only one argument: print content
    - [Wikipedia on `cat`](https://en.wikipedia.org/wiki/Cat_(Unix))
- `wc` - "print newline, word and byte counts for each file"
    - Lines / words / byte count
    - with several arguments: additionally displays sum of individual file counts
    - options:
        - `-l` count lines
        - `-w` count words
        - `-m` count characters
    - [Wikipedia on `wc`](https://en.wikipedia.org/wiki/Cat_(Unix))
- `grep` - "print lines matching a pattern"
    - regex (regular expression) search
    - options:
        - `-E` POSIX standard (recommended)
        - `-v` print non-matching lines
        - `-o` only print match, not full line
        - many more
    - [Wikipedia on `grep`](https://en.wikipedia.org/wiki/Grep)
    - [grep manual](https://www.gnu.org/software/grep/manual/grep.html)
- `sort` - "sort lines of text files"
    - sort lines of a file (increasing order)
    - options:
        - `-n` sort based on numerical sorting
        - `-r` decreasing order (instead of default increasing one)
    - [Wikipedia on `sort`](https://en.wikipedia.org/wiki/Sort_(Unix))
- `uniq` - "report or omit repeated lines"
    - unifies consecutive lines which are equal to one line
    - options:
        - `-c` number of unified lines insert
    - [Wikipedia on `uniq`](https://en.wikipedia.org/wiki/Uniq)
- `sed` - "stream editor for filtering and transforming text"
    - replaces specified parts of a file (among others)
    - syntax for replacements: `s/pattern/replacement/g`
    - options:
        - `-i` modify the file in-place (overwrite file content)
    - [Wikipedia on `sed`](https://en.wikipedia.org/wiki/Sed)
- `cut` - "remove sections from each line of files"
    - extracts single columns from a file
    - options:
        - `-d` specify delimiter
        - `-f` specify which columns should be printed/extracted

#### redirecting input and output

(basic `<`, `>`, `>>`, `2>` might work on Windows too)

- in general, there is an input stream, an standard output stream and an error stream. You can redirect these streams. That's useful e.g. when your scripts output is too long and you want to have saved it even if you later close the terminal for instance.
- input: `<` 
    - input stream, in python called `sys.stdin`
    - for writing your own programs you should rather use command line options for input files than using the `<` operator.
    - see also the `cat` command mentioned above in examples like `cat something.txt | python myscript.py`
- output: `>` (write/truncate) or `>>` append
    - `>` is equal to `1>`, the standard output stream (python: `sys.stdout`)
    - `2>` is the error stream, programs usually write error messages/exceptions to this stream (python: `sys.stderr`)
    - if you don't redirect anything, both the content of the standard output as well as the standard error stream will be written to the console.
- examples:
    -  `somescript > output.txt 2> errors.log`
        - meaning: all output of somescript that goes to the standard output stream (e.g. all `print()` statement in python) will not be printed to the console, but instead written into the file `output.txt` (if it exists already will be overwritten). Everything that is printed to the error stream will be redirected to the file `errors.log` (again: if it already exists, content will be overwritten).
    - `somescript 2>&1> /dev/null` (Linux)
        - meaning: all output of somescript including all errors printed to the error stream will be redirect to nirvana. Net effect: output to your terminal window is clean.
        - `2>&1>` redirect standard error (`2`) to standard output (`1`)
        - `/dev/null`: nirvana, not actually some file/directory on your system. You can redirect streams to this whenever you don't want its content to appear on the console output, e.g. `pdflatex -shell-escape -interaction=nonstopmode main.tex > /dev/null`
- **Piping**:
    - symbol `|`(pipe)
    - meaning the output of the command before the pipe symbol will become the input of the command after the pipe symbol
    - Example:
        - ```cut -f2 < tiger.txt | grep -E ‘^[Aa]’ | sort | uniq > woerter-mit-a.txt```
        - 



#### relation to coli servers

- you usually access the coli servers using the command line and specifically the command `ssh` ([Wikipedia](https://en.wikipedia.org/wiki/Secure_Shell_Protocol)): `ssh username@login.coli.uni-saarland.de`
- on the coli servers you usually also use the command line to do your work. Beyond the commands mentioned above, you can also call some programmes `git` and `python` via command line. See also: [our how-to-coli-server site](how_to_coli_server.html)


### Misc

- other useful commands:
    - you can compare files using a command called [`diff`](https://en.wikipedia.org/wiki/Diff)
- some of the above introduced commands are also available in a jupyter notebook (maybe not for Windows): there are lots of [cell and line magic commands](https://ipython.readthedocs.io/en/stable/interactive/magics.html). E.g. 
    - `%cd` (works like `cd`) 
    - [`%pwd`](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-pwd)
    - `%precision` to [set floating point precision](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-precision)
    - to run scripts and programmes, use [`%run`](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-run) or [`%system`](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-system) (`%python`,`%python3` and `%python2` might work too). Useful to execute off-the-shelf evaluation scripts for instance.
    - [`%time`](https://ipython.readthedocs.io/en/stable/interactive/magics.html#magic-time) to time execution of a command (e.g. how long it took to process a file) 
    - use `%lsmagic` to list available commands
- if you need to execute multiple commands on the command line (and would like to remember them) you might consider writing a [bash/shell scripts](https://en.wikipedia.org/wiki/Shell_script) or a [makefile](https://en.wikipedia.org/wiki/Make_(software)).

