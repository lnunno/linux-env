local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$reset_color%}"

PROMPT='%{$fg[yellow]%}%n@%m %{$fg_bold[cyan]%}%2c%{$reset_color%} $(git_prompt_info)%{$fg[magenta]%}%D{%a %d %b %Y %X %Z}%{$reset_color%}
${ret_status} '

RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
