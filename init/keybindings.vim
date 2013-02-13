" Keybindings
" -----------

let mapleader = ","
let maplocalleader = ";"

" Make Y consistent with D and C
map Y           y$

" Search
nmap <leader>s  :%s/
vmap <leader>s  :s/

" Split screen
map <leader>v   :vsp<CR>

" Move between screens
nmap <C-k>      <C-w><Up>
nmap <C-j>      <C-w><Down>
nmap <C-h>      <C-w><Left>
nmap <C-l>      <C-w><Right>

" Auto-indent whole file
nmap <leader>=  gg=G``

"indent/unindent visual mode selection with tab/shift+tab
vmap <tab> >gv
vmap <s-tab> <gv

" File tree browser
map \           :NERDTreeToggle<CR>

" File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

" Previous/next/destroy buffers
map <C-p> :bp<CR>
map <C-n> :bn<CR>
cabbrev bd <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'Bclose' : '')<CR>

" Git blame
map <leader>gb   :Gblame<CR>

" Command-T
map <leader>t   :CommandTFlush<CR>:CommandT<CR>

" Comment/uncomment lines
map <leader>/   <plug>NERDCommenterToggle

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" Easy access to the shell
map <Leader><Leader> :!

" AckGrep current word
map <leader>a :call AckGrep()<CR>
" AckVisual current selection
vmap <leader>a :call AckVisual()<CR>

" Gundo.vim
map <leader>u :GundoToggle<CR>
