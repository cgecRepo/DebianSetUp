# --------------------------  Github Cli ----------------------------------------------------------------
# autenticacion facil para github desde la terminal
# Descargar un archivo .deb de https://github.com/git-ecosystem/git-credential-manager/releases/tag/v2.5.1
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) &&
	sudo mkdir -p -m 755 /etc/apt/keyrings &&
	wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null &&
	sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg &&
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null &&
	sudo apt update &&
	sudo apt install gh -y

# --------------------------	Vscode	-----------------------------------------------------------------
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
sudo apt-add-repository 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main'
sudo apt update
sudo apt install codium # codium-insiders

# --------------------------	Neovim	------------------------------------------------------------------
sudo apt install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
ls
cd build
cpack -G DEB
# sudo dpkg -i nvim-linux64.deb
# sudo apt remove neovim
sudo dpkg -i --force-overwrite nvim-linux64.deb
# nvim

# Configuracion de Neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# --------------------------	Julia	-----------------------------------------------------------------
# hacer esto dentro de la carpeta de ~/.local/share/applications/
wget https://julialang-s3.julialang.org/bin/linux/x64/1.10/julia-1.10.4-linux-x86_64.tar.gz
tar zxvf julia-1.10.4-linux-x86_64.tar.gz
rm julia-1.10.4-linux-x86_64.tar.gz

# Para agregar julia al path hay que agregar lo siguiente en ~/.bashrc y en ~/.zshrc
# export PATH="$PATH:/path/to/<Julia directory>/bin"

# --------------------------- WEB DEV	-----------------------------------------------
sudo apt-get install nodejs npm -y

# --------------------------	GAME DEV	-------------------------------------------
# Clang
sudo apt-get install clang

sh ./scripts/GameDev.sh
