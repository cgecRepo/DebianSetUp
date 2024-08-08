# Mejora de la terminal
# --------------------------	Oh my zsh	--------------------------------------------------------------
sudo apt-get install zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo apt-get install terminator
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# se tiene que hacer el siguiente cambio en el archivo ~/.zshrc: ZSH_THEME="powerlevel10k/powerlevel10k"
# Se modifico el archivo ~/.p10k.zsh

# --------------------------	Alacritty	---------------------------------------------------------------
sudo apt-get install alacritty

# Si alacritty no se configura como la terminal por defecto entonces 
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50
sudo update-alternatives --config x-terminal-emulator