
# Linux terminal config

### 1. Dependencies
zsh
```bash
# ubuntu/debian
sudo apt update && sudo apt install zsh

# arch
sudo pacman -Syu && sudo pacman -S zsh
```
Wezterm
```bash
# ubuntu/debian
sudo apt update && sudo apt install wezterm

# arch - nyeste versjon
yay -S wezterm-git 
```

Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

PowerLevel10k
```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```


### 2. Configuration

