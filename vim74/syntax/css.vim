" Vim syntax file
" Language:     Cascading Style Sheets
" Previous Contributor List:
"               Claudio Fleiner <claudio@fleiner.com> (Maintainer)
"               Yeti            (Add full CSS2, HTML4 support)
"               Nikolai Weibull (Add CSS2 support)
" Maintainer:   Jules Wang      <w.jq0722@gmail.com>
" URL:          https://github.com/JulesWang/css.vim
" Last Change:  2013 Jul 23

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'css'
elseif exists("b:current_syntax") && b:current_syntax == "css"
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case ignore

" All HTML4 tags
syn keyword cssTagName abbr acronym address applet area a b base
syn keyword cssTagName basefont bdo big blockquote body br button
syn keyword cssTagName caption center cite code col colgroup dd del
syn keyword cssTagName dfn dir div dl dt em fieldset font form frame
syn keyword cssTagName frameset h1 h2 h3 h4 h5 h6 head hr html img i
syn keyword cssTagName iframe img input ins isindex kbd label legend li
syn keyword cssTagName link map menu meta noframes noscript ol optgroup
syn keyword cssTagName option p param pre q s samp script select small
syn keyword cssTagName span strike strong style sub sup table tbody td
syn keyword cssTagName textarea tfoot th thead title tr tt ul u var
syn keyword cssTagName object

" HTML5 new tags 5*6=30
syn keyword cssTagName article aside audio bdi canvas command
syn keyword cssTagName datalist details embed figcaption figure footer
syn keyword cssTagName header hgroup keygen mark meter nav
syn keyword cssTagName output progress rt rp ruby section
syn keyword cssTagName source summary time track video wbr

" Tags not supported in HTML5
syn keyword cssDeprecated acronym applet basefont big center dir
syn keyword cssDeprecated font frame frameset noframes strike tt

"syn match cssTagName "\<table\>"
syn match cssTagName "\*"

" selectors
syn match cssSelectorOp "[,>+]"
syn match cssSelectorOp2 "[~|^$*]\?=" contained
" FIXME: add HTML5 attribute
syn region cssAttributeSelector matchgroup=cssSelectorOp start="\[" end="]" transparent contains=cssUnicodeEscape,cssSelectorOp2,cssStringQ,cssStringQQ

" .class and #id
syn match cssClassName "\.[A-Za-z][A-Za-z0-9_-]\+"

try
syn match cssIdentifier "#[A-Za-z -