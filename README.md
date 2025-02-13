# Config for linux med lazyvim + tmux

## 1. Dependencies
Kjør følgende kommandoer:
```
sudo apt update

sudo apt install tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone -b v2.1.2 https://github.com/catppuccin/tmux.git ~/.tmux/plugins/catppuccin/
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
```


## 2. tmux
Lagre filen `tmux.conf` til home(~/) directory med prefix `.`.

dvs. lagre som: `~/.tmux.conf`



## 3. tmuxifier
### Legg til tmuxifier i PATH:
```
nvim .bashrc
```
##### Paste inn
> #tmuxifier added to path 
>
> export PATH="$HOME/.tmuxifier/bin:$PATH"

---

### Init tmuxifier på bash startup:
```
nvim .profile
```
##### Paste inn:

> #init tmuxifier
> 
> eval "$(tmuxifier init -)"

---

### Legg til tmuxifier templates:
```
mkdir ~/.tmuxifier/templates
```
Lagre filen `session.sh`

---

## ressurser
https://github.com/tmux-plugins/tpm

https://github.com/christoomey/vim-tmux-navigator
