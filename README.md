# .dotfiles

# For New Computers
```bash
git clone --bare https://github.com/bdrenn/.dotfiles.git $HOME/.dotfiles
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

# Alias 
```bash
alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```
