# .dotfiles

# For New Computers
```bash
git clone --bare https://github.com/bdrenn/.dotfiles.git $HOME/.dotfiles
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

# Alias 
```bash
alias dotfiles='/home/linuxbrew/.linuxbrew/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

# Other
- Ensure that "Use Option as Meta Key" is checked from within the Terminal preferences. If it's not, tmux pane switching won't work. If using Iterm2, go to Profiles->Keys and change "left optionkey" to Esc+.
- Download the One-dark color theme for matching vim and terminal colors.
