# awesome
sudo apt-get install awesome nitrogen
# falta crear una carpeta en /home/.config/ llamda awesome
# y en /home/.config/awesome hay que copiar /etc/xdg/awesome/rc.lua

# y para poder configurar el tema
# cp -rvf /usr/share/awesome/themes/default/ .config/awesome/

sudo apt-get install xbacklight # Sirve para poder controlar el brillo con las teclas del teclado

# picom compositor
# Debian specific command. The next few commands are for all distros
sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev
sudo apt install cmake

# clone the project and go into it
git clone https://github.com/yshui/picom && cd picom

# Use the meson build system (written in python), to make a ninja build
meson --buildtype=release . build

# Use the ninja build file to proceed
ninja -C build

# Copy the resultant binary into PATH
sudo cp build/src/picom /usr/local/bin/

# Se cambio ~/.config/awesome/rc.lua para quitar los otros layouts

# -------------------------------- SUCKLESS -------------------------------------------------------
# Dmenu para mejorar el menu que viene con awesome
sudo apt-get install dmenu

