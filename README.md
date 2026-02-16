# Alacritty + Zellij configurations
## Requirements
- zsh
- git
- neofetch
- oh-my-zsh
- alacritty
- zellij
- fzf
### Installing apt packages
```bash
apt install zsh git alacritty neofetch
```
### Installing oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Installing zellij
```bash
curl https://sh.rustup.rs -sSf | sh
cargo install zellij
```
### Installing `fzf`
```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
## installation
```bash
git clone https://gitlab.nobell.fr/jan/terminal ~/.terminal
cd ~/.terminal
rm -rf ~/.config/alacritty && ln -s ~/.terminal/alacritty ~/.config/alacritty
rm -rf ~/.config/zellij && ln -s ~/.terminal/zellij ~/.config/zellij
rm ~/.zshrc && ln -s ~/.terminal/.zshrc ~/.zshrc
```
