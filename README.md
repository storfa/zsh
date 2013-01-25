# zsh

my zsh setup

**Note that zsh must be installed (in /bin/zsh) for the steps below to work.

## Scripted Install

### Step 1 - Clone the repo
There is really not much to say about this, just clone the repo.

### Step 2 - Execute the install script
Running the install script should perform all the steps necessary to get my zsh scripts up and running.
It works for me, but a make no guarantees you'll have the same success.  If not, see the Manual Install section.
```bash
zsh/install.sh
```

### You're Done
You may need to log out and back in to complete the process.  That should be it.  You're done.

## Manual Install

### Step 0 - Consider the Scripted Install
If you'd rather just run a script and be done, see the Scripted Install section below.

### Step 1 - Clone and Rename
The included scripts assume the directory is named .zsh as opposed to the repo name zsh.  For this reason, after
cloning the repo to your home directory, it is best to rename the directory to .zsh:
```bash
mv zsh .zsh
```

### Step 2 - Clone Dependencies
My setup uses the zshuery zsh shell and very nice zsh-git-prompt.  They are very easy to get a hold of, just
clone their repo's:
```bash
git clone git://github.com/myfreeweb/zshuery.git ~/.zsh/zshuery 
git clone git://github.com/olivierverdier/zsh-git-prompt.git ~/.zsh/git-prompt
```

### Step 3 - Symlink .zshrc
There is an included .zshrc file, but it will not be in your home directory so we need to create a symlink to
it from your home directory:
```bash
ln -s ~/.zsh/.zshrc ~/.zshrc 
```

### Step 4 - Change your default shell
If you haven't already, you will likely want to switch your default shell to zsh.  Depending on OS, you may need
to log out and then back in after running this command:
```bash
chsh -s /bin/zsh
```

### Done
That should be it.  You're done.
