. ~/.config/fish/aliases.fish
. ~/.config/fish/solarized.fish
. ~/.config/fish/conda.fish

if test -e ~/.config/fish/config.local.fish  
  . ~/.config/fish/config.local.fish
end

  set normal (set_color normal)
  set magenta (set_color magenta)
  set yellow (set_color yellow)
  set green (set_color green)
  set red (set_color red)
  set gray (set_color -o black)

set -x PATH $HOME/.rbenv/bin $HOME/code/command_line_tools_kp/bin $PATH
set -x XDG_CONFIG_HOME $HOME/.config
status --is-interactive; and . (rbenv init -|psub)

