if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='mvim'
else
    export EDITOR='vim'
fi

# setup the prompts
if [ -f ~/.zsh/base-prompt.sh ]; then
    source ~/.zsh/base-prompt.sh
fi

if [ -f ~/.zsh/multi-line-prompt.sh ]; then
    # uncomment to use the multi-line prompt
    #source ~/.zsh/multi-line-prompt.sh
fi
  
# alias definitions.
if [ -f ~/.zsh/aliases ]; then
    source ~/.zsh/aliases
fi

chpwd() {
    update_terminal_cwd
}

ulimit -n 8192

#"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
# => Key Bindings
#"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if [[ $IS_MAC -eq 1 ]]; then
    # this works better on my Mac
    bindkey '^[[H' beginning-of-line
    bindkey '^[[F' end-of-line
fi
