" syntax highlighting
syntax on
set background=dark
set t_Co=256
set autoread
set nobackup
set nowritebackup
set noswapfile
color mango
" hardcore mode
" inoremap <esc> <nop>
" inoremap <left> <nop>
inoremap jk <esc>
iabbrev cls console.log('')
" edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" source my vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
let g:hybrid_use_iTerm_colors = 1
"colorscheme hybrid

" 高亮多余的空白字符及 Tab
"highlight RedundantSpaces ctermbg=red guibg=red
"match RedundantSpaces /\s\+$\| \+\ze\t\|\t/
set listchars=tab:——,trail:⋅,nbsp:⋅

" 开新窗口方向
set splitbelow
set splitright

" indent 默认不显示，按 i 显示
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" indent lines
map <leader>il :IndentLinesToggle<CR>
let g:indentLine_char = '┊'
"let g:indentLine_color_term = 0 

"文件系统跟编码
set encoding=utf8
set ffs=unix,mac

" Configuration section of plug
filetype off  " required!

call plug#begin('~/.vim/plugged')

" My Plugins here:
Plug 'skywind3000/asyncrun.vim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'posva/vim-vue'
Plug 'ajh17/VimCompletesMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'lilydjwg/fcitx.vim'
Plug 'digitaltoad/vim-pug'
Plug 'mileszs/ack.vim'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/xml.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'flazz/vim-colorschemes'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
"Plug 'bling/vim-airline'
"Plug 'Lokaltog/vim-easymotion'
"Plug 'TimothyYe/vim-tips'
"Plug 'Shougo/neocomplete'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/wildfire.vim'
Plug 'Yggdroot/indentLine'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'yonchu/accelerated-smooth-scroll'
"Plug 'ianva/vim-youdao-translater'
Plug 'marijnh/tern_for_vim'
Plug 'elixir-lang/vim-elixir'
"Plug 'Valloric/YouCompleteMe'
Plug 'maksimr/vim-jsbeautify'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
"Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'elzr/vim-json'
"support markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'irrationalistic/vim-tasks'

call plug#end()
filetype plugin indent on     " required!
 " End of plug configuration
 
"For ack
"let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

"improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold

"Setup SuperTab
let g:SuperTabRetainCompletionType="context"

set bsdir=buffer " 设定文件浏览器目录为当前目录
"autocmd BufEnter * lcd %:p:h "打开文件时改变path
" 切换当前环境工作目录为已打开文件所在目录
map <leader>cd :lcd %:h<CR>

" 设置编码
set encoding=utf-8
set nocompatible
set laststatus=2
" 设置文件编码
set fenc=utf-8

" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"显示行号
set number
"Show related row numbers
set relativenumber

"settings for backspace
set backspace=2
set backspace=indent,eol,start

"忽略大小写查找
set ic

" tab宽度
set cindent shiftwidth=2
set autoindent shiftwidth=2
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
"vim 换行时不切断单词
set linebreak

" set 折叠
set foldmethod=indent
" 打开文件默认不折叠
set foldlevelstart=99

" leader
map <SPACE> <leader>

" move the current line below
nnoremap <leader>- ddp

" move the current line above
nnoremap <leader>_ ddkP

" switch tab
nnoremap <S-right> :tabn<CR>
nnoremap <S-left> :tabp<CR>

" insert mode uppercase the current word
"  <esc> : go to normal mode
"  v 	 : visual mode
"  iw 	 : select the current word
"  U 	 : uppercase selection
"  i 	 : back to insert mode
inoremap <c-u> <esc>viwUi

" remove last search highlight
nnoremap <C-l> :nohlsearch<CR><C-l>

" Wrap a word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Wrap a word in single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" select inside parents
onoremap in( :<c-u>normal! f(vi(<cr>

" select inside braces
onoremap in{ :<c-u>normal! f{vi{<cr>

" select inside brackets
onoremap in[ :<c-u>normal! f[vi[<cr>

"tabs
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"  映射NERDTree插件
:map <leader>n :NERDTree<CR>
"let loaded_nerd_tree=1
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree=1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 32
map <leader>f :NERDTreeToggle<CR>

" Settings for vim-easymotion
let g:EasyMotion_leader_key = ","

"Settings for TagBar
map <leader>g :TagbarToggle<CR>
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds' : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin' : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"switch window
:map <leader>w <C-W>w

"set zen coding
 let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \  'erb' : {
  \    'extends' : 'html',
  \  },
  \}
"set CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"use in  edit
imap <C-A> <C-C><c-p>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png,*.gif,*.jpeg,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" move lines up or down (command - D)
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Tab move lines left or right (c-Ctrl,s-Shift)
nmap    <c-tab>     v>
nmap    <s-tab>     v<
vmap    <c-tab>     >gv
vmap    <s-tab>     <gv

" tab navigation like zsh
:nmap <leader>h :tabprevious<CR>
:map <leader>h :tabprevious<CR>
:imap <leader>h <Esc>:tabprevious<CR>i

:nmap <leader>l :tabnext<CR>
:map <leader>l :tabnext<CR>
:imap <leader>l <Esc>:tabnext<CR>i

" settings for resize splitted window
nmap w[ :vertical resize -3<CR>
nmap w] :vertical resize +3<CR>

nmap w- :resize -3<CR>
nmap w= :resize +3<CR>

"markdown hightlight
let g:octopress_rake_executable = '/usr/bin/rake'

"scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufWritePost *.coffee silent CoffeeMake!
au BufWritePost *.coffee :CoffeeCompile watch vert

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim

"ctags
set tags+=~/gitdb/rails/tags

"auto completed
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" tern_for_vim
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'on_hold'
autocmd FileType javascript nnoremap <leader>d :TernDef<CR>
autocmd FileType javascript setlocal omnifunc=tern#Complete

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" code search
let g:ackprg = 'ag --nogroup --nocolor --column'

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" For startify
let g:startify_custom_header = [
\ 'Hello World!',
\ '',
\ '',
\]

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"支持vue高亮
autocmd BufNewFile,BufRead *.vue set filetype=vue
"vim-vue-syntastic
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_vue_checkers = ['eslint']
let local_eslint = finddir('node_modules', '.;') . '/.bin/eslint'
if matchstr(local_eslint, "^\/\\w") == ''
    let local_eslint = getcwd() . "/" . local_eslint
endif
if executable(local_eslint)
    let g:syntastic_javascript_eslint_exec = local_eslint
    let g:syntastic_vue_eslint_exec = local_eslint
endif

