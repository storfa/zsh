
if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='mvim'
else
    export EDITOR='vim'
fi
if [ -f ~/.zsh/my-prompt.sh ]; then
    source ~/.zsh/my-prompt.sh
fi
 
# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.zsh/aliases, instead of adding them here directly.

if [ -f ~/.zsh/aliases ]; then
    source ~/.zsh/aliases
fi

chpwd() {
    update_terminal_cwd
}

