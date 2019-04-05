
augroup SvimFixColor
	au!
	au ColorScheme * call Svim#ColorFit#fixColor()

	"au ColorScheme * hi TabLineSel ctermbg=235 | hi NonText ctermfg=235 | hi StatusLineTerm ctermfg=15 ctermbg=2 | hi StatusLineTermNC ctermfg=15 ctermbg=2
	"au ColorScheme * call s:fixColor()

augroup END


"function! s:fixColor () abort
"	hi TabLineSel ctermbg=235
"	hi NonText ctermfg=235
"	hi StatusLineTerm ctermfg=15 ctermbg=2
"	hi StatusLineTermNC ctermfg=15 ctermbg=2
"endfunction



" ## key map
"nnoremap <Bslash>g :call Svim#ColorFit#toggleBackgroundTransparent()<CR>
nnoremap <Bslash>t :call Svim#ColorFit#toggleBackgroundTransparent()<CR>
nnoremap <Bslash>b :call Svim#ColorFit#toggleBackgroundDarkLight()<CR>

" ## call this for colorscheme load before this plugin
call Svim#ColorFit#fixColor()
