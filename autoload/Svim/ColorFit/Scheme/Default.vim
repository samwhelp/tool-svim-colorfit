

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! Svim#ColorFit#Scheme#Default#fixColor () abort

	"call Svim#ColorFit#Scheme#Default#hlCursorLine()
	""call Svim#ColorFit#Scheme#Default#hlCursorLineAndColumn()
	"call Svim#ColorFit#Scheme#Default#hlLineNumber()
	"call Svim#ColorFit#Scheme#Default#hlVertSplit()
	"call Svim#ColorFit#Scheme#Default#hlStatusLine()
	"call Svim#ColorFit#Scheme#Default#hlStatusLineTerm()
	"call Svim#ColorFit#Scheme#Default#hlTabLine()
	"call Svim#ColorFit#Scheme#Default#hlFold()
	"call Svim#ColorFit#Scheme#Default#hlBackground()

endfunction


function! Svim#ColorFit#Scheme#Default#toggleBackgroundTransparent () abort

	if 'Colorful' ==# Svim#ColorFit#getCurrentBackgroundColorStatus()
		call Svim#ColorFit#Scheme#Default#hlBackgroundTransparent()
	else
		call Svim#ColorFit#Scheme#Default#hlBackgroundColorful()
	endif

endfunction

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: CursorLine
""

function! Svim#ColorFit#Scheme#Default#hlCursorLine () abort
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

function! Svim#ColorFit#Scheme#Default#hlCursorLineAndColumn () abort
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

function! Svim#ColorFit#Scheme#Default#hlBackground () abort
	"call Svim#ColorFit#Scheme#Default#hlBackgroundColorful()
	"call Svim#ColorFit#Scheme#Default#hlBackgroundTransparent()
endfunction


function! Svim#ColorFit#Scheme#Default#hlBackgroundColorful () abort
	call Svim#ColorFit#setCurrentBackgroundColorStatus('Colorful')
	hi Normal ctermbg=232 " let background not transparent
	"hi NonText ctermfg=234 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
	"hi SpecialKey ctermfg=32 ctermbg=NONE cterm=NONE
	"hi VertSplit ctermfg=241 ctermbg=235
endfunction


function! Svim#ColorFit#Scheme#Default#hlBackgroundTransparent () abort
	call Svim#ColorFit#setCurrentBackgroundColorStatus('Transparent')
	hi Normal ctermfg=NONE ctermbg=NONE " let background transparent
	"hi NonText ctermfg=232 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
	"hi SpecialKey ctermfg=32 ctermbg=NONE cterm=NONE
	"hi VertSplit ctermfg=241 ctermbg=NONE
endfunction

""
""" Tail: Background
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: LineNumber
""

function! Svim#ColorFit#Scheme#Default#hlLineNumber () abort
	"hi LineNr ctermfg=30 ctermbg=NONE cterm=NONE
	"hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE
	"hi NonText ctermfg=232 ctermbg=NONE cterm=NONE
	"hi EndOfBuffer ctermfg=238
	"hi SpecialKey ctermfg=59 ctermbg=NONE cterm=NONE
endfunction

""
""" Tail: LineNumber
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: VertSplit
""

function! Svim#ColorFit#Scheme#Default#hlVertSplit () abort
	"hi VertSplit term=reverse ctermfg=236 ctermbg=236
endfunction

""
""" Tail: VertSplit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLine
""

function! Svim#ColorFit#Scheme#Default#hlStatusLine () abort
	"hi StatusLine ctermfg=254 ctermbg=236 cterm=bold
	"hi StatusLineNC ctermfg=250 ctermbg=236 cterm=NONE
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: TabLine
""

function! Svim#ColorFit#Scheme#Default#hlTabLine () abort
	"hi TabLine ctermfg=15 ctermbg=236 cterm=NONE
	"hi TabLineSel ctermfg=30 ctermbg=232
	"hi TabLineFill ctermfg=236 ctermbg=232
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLineTerm
""

function! Svim#ColorFit#Scheme#Default#hlStatusLineTerm () abort
	"hi StatusLineTerm ctermfg=15 ctermbg=2 cterm=bold
	"hi StatusLineTermNC ctermfg=15 ctermbg=2
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Fold
""

function! Svim#ColorFit#Scheme#Default#hlFold () abort
	"hi Folded ctermfg=245 ctermbg=237
	"hi FoldColumn ctermfg=245 ctermbg=237
endfunction

""
""" Tail: Fold
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
