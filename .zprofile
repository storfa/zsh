# make sure /usr/loca/bin occurs before /usr/bin in the path
PATH="$HOME/gocode/bin:/usr/local/bin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# export the gopath env variable
export GOPATH=$HOME/gocode
 
# When using MacVim (or GVim) as $VISUAL or $EDITOR, you should be 
# aware that by default MacVim will fork a new process from the parent, resulting in the 
# MacVim return value not reaching the parent process. This may confuse other applications, 
# but Git seems to check the status of a temporary commit message file, which bypasses 
# this limitation. In general, it is a good practice to export VISUAL='mvim -f' to ensure 
# MacVim will not fork a new process when called, which should give you what you want 
# when using it with your shell environment.
# see: http://stackoverflow.com/questions/2056137/how-to-run-mvim-macvim-from-terminal/2412237#2412237
export VISUAL='mvim -f'
