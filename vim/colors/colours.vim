" Vim color file - BusyBee
" Generated by http://bytefluent.com/vivify 2012-02-15
set background=dark
if version > 580
hi clear
if exists("syntax_on")
    syntax reset
endif
endif

let g:colors_name = "BusyBee"

hi IncSearch guifg=none guibg=#303030 guisp=none gui=none ctermfg=none ctermbg=246 cterm=none
hi WildMenu guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi SignColumn guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi SpecialComment guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi Typedef guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi Title guifg=#f6f3e8 guibg=none guisp=none gui=bold ctermfg=230 ctermbg=none cterm=bold
hi Folded guifg=#a0a8b0 guibg=#384048 guisp=#384048 gui=none ctermfg=39 ctermbg=238 cterm=none
hi PreCondit guifg=#faf4c6 guibg=none guisp=none gui=none ctermfg=230 ctermbg=none cterm=none
hi Include guifg=#faf4c6 guibg=none guisp=none gui=none ctermfg=135 ctermbg=none cterm=none
hi TabLineSel guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi StatusLineNC guifg=#939395 guibg=#303030 guisp=#303030 gui=none ctermfg=246 ctermbg=236 cterm=none
hi CTagsMember guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi NonText guifg=#808080 guibg=#202020 guisp=#202020 gui=none ctermfg=8 ctermbg=0 cterm=none
hi CTagsGlobalConstant guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi DiffText guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi ErrorMsg guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Ignore guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Debug guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi PMenuSbar guifg=none guibg=#202020 guisp=#202020 gui=none ctermfg=none ctermbg=234 cterm=none
hi Identifier guifg=#b1d631 guibg=none guisp=none gui=none ctermfg=149 ctermbg=none cterm=none
hi SpecialChar guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi Conditional guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi StorageClass guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi Todo guifg=#8f8f8f guibg=none guisp=none gui=none ctermfg=245 ctermbg=none cterm=none
hi Special guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=247 ctermbg=none cterm=none
hi LineNr guifg=#303030 guibg=#202020 guisp=#202020 gui=none ctermfg=236 ctermbg=234 cterm=none
hi StatusLine guifg=#d3d3d5 guibg=#303030 guisp=#303030 gui=none ctermfg=188 ctermbg=236 cterm=none
hi Normal guifg=#e2e2e5 guibg=#202020 guisp=#202020 gui=none ctermfg=254 ctermbg=0 cterm=none
hi Label guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi CTagsImport guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi PMenuSel guifg=#000000 guibg=#b1d631 guisp=#b1d631 gui=none ctermfg=none ctermbg=149 cterm=none
hi Search guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi CTagsGlobalVariable guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Delimiter guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi Statement guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=112 ctermbg=none cterm=none
hi SpellRare guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi EnumerationValue guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Comment guifg=#3f3f3f guibg=none guisp=none gui=italic ctermfg=237 ctermbg=none cterm=none
hi Character guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi Float guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi Number guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi Boolean guifg=#b1d631 guibg=none guisp=none gui=none ctermfg=149 ctermbg=none cterm=none
hi Operator guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi CursorLine guifg=none guibg=#202020 guisp=#202020 gui=none ctermfg=none ctermbg=234 cterm=none
hi Union guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi TabLineFill guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Question guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi WarningMsg guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi VisualNOS guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi DiffDelete guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi ModeMsg guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi CursorColumn guifg=none guibg=#202020 guisp=#202020 gui=none ctermfg=none ctermbg=234 cterm=none
hi Define guifg=#faf4c6 guibg=none guisp=none gui=none ctermfg=230 ctermbg=none cterm=none
hi Function guifg=#ffff00 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi FoldColumn guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi PreProc guifg=#faf4c6 guibg=none guisp=none gui=none ctermfg=230 ctermbg=none cterm=none
hi EnumerationName guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Visual guifg=#faf4c6 guibg=#3c414c guisp=#3c414c gui=none ctermfg=230 ctermbg=239 cterm=none
hi MoreMsg guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi SpellCap guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi VertSplit guifg=#444444 guibg=#303030 guisp=#303030 gui=none ctermfg=238 ctermbg=236 cterm=none
hi Exception guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi Keyword guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi Type guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi DiffChange guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Cursor guifg=none guibg=#626262 guisp=#626262 gui=none ctermfg=none ctermbg=241 cterm=none
hi SpellLocal guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Error guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi PMenu guifg=#ffffff guibg=#202020 guisp=#202020 gui=none ctermfg=15 ctermbg=234 cterm=none
hi SpecialKey guifg=#808080 guibg=#343434 guisp=#343434 gui=none ctermfg=8 ctermbg=236 cterm=none
hi Constant guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi DefinedName guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Tag guifg=#ff9800 guibg=none guisp=none gui=none ctermfg=208 ctermbg=none cterm=none
hi String guifg=#606060 guibg=none guisp=none gui=none ctermfg=59 ctermbg=none cterm=none
hi PMenuThumb guifg=none guibg=#303030 guisp=#303030 gui=none ctermfg=none ctermbg=236 cterm=none
hi MatchParen guifg=#d0ffc0 guibg=#202020 guisp=#202020 gui=bold ctermfg=193 ctermbg=234 cterm=bold
hi LocalVariable guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Repeat guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi SpellBad guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi CTagsClass guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Directory guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi Structure guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi Macro guifg=#faf4c6 guibg=none guisp=none gui=none ctermfg=230 ctermbg=none cterm=none
hi Underlined guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi DiffAdd guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi TabLine guifg=none guibg=none guisp=none gui=none ctermfg=none ctermbg=none cterm=none
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=none ctermfg=187 ctermbg=237 cterm=none
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=none ctermfg=176 ctermbg=238 cterm=none
hi doxygenspecial guifg=#fdd090 guibg=none guisp=none gui=none ctermfg=222 ctermbg=none cterm=none
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=none ctermfg=255 ctermbg=237 cterm=none
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=none ctermfg=255 ctermbg=60 cterm=none
hi doxygenparam guifg=#fdd090 guibg=none guisp=none gui=none ctermfg=222 ctermbg=none cterm=none
hi doxygensmallspecial guifg=#fdd090 guibg=none guisp=none gui=none ctermfg=222 ctermbg=none cterm=none
hi doxygenprev guifg=#fdd090 guibg=none guisp=none gui=none ctermfg=222 ctermbg=none cterm=none
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=none ctermfg=176 ctermbg=238 cterm=none
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=none ctermfg=176 ctermbg=238 cterm=none
hi lcursor guifg=#404040 guibg=#8fff8b guisp=#8fff8b gui=none ctermfg=238 ctermbg=120 cterm=none
hi cursorim guifg=#404040 guibg=#8b8bff guisp=#8b8bff gui=none ctermfg=238 ctermbg=105 cterm=none
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=none guisp=none gui=none ctermfg=130 ctermbg=none cterm=none
hi taglisttagname guifg=#808bed guibg=none guisp=none gui=none ctermfg=105 ctermbg=none cterm=none
hi doxygenbrief guifg=#fdab60 guibg=none guisp=none gui=none ctermfg=215 ctermbg=none cterm=none
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=none ctermfg=252 ctermbg=60 cterm=none
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=none ctermfg=39 ctermbg=60 cterm=none
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=none ctermfg=48 ctermbg=60 cterm=none
hi doxygenspecialonelinedesc guifg=#ad600b guibg=none guisp=none gui=none ctermfg=130 ctermbg=none cterm=none
hi doxygencomment guifg=#ad7b20 guibg=none guisp=none gui=none ctermfg=130 ctermbg=none cterm=none
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=none ctermfg=176 ctermbg=238 cterm=none
hi pythonimport guifg=#009000 guibg=none guisp=none gui=none ctermfg=28 ctermbg=none cterm=none
hi pythonexception guifg=#f00000 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi pythonbuiltinfunction guifg=#009000 guibg=none guisp=none gui=none ctermfg=28 ctermbg=none cterm=none
hi pythonoperator guifg=#7e8aa2 guibg=none guisp=none gui=none ctermfg=39 ctermbg=none cterm=none
hi pythonexclass guifg=#009000 guibg=none guisp=none gui=none ctermfg=28 ctermbg=none cterm=none
