" Vim syntax file
" Language:	Heptagon
" Last Change:	2021 Feb 10
if exists("b:current_syntax")
  finish
endif

syn match heptNumber '\v<\d+>' display
syn match heptNumber '[-+]\d\+\.\d*' display
syn match heptType   ':\s*\zs\w\+\ze' display



syn region  heptCommentL	start="--" skip="\\$" end="$" keepend display 

syn region heptBlock matchgroup=Operator start="let" end="tel" fold

syn keyword heptKW var let tel returns node map fold mapfold contract do switch present end
syn keyword heptSP pre fby
syn keyword heptPreProc open external fun
syn keyword heptType int bool real res
syn keyword heptCond if then else
syn keyword heptConstBool true false

syn match heptInit		"->"

let b:current_syntax = "hept"

hi def link heptNumber      Constant
hi def link heptConstBool   Constant
hi def link heptKW          Statement
hi def link heptType        Type
hi def link heptPreProc     PreProc
hi def link heptCond	    Conditional
hi def link heptSP	        Statement
hi def link heptInit	    SpecialChar
hi def link heptCommentL    Comment
