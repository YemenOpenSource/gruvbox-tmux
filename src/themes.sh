#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @gruvbox-tmux_theme)"

case $SELECTED_THEME in
"hard")
  declare -A THEME=(
    ["background"]="#1b1b1b"
    ["foreground"]="#fbf1c7"
    ["black"]="#1d2021"
    ["blue"]="#458588"
    ["cyan"]="#689d6a"
    ["green"]="#98971a"
    ["magenta"]="#b16286"
    ["red"]="#cc241d"
    ["white"]="#fbf1c7"
    ["yellow"]="#d79921"

    ["bblack"]="#928374"
    ["bblue"]="#83a598"
    ["bcyan"]="#8ec07c"
    ["bgreen"]="#b8bb26"
    ["bmagenta"]="#d3869b"
    ["bred"]="#fb4934"
    ["bwhite"]="#fbf1c7"
    ["byellow"]="#fabd2f"
  )
  ;;

"medium")
  declare -A THEME=(
    ["background"]="#282828"
    ["foreground"]="#fbf1c7"
    ["black"]="#1d2021"
    ["blue"]="#458588"
    ["cyan"]="#689d6a"
    ["green"]="#98971a"
    ["magenta"]="#b16286"
    ["red"]="#cc241d"
    ["white"]="#fbf1c7"
    ["yellow"]="#d79921"

    ["bblack"]="#928374"
    ["bblue"]="#83a598"
    ["bcyan"]="#8ec07c"
    ["bgreen"]="#b8bb26"
    ["bmagenta"]="#d3869b"
    ["bred"]="#fb4934"
    ["bwhite"]="#fbf1c7"
    ["byellow"]="#fabd2f"
  )
  ;;

*)
  # Default theme
  declare -A THEME=(
    ["background"]="#1b1b1b"
    ["foreground"]="#fbf1c7"
    ["black"]="#1b2021"
    ["blue"]="#458588"
    ["cyan"]="#689d6a"
    ["green"]="#98971a"
    ["magenta"]="#b16286"
    ["red"]="#cc241d"
    ["white"]="#fbf1c7"
    ["yellow"]="#d79921"

    ["bblack"]="#928374"
    ["bblue"]="#83a598"
    ["bcyan"]="#8ec07c"
    ["bgreen"]="#b8bb26"
    ["bmagenta"]="#d3869b"
    ["bred"]="#fb4934"
    ["bwhite"]="#fbf1c7"
    ["byellow"]="#fabd2f"
  )
  ;;
esac

THEME['ghgreen']="#98971a"
THEME['ghmagenta']="#b16286"
THEME['ghred']="#cc241d"
THEME['ghyellow']="#d79921"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
