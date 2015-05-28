
# Fish git prompt
  set __fish_git_prompt_showdirtystate 'yes'
  set __fish_git_prompt_showstashstate 'yes'
  set __fish_git_prompt_showuntrackedfiles 'yes'
  set __fish_git_prompt_showupstream 'yes'
  set __fish_git_prompt_showcolorhints 'yes'
  set __fish_git_prompt_show_informative_status 'yes'
  set __fish_git_prompt_color_branch yellow
  set __fish_git_prompt_color_upstream_ahead green
  set __fish_git_prompt_color_upstream_behind red

# Status Chars
  set __fish_git_prompt_char_dirtystate (set_color red)'⚡'(set_color normal)
  set __fish_git_prompt_char_stagedstate (set_color yellow)'→'(set_color normal)
  set __fish_git_prompt_char_untrackedfiles (set_color red)'Δ'(set_color normal)
  set __fish_git_prompt_char_stashstate (set_color purple)'↩'(set_color normal)
  set __fish_git_prompt_char_upstream_ahead (set_color blue)'+'(set_color normal)
  set __fish_git_prompt_char_upstream_behind (set_color blue)'-'(set_color normal)
  set __fish_git_prompt_char_upstream_diverged (set_color blue)'±'(set_color normal)
  set __fish_git_prompt_char_upstream_equal (set_color green)'='(set_color normal)
  set __fish_git_prompt_char_cleanstate (set_color green)'✔'(set_color normal)


function fish_right_prompt -d "Write out the right prompt"
  printf '%s ' (__fish_git_prompt)
  if test $last_status -eq 0
    echo (set_color green)'✔ '
  else
    echo (set_color red)$last_status' '
  end
  set_color normal
end
