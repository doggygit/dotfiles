
function fish_prompt
  set -g -x last_status $status

  set_color $fish_color_cwd
  printf '%s ' (prompt_pwd)
  set_color normal


end
