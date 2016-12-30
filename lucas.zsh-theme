local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}⎇  "
PROMPT='%{$fg[yellow]%}%n@%m %{$fg_bold[cyan]%}%2c%{$reset_color%} %{$fg[magenta]%}%D{%a %d %b %Y %X %Z}%{$reset_color%} $(git_super_status)
${ret_status} '

# NOTE: This will only work with the git-prompt oh-my-zsh plugin enabled
unset RPROMPT

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗%{$fg[blue]%})"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}\u2714%{$fg[blue]%})"
