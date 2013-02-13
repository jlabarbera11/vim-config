" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.

" Pathogen (This must happen first.)
filetype off                    " Avoid a Vim/Pathogen bug
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible                " Don't maintain compatibility with vi
syntax on                       " Highlight known syntaxes
filetype plugin indent on

" Source initialization files
runtime! init/**.vim

" Machine-local vim settings - keep this at the end
silent! source ~/.vimrc.local
