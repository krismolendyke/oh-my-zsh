# https://git.io/k20e zsh theme

ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_PREFIX=" %{%U%F{blue}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%u%f%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{%F{green}%}A"
ZSH_THEME_GIT_PROMPT_DELETED="%{%F{red}%}D"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{%F{red}%}M"
ZSH_THEME_GIT_PROMPT_RENAMED="%{%F{green}%}R"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{%F{red}%}U"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{%F{red}%}⁇"

PROMPT='%{%f%k%b%u%}
%{%F{yellow}%}%~%{%f%}$(git_prompt_info) $(git_prompt_status)%{%f%}%E
%{%B⚓%b%} '
