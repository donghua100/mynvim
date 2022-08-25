vim.cmd[[
	augroup _fold_bug_solution  " https://github.com/nvim-telescope/telescope.nvim/issues/559
    autocmd!
    autocmd BufRead * autocmd BufWinEnter * ++once normal! zx
	augroup end

	augroup _nvim_treesitter_height
	autocmd!
	autocmd BufWinEnter * :TSBufToggle highlight
	augroup end

    augroup _coc_sel_color
    autocmd!
    autocmd VimEnter,ColorScheme * hi! link CocMenuSel PMenuSel
    autocmd VimEnter,ColorScheme * hi! link CocSearch Identifier
    augroup end

]]
	-- augroup _colorscheme_coc
	-- autocmd!
	-- autocmd ColorScheme * call Highlight()
	-- autocmd vimenter * ++nested colorscheme tokyonight
	-- function! Highlight() abort
	-- hi Conceal ctermfg=239 guifg=#504945
	-- hi CocSearch ctermfg=12 guifg=#18A3FF
	-- endfunction
	-- augroup end
