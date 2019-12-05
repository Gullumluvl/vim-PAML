# Syntax highlighting for PAML control files

The programs from the PAML package by Ziheng Yang ([1997][1], [2004][2]) use a common input file format, containing parameters:

It's basically a list of `key = value`, and comments starts with an asterisk `*`:

Here is an short exerpt suited for the `codeml` program:

    seqfile = myalignment.phy
    treefile = mytree.nwk
    model = 0  * possible values: 0: one omega for the tree; 1: one omega per branch (free-ratio model)


Parameter names described in [PAML's manual][3] are highlighted, and comments
recognized as such.

# Warning

The autodetection of the filetype works for all files with `.ctl` extension. I
don't use this extension for another purpose but if you do, modify accordingly
the `ftdetect/PAML.vim` commands.

# Installing

I personally use [Tim Pope's Pathogen](https://github.com/tpope/vim-pathogen)
as my plugin manager (and recommend it).

With Pathogen, simply clone this repository inside `~/.vim/bundle/`.

# Disclaimer

Likely buggy, but it fits my needs so far.


[1]: http://doi.org/10.1093/bioinformatics/13.5.555
[2]: http://doi.org/10.1093/molbev/msm088
[3]: http://abacus.gene.ucl.ac.uk/software/pamlDOC.pdf
