if exists("b:current_syntax")
  finish
endif

syn match heptNumber '\v<\d+>' display
syn match heptNumber '[-+]\d\+\.\d*' display
syn match heptColon  '\v<:>' display contains=heptType nextgroup=heptType
syn match heptType   '\w\+' contained

syn keyword heptKW open fun var let tel returns

let b:current_syntax = "hept"

hi def link heptNumber      Constant
hi def link heptKW          Statement
hi def link heptType        Type
