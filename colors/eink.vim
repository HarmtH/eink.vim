" vim:sw=8:ts=8
"
" act like t_Co=0 but use (256) color on just a few things
"

hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "eink"

if &background == "light"
  hi Normal       gui=NONE            guibg=snow1     guifg=gray11
  hi SpecialKey   gui=bold                            guifg=NONE
  hi IncSearch    gui=reverse                         guifg=NONE
  hi Search       gui=reverse                         guifg=NONE
  hi MoreMsg      gui=bold                            guifg=NONE
  hi ModeMsg      gui=bold                            guifg=NONE
  hi LineNr       gui=NONE                            guifg=gray60
  hi StatusLine   gui=bold,reverse                    guifg=NONE
  hi StatusLineNC gui=reverse                         guifg=NONE
  hi VertSplit    gui=reverse                         guifg=NONE
  hi Title        gui=bold                            guifg=NONE
  hi Visual       gui=reverse                         guifg=NONE
  hi VisualNOS    gui=bold                            guifg=NONE
  hi WarningMsg   gui=standout                        guifg=NONE
  hi WildMenu     gui=standout                        guifg=NONE
  hi Folded       gui=standout                        guifg=NONE
  hi FoldColumn   gui=standout                        guifg=NONE
  hi DiffAdd      gui=bold                            guifg=NONE
  hi DiffChange   gui=bold                            guifg=NONE
  hi DiffDelete   gui=bold                            guifg=NONE
  hi DiffText     gui=reverse                         guifg=NONE
  hi Type         gui=None            guibg=NONE      guifg=NONE
  hi Keyword      gui=None            guibg=NONE      guifg=NONE
  hi Number       gui=None            guibg=NONE      guifg=NONE
  hi Char         gui=None            guibg=NONE      guifg=NONE
  hi Format       gui=None            guibg=NONE      guifg=NONE
  hi Special      gui=underline       guibg=NONE      guifg=NONE
  hi Constant     gui=None            guibg=NONE      guifg=NONE
  hi PreProc      gui=None                            guifg=NONE
  hi Directive    gui=NONE            guibg=NONE      guifg=NONE
  hi Conditional  gui=NONE            guibg=NONE      guifg=NONE
  hi Comment      gui=bold            guibg=NONE      guifg=gray17
  hi Func         gui=None            guibg=NONE      guifg=gray17
  hi Identifier   gui=NONE            guibg=NONE      guifg=NONE
  hi Statement    gui=NONE            guibg=NONE      guifg=NONE
  hi Ignore       gui=bold                            guifg=NONE
  hi String       term=italic                         guifg=NONE
  hi ErrorMsg     gui=reverse         guibg=NONE      guifg=firebrick3
  hi Error        gui=reverse         guibg=NONE      guifg=firebrick3
  hi Todo         gui=bold,standout   guibg=NONE      guifg=darkgoldenrod2
  hi MatchParen   gui=bold            guibg=gray70    guifg=NONE
  hi ColorColumn                                      guifg=gray60
else
  hi Normal       gui=NONE            guibg=#1d1f21   guifg=gray70
  hi SpecialKey   gui=bold                            guifg=NONE
  hi IncSearch    gui=reverse         guibg=NONE                guifg=NONE
  hi Search       gui=reverse         guibg=NONE                guifg=NONE
  hi MoreMsg      gui=bold                            guifg=NONE
  hi ModeMsg      gui=bold                            guifg=NONE
  hi LineNr       gui=NONE                            guifg=gray50
  hi CursorLineNr gui=none                            guifg=NONE
  hi CursorLine   gui=none         guibg=gray20                   guifg=NONE
  hi StatusLine   gui=bold,reverse                    guifg=NONE
  hi StatusLineNC gui=reverse                         guifg=NONE
  hi VertSplit    gui=reverse                         guifg=NONE
  hi Title        gui=bold                            guifg=NONE
  hi Visual       gui=reverse         guibg=NONE                guifg=NONE
  hi VisualNOS    gui=bold            guibg=NONE                guifg=NONE
  hi WildMenu     gui=standout                        guifg=NONE
  hi Folded       gui=none        guibg=gray50                guifg=NONE
  hi FoldColumn   gui=standout                        guifg=NONE
  hi DiffChange   gui=bold        guibg=grey60                    guifg=NONE
  hi DiffText     gui=reverse                         guifg=NONE
  hi Type         gui=None            guibg=NONE      guifg=NONE
  hi Keyword      gui=None            guibg=NONE      guifg=NONE
  hi Number       gui=None            guibg=NONE      guifg=NONE
  hi Char         gui=None            guibg=NONE      guifg=NONE
  hi Format       gui=None            guibg=NONE      guifg=NONE
  " hi Special      gui=underline       guibg=NONE      guifg=NONE
  hi Special      gui=None       guibg=NONE      guifg=NONE
  hi Constant     gui=None            guibg=NONE      guifg=NONE
  hi PreProc      gui=None                            guifg=NONE
  hi Directive    gui=NONE            guibg=NONE      guifg=NONE
  hi Conditional  gui=NONE            guibg=NONE      guifg=NONE
  hi SignColumn   gui=NONE            guibg=NONE      guifg=NONE
  hi Comment      gui=NONE            guibg=NONE      guifg=gray50
  hi Func         gui=None            guibg=NONE      guifg=gray50
  hi Identifier   gui=NONE            guibg=NONE      guifg=NONE
  hi Statement    gui=NONE            guibg=NONE      guifg=NONE
  hi Ignore       gui=bold                            guifg=NONE
  hi String       gui=italic                          guifg=NONE
  hi ErrorMsg     gui=reverse         guibg=NONE      guifg=firebrick3
  hi Error        gui=reverse         guibg=NONE      guifg=firebrick3
  hi Todo         gui=bold,standout   guibg=NONE      guifg=none
  hi MatchParen   gui=bold            guibg=gray45    guifg=NONE
  hi ColorColumn                      guibg=gray10
  hi Question gui=bold guibg=none guifg=none
  hi Pmenu gui=none guibg=gray10 guifg=none
  hi PmenuSel gui=reverse guibg=gray10 guifg=none
  hi PmenuSbar gui=reverse guibg=gray40 guifg=gray40
  hi PmenuThumb gui=reverse guibg=gray70 guifg=gray70
  hi NonText gui=bold guibg=NONE guifg=NONE

  hi GitGutterAdd gui=none            guibg=NONE      guifg=gray50         " an added line
  hi GitGutterChange gui=none            guibg=NONE      guifg=gray50      " a changed line
  hi GitGutterDelete gui=none            guibg=NONE      guifg=gray50      " at least one removed line
  hi GitGutterChangeDelete gui=none            guibg=NONE      guifg=gray50 " a changed line followed by at least one removed line
endif
