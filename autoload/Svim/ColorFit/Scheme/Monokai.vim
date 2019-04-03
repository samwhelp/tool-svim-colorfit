

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Main
""

function! Svim#ColorFit#Scheme#Monokai#fixColor () abort


	call Svim#ColorFit#Scheme#Monokai#hlCursorLine()
	"call Svim#ColorFit#Scheme#Monokai#hlCursorLineAndColumn()
	call Svim#ColorFit#Scheme#Monokai#hlLineNumber()
	call Svim#ColorFit#Scheme#Monokai#hlVertSplit()
	call Svim#ColorFit#Scheme#Monokai#hlStatusLine()
	call Svim#ColorFit#Scheme#Monokai#hlStatusLineTerm()
	call Svim#ColorFit#Scheme#Monokai#hlTabLine()
	call Svim#ColorFit#Scheme#Monokai#hlFold()
	call Svim#ColorFit#Scheme#Monokai#hlBackground()


endfunction


function! Svim#ColorFit#Scheme#Monokai#toggleBackgroundTransparent () abort

	if 'Colorful' ==# Svim#ColorFit#getCurrentBackgroundColorStatus()
		call Svim#ColorFit#Scheme#Monokai#hlBackgroundTransparent()
	else
		call Svim#ColorFit#Scheme#Monokai#hlBackgroundColorful()
	endif

endfunction


""
""" Tail: Main
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: CursorLine
""

function! Svim#ColorFit#Scheme#Monokai#hlCursorLine () abort
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


function! Svim#ColorFit#Scheme#Monokai#hlCursorLineAndColumn () abort
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

function! Svim#ColorFit#Scheme#Monokai#hlBackground () abort
	call Svim#ColorFit#Scheme#Monokai#hlBackgroundColorful()
	"call Svim#ColorFit#Scheme#Monokai#hlBackgroundTransparent()
endfunction


function! Svim#ColorFit#Scheme#Monokai#hlBackgroundColorful () abort
	call Svim#ColorFit#setCurrentBackgroundColorStatus('Colorful')
	hi Normal ctermfg=231 ctermbg=235 " let background not transparent
	hi NonText ctermfg=235 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
	hi SpecialKey ctermfg=59 ctermbg=NONE cterm=NONE
endfunction


function! Svim#ColorFit#Scheme#Monokai#hlBackgroundTransparent () abort
	call Svim#ColorFit#setCurrentBackgroundColorStatus('Transparent')
	hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE " let background transparent
	hi NonText ctermfg=232 ctermbg=NONE cterm=NONE " adjust for [~] (not yet line)
	hi SpecialKey ctermfg=59 ctermbg=NONE cterm=NONE
endfunction


""
""" Tail: Background
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: LineNumber
""
"LineNr         xxx term=underline ctermfg=102 ctermbg=237 guifg=#90908a guibg=#3c3d37
function! Svim#ColorFit#Scheme#Monokai#hlLineNumber () abort
	hi LineNr ctermfg=102 ctermbg=NONE cterm=NONE
	hi CursorLineNr ctermfg=11 ctermbg=NONE cterm=NONE
	hi NonText ctermfg=235 ctermbg=NONE cterm=NONE
	"hi EndOfBuffer ctermfg=238
	hi SpecialKey ctermfg=59 ctermbg=NONE cterm=NONE
endfunction

""
""" Tail: LineNumber
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: VertSplit
""

function! Svim#ColorFit#Scheme#Monokai#hlVertSplit () abort
	"hi VertSplit ctermfg=241 ctermbg=241
endfunction

""
""" Tail: VertSplit
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLine
""

function! Svim#ColorFit#Scheme#Monokai#hlStatusLine () abort
	"hi StatusLine ctermfg=231 ctermbg=241
	"hi StatusLineNC ctermfg=231 ctermbg=241
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: TabLine
""

function! Svim#ColorFit#Scheme#Monokai#hlTabLine () abort
	hi TabLine ctermfg=15 ctermbg=242 cterm=NONE
	hi TabLineSel ctermfg=32 ctermbg=235
	hi TabLineFill ctermfg=242 ctermbg=235
	"hi TabLineSel ctermfg=197 ctermbg=235
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: StatusLineTerm
""

function! Svim#ColorFit#Scheme#Monokai#hlStatusLineTerm () abort
	hi StatusLineTerm ctermfg=15 ctermbg=2 cterm=bold
	hi StatusLineTermNC ctermfg=15 ctermbg=2
endfunction

""
""" Tail: StatusLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Head: Fold
""

function! Svim#ColorFit#Scheme#Monokai#hlFold () abort
	"hi Folded ctermfg=242 ctermbg=235
	"hi Folded ctermfg=244 ctermbg=237
	"hi FoldColumn ctermfg=14 ctermbg=242
endfunction

""
""" Tail: Fold
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
