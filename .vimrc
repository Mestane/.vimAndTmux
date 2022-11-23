" install vim plugin
call plug#begin()

"Plug 'yuttie/comfortable-motion.vim'
Plug 'preservim/NERDTree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'gelguy/wilder.nvim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'thomasfaingnaert/vim-lsp-snippets'
"Plug 'Shougo/neosnippet.vim'
Plug 'thomasfaingnaert/vim-lsp-neosnippet'
"Plug 'thomasfaingnaert/vim-lsp-ultisnips'
Plug 'leafOfTree/vim-run'
Plug 'mattn/vim-lsp-settings'
Plug 'lgranie/vim-lsp-java'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'Shougo/ddc.vim'
"Plug 'shun/ddc-vim-lsp'
Plug 'tibabit/vim-templates'
Plug 'terryma/vim-expand-region'
Plug 'vim-utils/vim-alt-mappings'
Plug 'flw-cn/vim-nerdtree-l-open-h-close'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'ycm-core/YouCompleteMe', { 'do': './install.py'}
"Plug 'junegunn/vim-easy-align'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-fugitive'
Plug 'mg979/vim-xtabline'
Plug 'lukhio/vim-mapping-conflicts'
Plug 'ryanoasis/vim-devicons'
"Plug 'google/vim-codefmt'
"Plug 'mkitt/tabline.vim'
   
" Plug 'prettier/vim-prettier', {
"		   \ 'do': 'yarn install --frozen-lockfile --production',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

"Plug 'prettier/vim-prettier', {
"		  \ 'do': 'yarn install --frozen-lockfile --production',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json','graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
"
call plug#end()


call wilder#setup({'modes': [':','?']})

call wilder#set_option('renderer', wilder#popupmenu_renderer({
      \ 'pumblend': 20,
      \ }))

let g:run_mapping = 'go' " default mapping
let g:run_cmd = {
		      \'c':           'gcc -Wall -Wextra -std=c99 -pedantic',
      \'c_plus':      './a.out',
      \'java':        'javac -Xdiags:verbose -Xlint:unchecked',
      \'java_plus':   'java %:r',
      \'python':      'python',
      \'javascript':  'node',
      \'tsx':         'tsc --outFile %t %',
      \'tsx_plus':    'node %t',
      \'vim':         'source',  
      \}
"highlight lspReference ctermfg=red guifg=red ctermbg=green guibg=green
let g:lsp_semantic_enabled =1

let g:vim_lsp_java = {
		  \ 'eclipse_jdtls' : {
		    \ 'repository': expand('/usr/share/java/jdtls/'),
    \ 'config': '/usr/share/java/jdtls/config_linux',
    \ 'workspace': expand('~/.VimIdeaProjects'),
  \ },
  \ }
" let g:vim_lsp_java = {
" 		  \ 'eclipse_jdtls' : {
" 		    \ 'repository': expand('~/opt/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository'),
"     \ 'config': 'config_linux',
"     \ 'workspace': expand('$WORKSPACE'),
"   \ },
"   \ }
set nocompatible
" Show line numbers
set number relativenumber

"set hi clear ModeMsg
filetype plugin on
filetype indent on
"let g:airline_extensions_branch_enabled = 1
" Tab numbers
set tabstop=4
" Syntax
syntax on
" Automatically wrap text 
set wrap
set wildmenu
"set wildmode=list:full
"set wildmode=longest:full
"hi wildmenu cterm=none
"hi wildmenu guifg=Black ctermbg=DarkRed gui=NONE term=NONE cterm=NONE
" show sursorline 
set cursorline
let g:airline_powerline_fonts = 1
let g:airline_left_sep = "\ue0c6"
let g:airline_right_sep = "\ue0c2"
hi CursorlineNr cterm=none
hi CursorLine guifg=NONE ctermbg=235  gui=NONE term=NONE cterm=NONE


"set wildmode=list:full

