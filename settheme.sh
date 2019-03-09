#!bash
read -p "Do you want to set the SDDM theme? (Y/n) > " ans
if [[ $ans == "n" ]] || [[ $ans == "N" ]]; then
    echo -e "\x1B[31m You will have to set the Theme your own in '/etc/sddm.conf'\x1B[0m"
    exit
else
    echo "sudo sed -i 's/Current=.*/Current=$1/' /etc/sddm.conf"
    sudo sed -i 's/Current=.*/Current='$1'/' /etc/sddm.conf
fi
