PROMPT='%{$fg[cyan]%}%n %{$fg[red]%}at %{$fg[yellow]%}%M %{$fg_bold[red]%}-[%{$fg_bold[yellow]%}%p%{$fg_bold[yellow]%}%c%{$fg[red]%}]- -[%{$fg_bold[yellow]%}%T%{$fg[red]%}]-  
%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$fg_bold[red]%}» %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
