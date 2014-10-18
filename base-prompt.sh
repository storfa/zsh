# #######################################################################################
#  A base prompt which can be sourced from any custom prompts
# #######################################################################################

#########################################################################################
#  import the zshuery zsh shell
#  git clone git://github.com/myfreeweb/zshuery.git ~/.zsh/zshuery
# #######################################################################################
source ~/.zsh/zshuery/zshuery.sh
load_defaults
load_aliases
#load_lol_aliases
load_completion ~/.zsh/zshuery/completion
load_correction

# reconfigure the colors for OSX and use colorized ls command
if is_mac; then
    export LSCOLORS=cxfxcxdxbxcxcxabagacad
    alias ls='ls -G' # use colored output
fi

# #######################################################################################
# import the very nice zsh-git-prompt
# git clone git://github.com/olivierverdier/zsh-git-prompt.git ~/.zsh/git-prompt
# #######################################################################################
source ~/.zsh/git-prompt/zshrc.sh

# #######################################################################################
# set the default prompts
# #######################################################################################
prompts '%{$fg[green]%}${PWD/#$HOME/~}%{$reset_color%} $(git_super_status)%{$fg[yellow]%}$(prompt_char $)%{$reset_color%} ' '%{$fg[red]%}$(ruby_version)%{$reset_color%}'
