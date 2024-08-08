# --------------------- Minecraft ------------------------------
sudo apt-get install openjdk-8-jdk

cd ~/Downloads
wget https://launcher.mojang.com/download/Minecraft.tar.gz
tar -xvf Minecraft.tar.gz
rm Minecraft.tar.gz
mv ./minecraft_launcher ~/.local/share/applications/
sudo ln -s ~/.local/share/applications/minecraft-launcher/minecraft-launcher /usr/local/bin/minecraft
