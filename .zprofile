# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set Environment variables
export AWS_DEPLOY_KEY=~/git/ec2-aws-deploy/awsdeploy_python_module/conf/awsdeploy_key.pem
