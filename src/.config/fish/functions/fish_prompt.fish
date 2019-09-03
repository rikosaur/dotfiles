function fish_prompt

  # set colors
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)

  set -l green (set_color -o green)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  if not set -q -g __fish_robbyrussell_functions_defined
    set -g __fish_robbyrussell_functions_defined
    function _git_branch_name
      set -l branch (git symbolic-ref --quiet HEAD 2>/dev/null)
      if set -q branch[1]
        echo (string replace -r '^refs/heads/' '' $branch)
      else
        echo (git rev-parse --short HEAD 2>/dev/null)
      end
    end
    function _is_git_repo
        type -q git
        or return 1
        git rev-parse --git-dir >/dev/null 2>&1
    end
    function _is_git_dirty
      echo (git status -s --ignore-submodules=dirty 2>/dev/null)
    end
  end

  set -l cwd $cyan(basename (prompt_pwd))$normal

  set -l git_status

  if [ (_is_git_repo) > 0 ]
    set git_status $green'שׂ' (_git_branch_name)$normal
    if [ (_is_git_dirty) ]
      set git_status $yellow'שׂ' (_git_branch_name)$normal
    end
  end

  set -l stat_styled
  if [ $status != 0 ]
    set stat_styled $red'' $status$normal
  end


  echo '➜' $cwd $git_status $stat_styled '> '
end
