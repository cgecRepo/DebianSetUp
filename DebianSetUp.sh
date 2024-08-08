# DEBIAN INSTALLATION SETUP

# TODO: Falta configurar las teclas del teclado para subir y bajar el brillo de la pantalla
# TODO: Falta configurar las teclas del teclado para subir y bajar el volumen
# TODO: Agregar la confuracion de alacritty que esta en .config/alacritty
# TODO: Agregar el Theme de AwesomeWM
# TODO: Agregar que aparezco la bateria en la estatus bar de AwesomeWM
# TODO: Agregar a los archivos toda la carpeta ~/.config/awesome/

#update debian itself
sudo apt-get update

# ------------------------ Utils ------------------------------
# Git
sudo apt-get install git
sudo apt-get install pulseaudio # Sin esto no se pueden configurar las teclas para subir y bajar el volumen

# Virtual Machine
apt-get install qemu-user-static

# ------------------------ WM --------------------------------
sh ./scripts/wm.sh

# --------------------- CODING -------------------------------------------
sh ./scripts/coding.sh

# --------------------  GAMING  ------------------------------------------
sh ./scripts/gamedev.sh

# -------------------- You Tube ---------------------------------------------
# obs
sudo apt-get install obs-studio

# -------------------- STUDY -------------------------------------------------
sh ./scripts/study.sh

# -------------------- DIRECTORIES ---------------------------------------------
sh ./scripts/directories.sh

# -------------------- Terminal ------------------------------------
sh ./scripts/terminal.sh
