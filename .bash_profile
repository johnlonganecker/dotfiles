alias ll="ls -alh -Gp"
alias gl="git lg"
alias lgrep="ll | grep -i"

export EDITOR=vi

#Git branch in prompt.
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#setup prompt
export PS1="\[\033[31m\]\u@Mac:\[\033[33m\]\W\[\033[32m\]\$(parse_git_branch) \t\[\033[00m\] $ \[\033[35m\]"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

preexec() {
    echo -e -n "\033[00m"
}
preexec_invoke_exec () {
    [ -n "$COMP_LINE" ] && return                     # do nothing if completing
        [ "$BASH_COMMAND" = "$PROMPT_COMMAND" ] && return # don't cause a preexec for $PROMPT_COMMAND
            local this_command=`history 1 | sed -e "s/^[ ]*[0-9]*[ ]*//g"`; # obtain the command from the history, removing the history number at the beginning
                preexec "$this_command"
}
trap 'preexec_invoke_exec' DEBUG

#source /opt/local/etc/bash_completion.d/git-completion.bash
#source $HOME/gh_complete.sh
