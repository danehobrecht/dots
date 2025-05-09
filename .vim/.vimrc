" Import plugins
call plug#begin()
	Plug 'jalvesaq/Nvim-R'
	Plug 'davidhalter/jedi-vim'
	Plug 'lifepillar/vim-mucomplete'
call plug#end()

" `mucomplete` settings
set shortmess+=c
set completeopt-=preview
set completeopt+=noselect,menuone
let g:jedi#popup_on_dot = 1
let g:mucomplete#enable_auto_at_startup = 1

" Only do this part when Vim was compiled with the +eval feature.
if 1
	" Enable file type detection.
	" Use the default filetype settings, so that mail gets 'tw' set to 72,
	" 'cindent' is on in C files, etc.
	" Also load indent files, to automatically do language-dependent indenting.
	" Revert with ":filetype off".
	filetype plugin indent on
	" Put these in an autocmd group, so that you can revert them with:
	" ":augroup vimStartup | au! | augroup END"
	augroup vimStartup
		au!
		" When editing a file, always jump to the last known cursor position.
		" Don't do it when the position is invalid, when inside an event handler
		" (happens when dropping a file on gvim) and for a commit message (it's
		" likely a different one than last time).
		autocmd BufReadPost *
			\ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
			\ |	exe "normal! g`\""
			\ | endif
	augroup END
endif

" Line numbers
set nu

" Use tabs instead of spaces
" - autoindent can be swapped with smartindent or
"	cindent depending on preference
set autoindent noexpandtab tabstop=4 shiftwidth=4

" Show whitespace
set list listchars=tab:→\ ,trail:.,precedes:«,extends:»,eol:⏎

" Enable syntax highlighting
syntax on

" Allow more powerful backspacing
set backspace=indent,eol,start

" Maintain undo history between sessions
" - Might need to `mkdir ~/.vim/undodir`
set undofile
set undodir=~/.vim/undodir

" Disable `term-gui-colors` for support with `foot`
set notgc