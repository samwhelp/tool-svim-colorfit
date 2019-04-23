

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! Svim#ColorFit#Scheme#OneDark#FixColor () abort


	call Svim#ColorFit#Scheme#OneDark#HlCursorLine()
	"call Svim#ColorFit#Scheme#OneDark#HlCursorLineAndColumn()
	call Svim#ColorFit#Scheme#OneDark#HlLineNumber()
	call Svim#ColorFit#Scheme#OneDark#HlVertSplit()
	call Svim#ColorFit#Scheme#OneDark#HlStatusLine()
	call Svim#ColorFit#Scheme#OneDark#HlStatusLineTerm()
	call Svim#ColorFit#Scheme#OneDark#HlTabLine()
	call Svim#ColorFit#Scheme#OneDark#HlFold()
	call Svim#ColorFit#Scheme#OneDark#HlBackground()


endfunction


function! Svim#ColorFit#Scheme#OneDark#ToggleBackgroundTransparent () abort
	if 'Colorful' ==# Svim#ColorFit#GetCurrentBackgroundColorStatus()
		call Svim#ColorFit#Scheme#OneDark#HlBackgroundTransparent()
	else
		call Svim#ColorFit#Scheme#OneDark#HlBackgroundColorful()
	endif
endfunction

""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: CursorLine
""

function! Svim#ColorFit#Scheme#OneDark#HlCursorLine () abort
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


function! Svim#ColorFit#Scheme#OneDark#HlCursorLineAndColumn () abort
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

function! Svim#ColorFit#Scheme#OneDark#HlBackground () abort
	call Svim#ColorFit#Scheme#OneDark#HlBackgroundColorful()
	"call Svim#ColorFit#Scheme#OneDark#HlBackgroundTransparent()
endfunction


function! Svim#ColorFit#Scheme#OneDark#HlBackgroundColorful () abort
	call Svim#ColorFit#SetCurrentBackgroundColorStatus('Colorful')
	hi Normal ctermfg=145 ctermbg=235 " let background not transparent
	hi NonText ctermfg=235 ctermbg=235" adjust for [~] (not yet line)
	hi SpecialKey ctermfg=238
	"hi VertSplit ctermfg=241 ctermbg=235
	hi VertSplit ctermfg=59 ctermbg=235

	" ## Original
	"hi Normal ctermfg=145 ctermbg=235
	"hi NonText ctermfg=238
	"hi SpecialKey ctermfg=238
	"hi VertSplit ctermfg=59
endfunction


function! Svim#ColorFit#Scheme#OneDark#HlBackgroundTransparent () abort
	call Svim#ColorFit#SetCurrentBackgroundColorStatus('Transparent')
	hi Normal ctermfg=NONE ctermbg=NONE" let background transparent
	hi NonText ctermfg=235 ctermbg=NONE" adjust for [~] (not yet line)
	hi SpecialKey ctermfg=59
	"hi VertSplit ctermfg=241 ctermbg=NONE
	hi VertSplit ctermfg=59 ctermbg=NONE
endfunction


""
""" Tail: Background
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: LineNumber
""

function! Svim#ColorFit#Scheme#OneDark#HlLineNumber () abort
	"hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
	hi CursorLineNr ctermfg=NONE ctermbg=237 cterm=NONE
	hi NonText ctermfg=235 ctermbg=NONE cterm=NONE
	"hi EndOfBuffer ctermfg=235
	hi link EndOfBuffer NonText
	hi SpecialKey ctermfg=238 ctermbg=NONE cterm=NONE

	" ## Original
	"hi LineNr ctermfg=238
	"CursorLineNr   xxx cleared
	"hi NonText ctermfg=238
	"EndOfBuffer    xxx links to NonText
	"hi SpecialKey ctermfg=238
endfunction

""
""" Tail: LineNumber
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: VertSplit
""

function! Svim#ColorFit#Scheme#OneDark#HlVertSplit () abort
	"hi VertSplit ctermfg=241 ctermbg=235
	"hi VertSplit ctermfg=59 ctermbg=235

	" ## Original
	"hi VertSplit ctermfg=59

endfunction

""
""" Tail: VertSplit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLine
""

function! Svim#ColorFit#Scheme#OneDark#HlStatusLine () abort
	hi StatusLine ctermfg=145 ctermbg=234
	hi StatusLineNC ctermfg=59 ctermbg=236


	" ## Original
	"hi StatusLine ctermfg=145 ctermbg=236
	"hi StatusLineNC ctermfg=59

endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: TabLine
""

function! Svim#ColorFit#Scheme#OneDark#HlTabLine () abort
	hi TabLine ctermfg=15 ctermbg=240 cterm=NONE
	"hi TabLineSel ctermfg=32 ctermbg=235
	"hi TabLineSel ctermfg=204 ctermbg=235
	hi TabLineSel ctermfg=180 ctermbg=235
	hi TabLineFill ctermfg=60 ctermbg=238

	" ## Original
	"hi TabLine ctermfg=59
	"hi TabLineSel ctermfg=145
	"TabLineFill    xxx cleared

endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLineTerm
""

function! Svim#ColorFit#Scheme#OneDark#HlStatusLineTerm () abort

	hi StatusLineTerm ctermfg=121 ctermbg=108 cterm=NONE
	hi StatusLineTermNC ctermfg=0 ctermbg=108

	" ## Original
	"hi StatusLineTerm ctermfg=145 ctermbg=236 cterm=NONE
	"hi StatusLineTermNC ctermfg=59
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Fold
""

function! Svim#ColorFit#Scheme#OneDark#HlFold () abort
	hi Folded ctermfg=244 ctermbg=236
	hi FoldColumn ctermfg=246 ctermbg=236

	" ## Original
	" Folded ctermfg=59
	" FoldColumn     xxx cleared


endfunction

""
""" Tail: Fold
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
