#/bin/sh
echo "YAYINSTALLER is starting..."
sleep 1
echo "[INFO] Before you continue, make sure:"
echo "=> you are in your home folder (directory /home/'username');"
echo "=> you have root privileges;"
echo "=> you know how to read what's going on."
echo "[INFO] The code is open to everyone, so you can see for youself what the program does."
echo "[WARNING] If you don't know what you're doing, press CTRL+C immediately."
echo "[QUESTION] What should I do?"
echo "1. Install yay"
echo "2. Remove yay"
echo "[!] Please type the operation number, then press Enter:"
read operation
if [ "$operation" -eq "1" ]; then
    cd ~
    echo "[INFO] If requested, enter your password below:"
    sudo pacman -S git base-devel
    if [ ! -d "yay"]; then
        echo "[INFO] Software files not found. Coping..."
        git clone https://aur.archlinux.org/yay.git
    else
        echo "[INFO] Software files found. Skipping..."
    fi
    cd yay
    echo "[INFO] Building and installing software..."
    makepkg -si
    echo "[QUESTION] Do you want to remove the script? (y/n)"
    read removescript
    if [ "$removescript" = "y" ]; then
        echo "[INFO] Removing script..."
        rm yayinstaller-2.0.0.sh
    else
        echo "[INFO] Skipping..."
    fi
    echo "[INFO] Complete!"
    echo "[INFO] If the installation failed, try reinstalling 'git', 'base-devel' and 'go'."
    cd ~
elif [ "$operation" -eq "2" ]; then
    cd ~
    echo "[INFO] Removing software"
    echo "[INFO] If requested, enter your password below:"
    sudo pacman -Rs yay
    echo "[QUESTION] Do you want to remove the software files ('yay' folder)? (y/n)"
    read removefiles
    if [ "$removefiles" = "y" ]; then
        echo "[INFO] Removing files..."
        rm -rf yay
    else
        echo "[INFO] Skipping..."
    fi
    echo "[QUESTION] Do you want to remove the script? (y/n)"
    read removescript
    if [ "$removescript" = "y" ]; then
        echo "[INFO] Removing script..."
        rm yayinstaller-2.0.0.sh
    else
        echo "[INFO] Skipping..."
    fi
    echo "[INFO] Complete!"
    echo "[INFO] If the removal failed, run the script again, or please make an issue on https://github.com/rubikscripts/yayinstaller/issues"
    cd ~
else
    echo "Operation number $operation does not exist. Please type '1' or '2'."
fi
