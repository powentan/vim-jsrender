" Bail if our syntax is already loaded.
if exists('b:current_syntax') && b:current_syntax == 'jsrender'
  finish
endif

  
" syn include @jsRenderSyntax syntax/jsrender.vim
syn include @htmlJavaScript syntax/javascript.vim

syntax region jsRenderEvaluate matchgroup=jsRenderMarker start=#{{[:>*]# end=#}}# containedin=@htmlJsRenderContainer contains=@htmlJavaScript
syntax region jsRenderIf matchgroup=jsRenderMarker start=#{{[/]*if# end=#}}# containedin=@htmlJsRenderContainer contains=@htmlJavaScript
syntax region jsRenderElse matchgroup=jsRenderMarker start=#{{[/]*else# end=#}}# containedin=@htmlJsRenderContainer contains=@htmlJavaScript
syntax region jsRenderFor matchgroup=jsRenderMarker start=#{{[/]*for# end=#}}# containedin=@htmlJsRenderContainer contains=@htmlJavaScript
syntax region jsRenderProps matchgroup=jsRenderMarker start=#{{[/]*props# end=#}}# containedin=@htmlJsRenderContainer contains=@htmlJavaScript
syntax region jsRenderInclude matchgroup=jsRenderMarker start=#{{[/]*include# end=#}}# containedin=@htmlJsRenderContainer contains=@htmlJavaScript
syntax region jsRenderComment start=#{{!# end=#}}# containedin=@htmlJsRenderContainer contained contains=jsRenderCommentPart
syntax region jsRenderCommentPart start=#--# end=#--# containedin=jsRenderComment contained contains=@Spell

syntax cluster jsRenderSyntax add=jsRenderEvaluate,jsRenderIf,jsRenderElse,jsRenderFor,jsRenderComment,jsRenderProps,jsRenderInclude
syntax cluster htmlJsRenderContainer add=htmlHead,htmlTitle,htmlString,htmlH1,htmlH2,htmlH3,htmlH4,htmlH5,htmlH6,htmlTag,htmlEndTag,htmlTagName,htmlSpecialChar,htmlLink,htmlBold,htmlUnderline,htmlItalic,@jsRenderSyntax

hi def link jsRenderMarker PreProc
hi def link jsRenderEvaluate Number
hi def link jsRenderComment Comment
hi def link jsRenderCommentPart Comment

let b:current_syntax = "jsrender"
