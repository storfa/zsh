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
prompts '${LIGHT_RED}%n${BLUE}@${LIGHT_RED}%m ${PURPLE}{%D{%A %b %d} ${PURPLE}%@}
%{$reset_color%}[%~]
$(virtualenv_info)$(git_super_status)%{$fg[yellow]%}$(prompt_char)%{$reset_color%} ' '%{$fg[red]%}$(ruby_version)%{$reset_color%}'
