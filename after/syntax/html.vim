" Language:    jsRender
" Maintainer:  Powen Tan <powentan0330@gmail.com>
" License:     MIT

" syn include @jsRenderSyntax syntax/jsrender.vim
syn region jsRenderTemplate start=#<script [^>]*type="text/x-jsrender"[^>]*>#
\                       end=#</script>#me=s-1 keepend
\                       contains=htmlHead,htmlTitle,htmlString,htmlH1,htmlH2,htmlH3,htmlH4,htmlH5,htmlH6,htmlTag,htmlEndTag,htmlTagName,htmlSpecialChar,htmlLink,htmlBold,htmlUnderline,htmlItalic,htmlComment
