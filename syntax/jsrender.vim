" Bail if our syntax is already loaded.
if exists('b:current_syntax') && b:current_syntax == 'jsrender'
  finish
endif

run! syntax/html.vim
" Syntax highlighting for text/coffeescript script tags
syn cluster htmlTemplates contains=htmlHead,htmlTitle,htmlString,htmlH1,htmlH2,htmlH3,htmlH4,htmlH5,htmlH6,htmlTag,htmlEndTag,htmlTagName,htmlSpecialChar,htmlLink,htmlBold,htmlUnderline,htmlItalic,htmlComment

let b:current_syntax = "jsrender"
