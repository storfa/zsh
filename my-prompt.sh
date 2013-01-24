# ###############################
#  prompt should look like this
# ###############################
#
# $user@$hostname {$date}
# [$cwd]
# $prompt_char
#
# ###############################

export AWSKEYFILE="~/git/ec2-aws-deploy/awsdeploy_python_module/conf/awsdeploy_key.pem"

# ###############################
# import the zshuery zsh shell
# git clone git://github.com/myfreeweb/zshuery.git ~/.zsh/zshuery
# ###############################
source ~/.zsh/zshuery/zshuery.sh
load_defaults
load_aliases
load_lol_aliases
load_completion ~/.zsh/zshuery/completion
load_correction

# ###############################
# import the very nice zsh-git-prompt
# git clone git://github.com/olivierverdier/zsh-git-prompt.git ~/.zsh/git-prompt
# ###############################
source ~/.zsh/git-prompt/zshrc.sh

# ###############################
# define some colors
# ###############################
        RED=$'\033[0;31m'
     YELLOW=$'\033[0;33m'
      GREEN=$'\033[0;32m'
       BLUE=$'\033[0;34m'
     PURPLE=$'\033[1;35m'
  LIGHT_RED=$'\033[1;31m'
LIGHT_GREEN=$'\033[1;32m'
      WHITE=$'\033[1;37m'
 LIGHT_GRAY=$'\033[0;37m'
  
PROMPT_SPACE=''

# ###############################
# set the prompts
# ###############################

# NOTE: the newline is in quotes and on multiple lines
prompts '${LIGHT_RED}%n${BLUE}@${LIGHT_RED}%m ${PURPLE}{%D{%A %b %d} ${PURPLE}%@}
%{$reset_color%}[%~]
$(virtualenv_info)$(git_super_status)%{$fg[yellow]%}$(prompt_char)%{$reset_color%} ' '%{$fg[red]%}$(ruby_version)%{$reset_color%}'
