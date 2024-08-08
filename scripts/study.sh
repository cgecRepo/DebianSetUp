# ------------------------------	Anki	----------------------------------------------------
cd ~/Downloads
sudo apt install libxcb-xinerama0 libxcb-cursor0 libnss3
wget https://github.com/ankitects/anki/releases/download/24.06.3/anki-24.06.3-linux-qt6.tar.zst
tar xaf anki-24.06.3-linux-qt6.tar.zst
cd anki-24.06.3-linux-qt6
sudo ./install.sh
cd ..
rm -r anki-24.06.3-linux-qt6
rm anki-24.06.3-linux-qt6.tar.zst