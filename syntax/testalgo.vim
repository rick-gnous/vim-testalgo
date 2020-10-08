" syntaxe de testalgo
" Maintainer: rick@gnous.eu
" Contributor:
" Last Changes: 07 Octobre 2020
" Gnous Repository: https://git.gnous.eu/Rick/vim-testalgo
" Licence: GPL3 only

if exists("b:current_syntax")
    finish
endif

syntax keyword testalgoKeyword var algo debut fin
syntax keyword testalgoConditional si alors sinon finsi 
syntax keyword testalgoRepeat tantque fintantque pour finpour à pas 
syntax keyword testalgoRepeat repeter finrepeter jusqua 
syntax keyword testalgoFunction saisir afficher afficherln alaligne 

highlight link testalgoKeyword Keyword
highlight link testalgoConditional Conditional
highlight link testalgoRepeat Repeat
highlight link testalgoFunction Function

syntax keyword testalgoBoolean vrai faux
syntax keyword testalgoType entier reel booleen chaine caractere
highlight link testalgoBoolean Boolean
highlight link testalgoType Type

"TODO tableau_de (permet de faire un tableau)
"TODO procedure fonction (définessent des fonctions)
"TODO principal (main)

syntax match testalgoComment "\v#.*$"
highlight link testalgoComment Comment

syntax match testalgoString "\v\".*\""
highlight link testalgoString String

"syntax match testalgoOperator "\v:\="
"highlight link testalgoOperator Operator

let b:current_syntax = "testalgo"
