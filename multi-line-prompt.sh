# #######################################################################################
#  prompt should look like this
# #######################################################################################
#
# $user@$hostname {$date}
# [$cwd]
# $prompt_char
#
# #######################################################################################

# import the base prompt
source ~/.zsh/base-prompt.sh

# set the prompts  -- NOTE: the newline is in quotes and on multiple lines
prompts '%{$fg[red]%}%n%{$fg[white]%}@%{$fg[red]%}%m %{$fg[cyan]%}{%D{%A %b %d} %{$fg[cyan]%}%@}
%{$reset_color%}[%~]
$(git_super_status)%{$fg[yellow]%}$(prompt_char)%{$reset_color%} ' '%{$fg[red]%}$(ruby_version)%{$reset_color%}'