" Encoding
set encoding=utf-8
" search highlight
set hlsearch
" gitgutter update time 
set updatetime=100
colorscheme habamax 
let NERDTreeShowHidden=1
highlight VertSplit ctermbg=NONE
highlight VertSplit ctermfg=NONE
"base16colors 
"fairyfloss
"dark_minimal
"deus
"distinguished
"fruit_punch
"jellybeans
"kolor
"lighthaus
"lucius
"ouo
let g:airline_theme='deus'
"let g:expand_region_use_select_mode=1

" let NERDTreeMapOpenInTab='<ENTER>'

" disable show status vim mode
set noshowmode
"set nohlsearch
"hi clear ModeMsg
" nerdtree open dir shortcut by default l and h
" let g:NERDTreeMapOpenDirNode = 'l'
" let g:NERDTreeMapCloseDirNode = 'h'

" let g:airline#extensions#hunks#enabled=0
" let g:airline#extensions#branch#enabled=1
" let g:airline_section_b = '%branch'

"  let g:airline_symbols.branch = ''                                                                                                                  
" Key bindings can be changed, see below



"
" 'highlighter' : applies highlighting to the candidates
" call wilder#set_option('renderer', wilder#wildmenu_renderer({
"       \ 'highlighter': wilder#basic_highlighter(),
"             \ }))
"
" function! GitStatus()
"   let [a,m,r] = GitGutterGetHunkSummary()
"     return printf('+%d ~%d -%d', a, m, r)
"     endfunction
"      set statusline+=%{GitStatus()}
"
" Use a line cursor within insert mode and a block cursor everywhere else.
 "
 " Reference chart of values:
 "   Ps = 0  -> blinking block.
 "   Ps = 1  -> blinking block (default).
 "   Ps = 2  -> steady block.
 "   Ps = 3  -> blinking underline.
 "   Ps = 4  -> steady underline.
 "   Ps = 5  -> blinking bar (xterm).
 "   Ps = 6  -> steady bar (xterm).
" let &t_SI = "\e[6 q"
" let &t_EI = "\e[2 q"


 let &t_SI = "\e[5 q"
 let &t_EI = "\e[1 q"


"let g:fzf_preview_window = ['right:50%', 'ctrl-/']
"let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
"let g:fzf_preview_window = []


" git gutter tagbar enable
"let g:airline_extensions_tagbar_enable = 1

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" 

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:comfortable_motion_scroll_down_key = "d"
"let g:comfortable_motion_scroll_up_key = "u"
"


" Shortcuts Normal Mode
nmap <F1> :NERDTreeToggle<CR>
nnoremap<c-s> :w<CR>
nnoremap<c-f> :FZF<CR>
nnoremap q :q<CR>
nmap <M-k> :tabnext<cr>
nmap <M-j> :tabprevious<cr>
" open new blank tab 
"nmap <M-t> :tabe<cr>
"nmap ga <Plug>(EasyAlign) 
"map <C-g> :Goyo 100<CR>
"map <C-i> :Goyo<CR>
nnoremap <C-h> :source ~/.vimrc<CR>
" Shortcuts Visual Mode
"xmap ga <Plug>(EasyAlign)
"map <left> gT
"map <right> gt

"map <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"map <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"map <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
"
"nnoremap <C-W> [{V%
"xnoremap <C-W> "_y[{V%

"map <C-W> <Plug>(expand_region_expand)

 
nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

function! MaximizeToggle()
  if exists("s:maximize_session")
	      exec "source " . s:maximize_session
		      call delete(s:maximize_session)
			      unlet s:maximize_session
				      let &hidden=s:maximize_hidden_save
					      unlet s:maximize_hidden_save
						    else
							    let s:maximize_hidden_save = &hidden
								    let s:maximize_session = tempname()
									    set hidden
										    exec "mksession! " . s:maximize_session
													    only
														  endif
												  endfunction

