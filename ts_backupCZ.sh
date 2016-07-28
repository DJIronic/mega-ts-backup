#zalohovaci script TeamSpeak serveru na Mega.nz
datum=$(date +"%d-%B_%H-%M")

#Prefix názvu souboru. Použijte například, pokud zálohujete více TeamSpeak3 serverů dohrmady. (jinak můžete nechat původní)
prefix=TS3_

#lokace složky TS serveru:
serverloc=/your/path

#Vase přihlašovací údaje na Mega.nz
email=email@adresa.cz
heslo=moje-uzasne-heslo

#složka, kam chcete na mega.nz ukládat svá data (vždy musí začínát částí /Root/)
cesta=/Root/moje/krasna/cesta


#POD TÍMTO ŘÁDKEM NIC NEUPRAVUJEME!!!!
#uvod scriptu
wget -q -N https://up.life-games.cz/files/load.txt
cat load.txt
sleep 5


#vytvoreni 7zip archivu serveru
echo "Archivuji TeamSpeak3 server"
7z a -t7z /backup/$prefix$datum.7z $serverloc -m0=lzma2 -mx0 -aoa -mmt=on

#Odeslání archviu na mega.nz
echo "Odesilam archiv na mega.nz uloziste"
megaput /backup/$prefix$datum.7z --reload --username=$email --password=$heslo  --path=$cesta --disable-previews

#smazání archivu ze lokální disku
echo "Mazu puzustale lokalni soubory"
rm /backup/$prefix$datum.7z

wget -q -N https://up.life-games.cz/files/endtext.txt
cat endtext.txt

#Děkuji, že využíváte můj script. Pro jakékoliv dotazy či podporu mě kontaktujte na FB stránce https://fb.com/lifegamescz nebo na E-Mail: dj@life-games.com/lifegamescz
#Pokud se vám moje práce líbila, zvažte dotaci na můj PayPal atack9@gmail.com, podpoříte tím běh projektu LiFe-Games.cz a další vývoj tohoto scriptu. Děkuji