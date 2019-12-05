" Vim syntax file
" Language:	PAML control file
" Maintainer:	GullumLuvl
" Last Change:	2019-12-05

" Usage
"
" copy to $HOME/.vim/syntax directory and add:
"
" au BufNewFile,BufRead codeml|baseml set syntax=PAML
" au BufNewFile,BufRead *.ctl set syntax=PAML
"
" to your $HOME/.vimrc file
"
" force coloring in a vim session with:
"
" :set syntax=PAML
"

" load settings from system python.vim (7.4)
"source $VIMRUNTIME/syntax/python.vim

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "PAML"

" vim:set sw=2 sts=2 ts=8 noet:

" PAML syntax:

syn match pamlValue '\S\+' contains=pamlStr,pamlInteger,pamlFloat
syn match pamlAssign '=' nextgroup=pamlValue skipwhite

syn match pamlStr '\S\+' contained
syn match pamlInteger '\d\+' contained
" Floating point number with decimal no E or e (+,-)
syn match pamlFloat '\d\+\.\d*' contained
syn match pamlFloat '[-+]\d\+\.\d*' contained
" Floating point without leading 0
syn match pamlFloat '\.\d\+' contained

" Floating point like number with E and no decimal point (+,-)
syn match pamlFloat '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' contained
syn match pamlFloat '\d[[:digit:]]*[eE][\-+]\=\d\+' contained

" Floating point like number with E and decimal point (+,-)
syn match pamlFloat '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained
syn match pamlFloat '[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained

"syn region pamlAssigned	start='=' end='$|*' transparent contains=pamlInteger,pamlFloat
syn keyword pamlParam	seqfile outfile treefile nextgroup=pamlAssign skipwhite
"syn keyword basemlParam	nparK nhomo
"syn keyword codemlParam	seqtype CodonFreq fix_omega omega
"syn keyword evolverParam	weighting commonf3x4
" yn00 mcmctree infinitesites
syn keyword pamlParam	noisy verbose runmode model Tipdate fix_kappa kappa fix_alpha alpha fix_rho rho nparK nhomo getSE RateAncestor cleandata method icode fix_blength seqtype CodonFreq ndata clock aaDist aaRatefile NSsites Mgene fix_omega omega Malpha ncatG Small_Diff weighting commonf3x4 bootstrap nextgroup=pamlAssign skipwhite
syn keyword mcmctreeParam	mcmcfile RootAge Blength_method rgene_gamma sigma2_gamma BDparas kappa_gamma alpha_gamma finetune print burnin sampfreq nsample usedata nextgroup=pamlAssign skipwhite

"syn keyword commentTodo contained TODO FIXME XXX NOTE
"syn match pamlComment "\*.*$" contains=commentTodo
syn match pamlComment "\*.*$"

hi def link pamlComment Comment
hi def link pamlAssign Operator
hi def link pamlParam Define
hi def link mcmcParam Define
hi def link pamlInteger Number
hi def link pamlFloat Number
