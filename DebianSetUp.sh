# DEBIAN INSTALLATION SETUP

#update debian itself

# Git
sudo apt-get install git

# awesome
sudo apt-get install awesome picom nitrogen

# Oh my zsh
sudo apt install zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo apt install terminator

# --------------------- CODING -------------------------------------------
# Vscode
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
sudo apt-add-repository 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main'
sudo apt update
sudo apt install codium codium-insiders

# Clang
sudo apt-get install clang

# Julia


# --------------------- GAME DEV -------------------------------------------
# raylib
sudo apt install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev

# Pixelorama
cd Downloads
wget https://github.com/Orama-Interactive/Pixelorama/releases/latest/download/Pixelorama.Linux-64bit.tar.gz
tar -xvzf Pixelorama.Linux-64bit.tar.gz

# -------------------- You Tube ---------------------------------------------
# obs
sudo apt install obs-studio

# -------------------- STUDY -------------------------------------------------
# Anki


# Crear el directorio de documentos