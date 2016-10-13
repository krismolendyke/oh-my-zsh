# -*- mode: shell-script; -*-
# https://git.io/k20e zsh theme

##############################################################################
# git
##############################################################################
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

##############################################################################
# aws credentials
##############################################################################
ZSH_THEME_AWS_PROMPT_PREFIX="%{$fg[cyan]%}aws:"
ZSH_THEME_AWS_PROMPT_SUFFIX="%{%u%f%b%}"
ZSH_THEME_AWS_PROMPT="%{$fg_bold[green]%}"
ZSH_THEME_AWS_PROMPT_UNSET="%{$fg[yellow]%}∅"
ZSH_THEME_AWS_PROMPT_PROD="%{%U$fg_bold[red]%K{yellow}%}"

##############################################################################
# virtual environment
##############################################################################
export VIRTUAL_ENV_DISABLE_PROMPT=yes

ZSH_THEME_VENV_PROMPT_PREFIX="%{$fg[cyan]%}venv:"
ZSH_THEME_VENV_PROMPT_SUFFIX="%{%u%f%b%}"
ZSH_THEME_VENV_PROMPT_ACTIVATED="%{$fg_bold[green]%}"
ZSH_THEME_VENV_PROMPT_DEACTIVATED="%{$fg[yellow]%}∅"

##############################################################################
# prompt lines
##############################################################################
K20E_PROMPT_1='%{%f%k%b%u%}'
K20E_PROMPT_2='%{%F{yellow}%}%~%{%f%}$(git_prompt_info) $(git_prompt_status)%{%f%} $(k20e_aws_prompt_info) $(k20e_venv_prompt_info)%E'
K20E_PROMPT_3='⚓ '

##############################################################################
# command duration
##############################################################################
function preexec() {
    start=${start:-${SECONDS}}
}

function precmd() {
    if [ ${start} ]; then
        duration=$((${SECONDS} - ${start}))
        PROMPT="${K20E_PROMPT_1}
${K20E_PROMPT_2} ${duration}s
${K20E_PROMPT_3}"
        unset start
    fi
}

##############################################################################
# THE PROMPT
##############################################################################
PROMPT="${K20E_PROMPT_1}
${K20E_PROMPT_2}
${K20E_PROMPT_3}"
