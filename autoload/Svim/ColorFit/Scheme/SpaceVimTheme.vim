

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! Svim#ColorFit#Scheme#SpaceVimTheme#FixColor () abort


	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlCursorLine()
	""call Svim#ColorFit#Scheme#SpaceVimTheme#HlCursorLineAndColumn()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlLineNumber()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlVertSplit()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlStatusLine()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlStatusLineTerm()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlTabLine()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlFold()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlBackground()


endfunction


function! Svim#ColorFit#Scheme#SpaceVimTheme#ToggleBackgroundTransparent () abort
	if 'Colorful' ==# Svim#ColorFit#GetCurrentBackgroundColorStatus()
		call Svim#ColorFit#Scheme#SpaceVimTheme#HlBackgroundTransparent()
	else
		call Svim#ColorFit#Scheme#SpaceVimTheme#HlBackgroundColorful()
	endif
endfunction

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: CursorLine
""

function! Svim#ColorFit#Scheme#SpaceVimTheme#HlCursorLine () abort
	"hi CursorLine ctermfg=254 ctermbg=237 cterm=NONE
	hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE

	set cursorline
	set nocursorcolumn


	augroup CurrentCursorLine
		au!
		au InsertEnter,WinLeave * set nocursorline nocursorcolumn
		au InsertLeave,WinEnter * set cursorline nocursorcolumn
	augroup END
endfunction


function! Svim#ColorFit#Scheme#SpaceVimTheme#HlCursorLineAndColumn () abort
	"hi CursorLine ctermfg=254 ctermbg=237 cterm=NONE
	hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
	"hi CursorColumn ctermfg=254 ctermbg=237 cterm=NONE
	hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE

	set cursorline
	set cursorcolumn


	augroup CurrentCursorLine
		au!
		au InsertEnter,WinLeave * set nocursorline nocursorcolumn
		au InsertLeave,WinEnter * set cursorline cursorcolumn
	augroup END
endfunction


""
""" Tail: CursorLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Background
""
"Normal         xxx ctermfg=223 ctermbg=235 guifg=#ebdbb2 guibg=#282828
" NonText        xxx term=bold ctermfg=235 gui=bold guifg=Blue
" SpecialKey     xxx term=bold ctermfg=81 guifg=Cyan
"

function! Svim#ColorFit#Scheme#SpaceVimTheme#HlBackground () abort
	call Svim#ColorFit#Scheme#SpaceVimTheme#HlBackgroundColorful()
	"call Svim#ColorFit#Scheme#SpaceVimTheme#HlBackgroundTransparent()
endfunction


function! Svim#ColorFit#Scheme#SpaceVimTheme#HlBackgroundColorful () abort
	call Svim#ColorFit#SetCurrentBackgroundColorStatus('Colorful')
	hi Normal ctermfg=223 ctermbg=235 " let background not transparent
	hi NonText ctermfg=235 ctermbg=235" adjust for [~] (not yet line)
	hi SpecialKey ctermfg=59
	hi VertSplit ctermfg=241 ctermbg=235
endfunction


function! Svim#ColorFit#Scheme#SpaceVimTheme#HlBackgroundTransparent () abort
	call Svim#ColorFit#SetCurrentBackgroundColorStatus('Transparent')
	hi Normal ctermfg=NONE ctermbg=NONE" let background transparent
	hi NonText ctermfg=232 ctermbg=NONE" adjust for [~] (not yet line)
	hi SpecialKey ctermfg=59
	hi VertSplit ctermfg=241 ctermbg=NONE
endfunction


""
""" Tail: Background
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: LineNumber
""


function! Svim#ColorFit#Scheme#SpaceVimTheme#HlLineNumber () abort
	"hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
	"hi CursorLineNr ctermfg=214 ctermbg=237 cterm=NONE
	hi NonText ctermfg=235 ctermbg=NONE cterm=NONE
	"hi EndOfBuffer ctermfg=235
	hi link EndOfBuffer NonText
	"hi SpecialKey ctermfg=59 ctermbg=NONE cterm=NONE
endfunction

""
""" Tail: LineNumber
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: VertSplit
""
" VertSplit      xxx term=reverse ctermfg=241 ctermbg=235 guifg=#665c54 guibg=#282828
function! Svim#ColorFit#Scheme#SpaceVimTheme#HlVertSplit () abort
	"hi VertSplit ctermfg=241 ctermbg=235
endfunction

""
""" Tail: VertSplit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLine
""
" StatusLine     xxx term=bold,reverse cterm=reverse ctermfg=239 ctermbg=223 gui=reverse guifg=#504945 guibg=#ebdbb2

" StatusLineNC   xxx term=reverse cterm=reverse ctermfg=237 ctermbg=246 gui=reverse guifg=#3c3836 guibg=#a89984



function! Svim#ColorFit#Scheme#SpaceVimTheme#HlStatusLine () abort
	hi StatusLine ctermfg=236 ctermbg=223
	hi StatusLineNC ctermfg=236 ctermbg=246
	"
	"hi StatusLine ctermfg=239 ctermbg=223
	"hi StatusLineNC ctermfg=237 ctermbg=246
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: TabLine
""

function! Svim#ColorFit#Scheme#SpaceVimTheme#HlTabLine () abort
	hi TabLine ctermfg=252 ctermbg=242 cterm=NONE
	hi TabLineSel ctermfg=142 ctermbg=235
	hi TabLineFill ctermfg=243 ctermbg=238

	"hi TabLine ctermfg=15 ctermbg=242 cterm=NONE
	"hi TabLineSel ctermfg=32 ctermbg=235
	"hi TabLineSel ctermfg=197 ctermbg=235
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLineTerm
""

function! Svim#ColorFit#Scheme#SpaceVimTheme#HlStatusLineTerm () abort
	"hi StatusLineTerm ctermfg=15 ctermbg=2 cterm=bold
	"hi StatusLineTermNC ctermfg=15 ctermbg=2

	"hi StatusLineTerm ctermfg=0 ctermbg=121 cterm=bold
	"hi StatusLineTermNC ctermfg=0 ctermbg=121

	hi StatusLineTerm ctermfg=121 ctermbg=108 cterm=NONE
	hi StatusLineTermNC ctermfg=0 ctermbg=108

	"hi StatusLineTerm ctermfg=229 ctermbg=108 cterm=NONE
	"hi StatusLineTermNC ctermfg=0 ctermbg=108
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Fold
""

function! Svim#ColorFit#Scheme#SpaceVimTheme#HlFold () abort
	hi Folded ctermfg=244 ctermbg=236
	hi FoldColumn ctermfg=246 ctermbg=236
endfunction

""
""" Tail: Fold
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
