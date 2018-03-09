#!/bin/bash
# rofi_launch.sh / JennyM 2016 malkalech.com

#alpha="cc"   # opacity (00〜FF)
alpha="cf"   # opacity (00〜FF)

options=(
  #-modi            "combi,system:rofi_system_menu.sh,calc:qalc,run,ssh"
  -modi            "run,drun,window,ssh,calc:qalc"
  #-combi-modi      "window,drun"
  -show            "run"
  -font            "Ricty Discord 28"
  -width           "50"
  -padding         "60"
  -lines           "6"
  -fixed-num-lines
  -hide-scrollbar
  -sidebar-mode
  -terminal        "urxvt"

  ##  key bindings  ##
  -kb-cancel        "Escape,Control+g,Control+bracketleft,Control+c"
  #-kb-mode-next     "Shift+Right,Control+i,Control+Tab"
  -kb-mode-next     "Alt+l"
  #-kb-mode-previous "Shift+Left,Control+Shift+i"
  -kb-mode-previous "Alt+h"
  -kb-row-up        "Alt+k"
  -kb-row-down      "Alt+j"
  -kb-move-char-back "Control+h"
  -kb-move-char-forward "Control+l"
  -kb-remove-char-forward "Control+k"
  -kb-remove-char-back "Control+j"

  #### color scheme
  -color-enabled   "true"
  ## window         bg                   border               separator
  #-color-window    "argb:${alpha}040404, argb:${alpha}040404, argb:${alpha}458588"
  -color-window    "argb:${alpha}040404, argb:${alpha}040404, argb:${alpha}ff9933"
  ## text & cursor  bg             fg                   bg (alt)       bg (highlight)       fg (highlight)
  #-color-normal    "argb:00000000, argb:${alpha}458588, argb:00000000, argb:${alpha}076678, argb:${alpha}83a598"
  -color-normal    "argb:00000000, argb:${alpha}ff9933, argb:00000000, argb:${alpha}ff9900, argb:${alpha}000000"
  #-color-active    "argb:00000000, argb:${alpha}689d6a, argb:00000000, argb:${alpha}427b58, argb:${alpha}8ec07c"
  -color-active    "argb:00000000, argb:${alpha}ffd733, argb:00000000, argb:${alpha}ffd700, argb:${alpha}000000"
  #-color-urgent    "argb:00000000, argb:${alpha}b16286, argb:00000000, argb:${alpha}8f3f71, argb:${alpha}d3869b"
  -color-urgent    "argb:00000000, argb:${alpha}b16286, argb:00000000, argb:${alpha}8f3f71, argb:${alpha}d3869b"
)

rofi "$@" "${options[@]}"
