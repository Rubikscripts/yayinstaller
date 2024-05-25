echo "YAYINSTALLER is starting..."
echo "[INFO] Before you continue, make sure:"
echo "=> you are in your home folder (directory /home/'username');"
echo "=> you have root privileges;"
echo "=> you know how to read what's going on."
echo "[INFO] The code is open to everyone, so you can see for youself what the program does."
echo "[WARNING] If you don't know what you're doing, press CTRL+C immediately."
echo "[INFO] Enter your password below:"
sudo pacman -S git base-devel
echo "[INFO] Coping YAY files"
git clone https://aur.archlinux.org/yay.git
cd yay
echo "[INFO] Installing software"
makepkg -si
echo "Complete!"
