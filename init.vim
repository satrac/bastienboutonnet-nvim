call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fannheyward/coc-pyright', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tabnine', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
"Plug 'terryma/vim-multiple-cursors'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'machakann/vim-highlightedyank'
"Plug 'lifepillar/vim-gruvbox8'
"Plug 'tmhedberg/SimpylFold'
"Plug 'joshdick/onedark.vim'
"Plug 'morhetz/gruvbox'
"Plug 'rakr/vim-one'
Plug 'junegunn/seoul256.vim'
Plug 'sheerun/vim-polyglot'
"Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
Plug 'tpope/vim-fugitive'
"Plug 'davidhalter/jedi-vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'ntpeters/vim-better-whitespace'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'jeffkreeftmeijer/vim-numbertoggle'
"Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'BurntSushi/ripgrep'
"Plug 'bling/vim-bufferline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'tiagovla/tokyodark.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'ThePrimeagen/harpoon'
Plug 'navarasu/onedark.nvim'
Plug 'crispgm/nvim-tabline'

"Initialize plugin system
call plug#end()
set encoding=UTF-8
let g:airline#extensions#bufferline#enabled = 0

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
"lua require('bastienboutonnet')
"nnoremap p <Nop>
nnoremap <leader>ps <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
"nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
"nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

"nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
"nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
"nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
"nnoremap <leader>vrc :lua require('theprimeagen.telescope').search_dotfiles()<CR>
"nnoremap <leader>va :lua require('theprimeagen.telescope').anime_selector()<CR>
"nnoremap <leader>vc :lua require('theprimeagen.telescope').chat_selector()<CR>
"nnoremap <leader>gc :lua require('theprimeagen.telescope').git_branches()<CR>

lua << EOF
require'tabline'.setup{}
EOF

runtime coc-init.vim
let g:pydocstring_formatter = 'google'
let g:NERDTreeShowHidden=1
"# Python
" disable autocompletion, because we use deoplete for completion
"let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"

let g:python3_host_prog="~/venvs/neovim/bin/python"

"# Themes
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
"for yank
hi HighlightedyankRegion cterm=reverse gui=reverse
syntax on
"colorscheme gruvbox

" Settings START
let mapleader = "\<Space>"
filetype plugin on
set completeopt=menuone
set mouse=a
set nobackup
set nocompatible
set noswapfile
set nowritebackup
set number
set signcolumn=yes
set title
set nowrap
setlocal wrap
" Settings END
"------------------------------------------------

"------------------------------------------------
" persist START
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

" Persist cursor
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif
" persist END
"------------------------------------------------

"------------------------------------------------
" Theme START
syntax on
"set termguicolors
"colorscheme onedark
"let g:seoul256_background = 236
"colo seoul256
"set termguicolors
"let g:onedark_termcolors = 256
"let g:onedark_terminal_italics = 1

"Vim-one
"colorscheme one
"let g:one_allow_italics = 1
set termguicolors
" Tokyodark
"let g:tokyodark_transparent_background = 0
"let g:tokyodark_enable_italic_comment = 1
"let g:tokyodark_enable_italic = 1
"let g:tokyodark_color_gamma = "1.0"
"colorscheme tokyodark

"Onedark navarasu
"
let g:onedark_style = 'darker'
colorscheme onedark
"lua << EOF
"require('onedark').setup()
"EOF

"set background=dark
set cursorline
set hidden
set cmdheight=1
set laststatus=2

"let g:gruvbox_transp_bg = 1
"let g:gruvbox_italicize_strings = 0
"let g:one_allow_italics = 1

"let g:airline#extensions#hunks#enabled=0
"let g:airline#extensions#branch#enabled=1

"let g:airline_symbols.space = "\ua0"

set list
set listchars=tab:»·,trail:·

" let buffers be clickable


" Theme END
"------------------------------------------------

"------------------------------------------------
" Remaps START
" Align GitHub-flavored Markdown tables
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" Toggle between buffers
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nnoremap <C-p> :Rg<Cr>
nnoremap <C-e> :Files<Cr>
nmap <Leader>bl :Buffers<CR>
nmap <Leader>g :GFiles<CR>
nmap <Leader>e :Files<CR>
"nmap <Leader>p :Rg<CR>
nmap <Leader>g? :GFiles?<CR>
nmap <Leader>h :History<CR>

:nmap <silent> T :<C-U>call CocAction('doHover')<CR>
" Remaps END
"------------------------------------------------

"------------------------------------------------
" Coc START
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ga  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

" Treesitter
lua require'nvim-treesitter.configs'.setup {ensure_installed = {"python"}, highlight = {enable = true, disable = {"yaml"}}}

" Lspa
"lua << EOF
"require'lspconfig'.pyls.setup{
  "settings = {
    "pyls = {
      "plugins = {
        "pyls_mypy = {enabled = true},
        "pycodestyle = {enabled = false},
        "flake = {enabled = true},
        "}
      "}
  "}
"}
"EOF
lua << EOF
require'lspconfig'.pylsp.setup{}
EOF

lua << EOF
require'lspconfig'.pyright.setup{}
EOF
"git
lua << EOF
require('gitsigns').setup()
EOF


set completeopt-=preview

" use omni completion provided by lsp
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
"nnoremap <silent>gr :Lspsaga rename<CR>
"-- close rename win use <C-c> in insert mode or `q` in noremal mode or `:q`

" harpoon remaps
"lua require("theprimeagen")

nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>

nnoremap <C-a> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-s> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-d> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-f> :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>ju :lua require("harpoon.term").gotoTerminal(1)<CR>
nnoremap <leader>je :lua require("harpoon.term").gotoTerminal(2)<CR>
nnoremap <leader>ju :lua require("harpoon.term").sendCommand(1, 1)<CR>
nnoremap <leader>je :lua require("harpoon.term").sendCommand(1, 2)<CR>
