" Language:    jsRender
" Maintainer:  Powen Tan <powentan0330@gmail.com>
" License:     MIT

" Syntax highlighting for text/x-jsrender script tags
syn include @jsRenderSyntax syntax/jsrender.vim
syn region jsRenderTemplate start=#<script [^>]*type="text/x-jsrender"[^>]*># end=#</script>#me=s-1 keepend contains=@htmlJsRenderContainer,htmlComment,@jsRenderSyntax

