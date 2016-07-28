#TS3 backup script using MEGA.nz storage. Written by DJ_Ironic, LiFe-Games.cz
#VERSION: 1.1_EN
date=$(date +"%d_%B")

#TeamSpeak3 server location
serverloc=/your/path

#Your MEGA.nz logins
email=email@example.com
passwd=my-epic-password

#folder on mega, where you want to store you data (vždy musí začínát částí /Root/)
remotepath=/Root/my/remote/path


#DO NOT EDIT CODE AFTER THIS LINE!!!!
wget -q -N https://up.life-games.cz/files/load.txt
cat load.txt
sleep 5


#Archive creating...
echo "Compressing TeamSpeak3 server files."
7z a -t7z /backup/$date.7z $serverloc -m0=lzma2 -mx0 -aoa -mmt=on

#Mega.nz archive sending
echo "Uploading files to mega.nz storage."
megaput /backup/$date.7z --reload --username=$email --password=$passwd  --path=$remotepath --disable-previews

#deleting local copy of archive
echo "Deleting local copy of archive."
rm /backup/$date.7z

wget -q -N https://up.life-games.cz/files/endtext.txt
cat endtext.txt

#Thanks for using, for any support, contact my on FB page: https://fb.com/lifegamescz or on E-Mail: dj@life-games.cz. I am here to  help you :)
#Enjoy my work, if you really like it. Please consider Donation to my PayPal: atack9@gmail.com. You will support LiFe-Games.cz project and development of this script.