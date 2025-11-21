
# Linux terminal config

## 1. Dependencies
#### zsh
```bash
# ubuntu/debian
sudo apt update && sudo apt install zsh

# arch
sudo pacman -Syu && sudo pacman -S zsh
```
#### Wezterm
```bash
# ubuntu/debian
sudo apt update && sudo apt install wezterm

# arch - nyeste versjon
yay -S wezterm-git 
```

#### Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### PowerLevel10k
```bash
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

#### Plugins
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
```


## 2. Configuration
#### Oh My Zsh/Powerlevel10k
Rediger `.zshrc` med følgende linje:
```bash
ZSH_THEME="powerlevel10k/powerlevel10k"
```
Deretter gå gjennom configuration på startup, dette kan også gjøres senere med:
```bash
p10k configure
```

#### zsh Plugins
Rediger `.zshrc` med følgende linje:
```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)
```
#### alias
```bash
# opprett og rediger
touch ~/.oh-my-zsh/aliases.zsh

# kopier fil fra repo og legg på posisjonen
git clone <repo>
cp ./<repo>/filer/aliases.zsh ~/.oh-my-zsh/aliases.zsh
```

Rediger `.zshrc` og legg til:
```bash
source $ZSH/aliases.zsh
```

#### Wezterm
Kopier `.wezterm.lua` fil til `~` directory:
```bash
git clonoe <repo>
cp ./<repo>/filer/.wezterm.lua ~/.wezterm.lua
```
