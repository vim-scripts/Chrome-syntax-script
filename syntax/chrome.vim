" selmade Vim syntax file
" Language:	RemObjects Software Chrome
" Version:	0.1
" Last Change:	2006/7/15 19:10:00
" Maintainer:	Markus Wichmann <nullplanwichmann@web.de>

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn match hexNumber "\<\$[0-9a-f]*\>"
syn match decNumber "\<[0-9]*\>"
syn match fltNumber "\<-\=[0-9]\+\.[0-9]\+\>"
syn match fltNumber "\<-\=[0-9]\+\.[0-9]\+[eE]-\=[0-9]\+\>"

syn match Operators "[+\-*/=]"
syn match Operators "[<>]=\="
syn match Operators "<>"
syn match Operators ":="
syn match Operators "[()]"
syn match Operators "\.\.\="
syn match Operators "\[[0-9]\+\.\.[0-9]\+\]"
syn match Operators "[;,]"

syn match Comment "\/\/.*$"
syn region Comment start=+{[^\$]+ end=+}+ 
syn region Comment start=+(\*[^\$]+ end=+\*)+

syn region Directive start=+{\$+ end=+}+
syn region Directive start=+(*\$+ end=+*)+

syn keyword Operators   and or xor mod div shl shr in is as has 
syn keyword Conditional if then else case of
syn keyword Loop        for to do while repeat until each
syn keyword Types       public private protected assembly nullable nested 
syn keyword Types       class array record set string delegate enum event property 
syn keyword Types	constructor inherited override destructor
syn keyword Types       integer longint word longword smallint smallword
syn keyword Misc        new try finally except locking using matching where require ensure 
syn keyword Misc        invariants result interface with
syn keyword Subprogs	procedure function method operator
syn keyword Structure	namespace implementation uses var const type begin end

syn region String start=+'+ skip=+''+ end=+'+ contains=StringEscape
syn match StringEscape "''"


hi hexNumber ctermfg=magenta
hi decNumber ctermfg=magenta
hi fltNumber ctermfg=magenta
hi Comment ctermfg=gray
hi Directive ctermfg=red
hi Operators ctermfg=Yellow
hi Conditional ctermfg=yellow
hi Loop ctermfg=yellow
hi Types ctermfg=lightgreen
hi Misc ctermfg=white
hi Subprogs ctermfg=yellow
hi Structure ctermfg=yellow
