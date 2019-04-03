
" value: Colorful | Transparent
let s:svim_current_background_color_status = 'Colorful'

function! Svim#ColorFit#getCurrentColorScheme () abort
	return get(g:, 'colors_name', 'default')
endfunction

function! Svim#ColorFit#setCurrentColorScheme (val) abort
	execute ":colorscheme " . a:val
endfunction


function! Svim#ColorFit#getCurrentColorBackground () abort
	return &background
endfunction

function! Svim#ColorFit#setCurrentColorBackground (val) abort
	let &background = a:val
endfunction


function! Svim#ColorFit#getCurrentBackgroundColorStatus () abort
	return get(s:, 'svim_current_background_color_status', 'Colorful')
endfunction

function! Svim#ColorFit#setCurrentBackgroundColorStatus (val) abort
	let s:svim_current_background_color_status = a:val
endfunction




function! Svim#ColorFit#fixColor () abort

	if 'gruvbox' ==? Svim#ColorFit#getCurrentColorScheme()
		if 'dark' ==? Svim#ColorFit#getCurrentColorBackground()
			call Svim#ColorFit#Scheme#Gruvbox#fixColor()
		endif
	elseif 'monokai' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Monokai#fixColor()
	elseif 'pablo' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#fixColor()
	elseif 'slate' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#fixColor()
	elseif 'peachpuff' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#fixColor()
	else
		call Svim#ColorFit#Scheme#Default#fixColor()
	endif
endfunction


function! Svim#ColorFit#toggleBackgroundTransparent () abort

	if 'gruvbox' ==? Svim#ColorFit#getCurrentColorScheme()
		if 'dark' ==? Svim#ColorFit#getCurrentColorBackground()
			call Svim#ColorFit#Scheme#Gruvbox#toggleBackgroundTransparent()
		endif
	elseif 'monokai' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Monokai#toggleBackgroundTransparent()
	elseif 'pablo' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#toggleBackgroundTransparent()
	elseif 'slate' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#toggleBackgroundTransparent()
	elseif 'peachpuff' ==? Svim#ColorFit#getCurrentColorScheme()
		call Svim#ColorFit#Scheme#Basic#toggleBackgroundTransparent()
	else
		call Svim#ColorFit#Scheme#Default#toggleBackgroundTransparent()
	endif
endfunction


function! Svim#ColorFit#toggleBackgroundDarkLight () abort
	if 'dark' ==? Svim#ColorFit#getCurrentColorBackground()
		call Svim#ColorFit#setCurrentColorBackground('light')
	else
		call Svim#ColorFit#setCurrentColorBackground('dark')
	endif
endfunction
