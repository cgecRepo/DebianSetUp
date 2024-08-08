# ----------------------	raylib	-------------------------------------------------------------------------
sudo apt-get install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev
cd ~/Downloads
git clone --depth 1 https://github.com/raysan5/raylib.git raylib
cd raylib/src/
make PLATFORM=PLATFORM_DESKTOP # To make the static version.
sudo make install              # Static version.

# ----------------------	Pixelorama	---------------------------------------------------------------------
cd ~/Downloads
wget https://github.com/Orama-Interactive/Pixelorama/releases/latest/download/Pixelorama.Linux-64bit.tar.gz
tar -xvzf Pixelorama.Linux-64bit.tar.gz

# mover pixelorama a ~/.local/share/applications/
# y renombrarlo a pixelorama, tambien se debe renombrar el .pck a pixelorama.pck
# finalmente creamos un symbolic link con
# sudo ln -s ~/.local/share/applications/pixelorama/pixelorama /usr/local/bin/pixelorama
