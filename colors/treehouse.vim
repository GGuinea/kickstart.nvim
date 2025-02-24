" Treehouse.vim - Updated colorscheme with variables in Treehouse blue
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "treehouse"

" General UI Elements
hi Normal              ctermfg=15 guifg=#786b53 guibg=#191919
hi Comment             ctermfg=10 guifg=#a6e22e gui=italic
hi CursorLine          ctermbg=8 guibg=#321300
hi CursorColumn        ctermbg=8 guibg=#321300
hi LineNr              ctermfg=8 guifg=#433626
hi CursorLineNr        ctermfg=11 guifg=#aa820c
hi VertSplit           ctermfg=0 guifg=#191919 guibg=#191919
hi StatusLine          ctermfg=15 guifg=#786b53 guibg=#321300
hi StatusLineNC        ctermfg=8 guifg=#433626 guibg=#191919
hi Visual              ctermbg=8 guibg=#433626
hi Search              ctermfg=0 guifg=#191919 guibg=#aa820c
hi IncSearch           ctermfg=0 guifg=#191919 guibg=#b25a1e

" Floating Windows
hi NormalFloat         ctermfg=15 guifg=#786b53 guibg=#191919
hi FloatBorder         ctermfg=11 guifg=#aa820c guibg=#191919
hi NeoTreeFloatNormal  ctermfg=15 guifg=#786b53 guibg=#191919
hi NeoTreeFloatBorder  ctermfg=11 guifg=#aa820c guibg=#191919
hi NeoTreePopupNormal  ctermfg=15 guifg=#786b53 guibg=#191919
hi NeoTreePopupBorder  ctermfg=11 guifg=#aa820c guibg=#191919

" Neo-tree File Explorer
hi NeoTreeNormal          ctermfg=15 guifg=#786b53 guibg=#191919
hi NeoTreeNormalNC        ctermfg=15 guifg=#786b53 guibg=#191919
hi NeoTreeDirectoryName   ctermfg=12 guifg=#58859a
hi NeoTreeDirectoryIcon   ctermfg=12 guifg=#58859a
hi NeoTreeIndentMarker    ctermfg=8  guifg=#433626
hi NeoTreeRootName        ctermfg=11 guifg=#aa820c gui=bold
hi NeoTreeSymbolicLinkTarget ctermfg=11 guifg=#f07d14
hi NeoTreeGitModified     ctermfg=10 guifg=#44a900
hi NeoTreeGitAdded        ctermfg=10 guifg=#44a900
hi NeoTreeGitDeleted      ctermfg=9  guifg=#b2270e
hi NeoTreeGitConflict     ctermfg=9  guifg=#b2270e gui=bold
hi NeoTreeGitUntracked    ctermfg=10 guifg=#55f238 gui=italic
hi NeoTreeGitIgnored      ctermfg=8  guifg=#433626 gui=italic
hi NeoTreeFileName        ctermfg=15 guifg=#786b53
hi NeoTreeFileNameOpened  ctermfg=15 guifg=#786b53 gui=italic
hi NeoTreeFileNameModified ctermfg=11 guifg=#aa820c
hi NeoTreeFileNameNew     ctermfg=10 guifg=#55f238
hi NeoTreeFileNameUntracked ctermfg=8 guifg=#433626
hi NeoTreeSymbolicLink    ctermfg=11 guifg=#aa820c
hi NeoTreeEndOfBuffer     ctermfg=8 guifg=#191919 guibg=#191919

" Completion Menu (Blink.CMP)
hi Pmenu              ctermfg=15 guifg=#786b53 guibg=#191919
hi PmenuSel           ctermfg=0 guifg=#191919 guibg=#aa820c gui=bold
hi PmenuBorder        ctermfg=11 guifg=#aa820c guibg=#191919
hi PmenuThumb         ctermfg=8 guifg=#433626 guibg=#433626
hi PmenuSbar          ctermfg=8 guifg=#433626 guibg=#191919
" Syntax Highlighting
hi Identifier         ctermfg=11 guifg=#fd971f  " Identifiers (headers) in soft orange
hi Function           ctermfg=10 guifg=#44a900
hi Keyword            ctermfg=11 guifg=#aa820c
hi String             ctermfg=11 guifg=#aa820c
hi Type               ctermfg=12 guifg=#58859a
hi Constant           ctermfg=9  guifg=#b2270e
hi Number             ctermfg=9  guifg=#b2270e
hi Boolean            ctermfg=9  guifg=#b2270e
hi Operator           ctermfg=15 guifg=#786b53
hi PreProc            ctermfg=11 guifg=#aa820c

hi @punctuation.bracket ctermfg=12 guifg=#6c8fa6 " Soft gray-blue for brackets

" Treesitter Specific Highlighting
hi @variable ctermfg=15 guifg=#c0c0bd      " Muted white for variables
hi @variable.go ctermfg=15 guifg=#c0c0bd   " Go-specific variables in muted white

hi @variable.member.go ctermfg=15 guifg=#fd971f      " Muted white for variables

