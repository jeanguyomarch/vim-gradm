" Vim syntax file
" Maintainer:   Jean Guyomarc'h <jean.guyomarch@gmail.com>
" URL:          https://github.com/jeanguyomarch/vim-gradm.git
" Last Change:  2015-07-10
" Version:      1.0

if version < 600
   syntax clear
elseif exists("b:current_syntax")
   finish
endif

setlocal iskeyword+=-
syn sync fromstart

syn match       learnComment             /#.*$/
syn keyword     learnKwNoReduce          dont-reduce-path
syn keyword     learnKwReduce            high-reduce-path always-reduce-path
syn keyword     learnKwProtected         protected-path high-protected-path read-protected-path
syn keyword     learnKwLearn             inherit-learn inherit-no-learn no-learn
syn keyword     learnSplitRoles          split-roles
syn keyword     learnDontLearnAllowedIPs dont-learn-allowed-ips

" Different types to group keywords by categories
hi def link     learnComment             Comment
hi def link     learnKwNoReduce          Constant
hi def link     learnKwReduce            Type
hi def link     learnKwProtected         Statement
hi def link     learnKwLearn             String
hi def link     learnSplitRoles          Structure
hi def link     learnDontLearnAllowedIPs Structure

