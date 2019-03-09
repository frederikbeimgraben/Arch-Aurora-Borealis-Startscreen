#!/bin/bash
export re='^[0-9]+$'
export target=arch-aurora-sddm/music
read -p "Do you want to add music to your login screen? (Y/n) > " ans
if [[ $ans == "n" || $ans == "N" ]]; then
    echo -e "\x1B[31mNo music will be added\x1B[0m"
    exit
fi
echo -e "\x1B[32mMusic will be added\x1B[0m"
ans=abcdefghi
while ! [[ $ans =~ $re ]]; do
    while !(($ans<11)) || !(($ans>0)); do
        read -p "Enter the wanted volume. (0 - 10) > " ans
        if [[ $ans == "" ]]; then
            ans=abcdefghi
        fi
    done
done
export mult=$(expr 10 / $ans)
echo "#!/bin/bash" > $target
echo  "export mult=$mult" >> $target
cat music.temp >> $target
chmod +x $target
echo -e "\x1B[32mAdded with Volume=$ans\x1B[0m"
