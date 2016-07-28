# TeamSpeak3 MEGA.nz linux backup script

## CZ:
_English version of the tutorial is after the czech one._

Tento script je určen k zálohování Vašeho TeamSpeak serveru na webové úložiště Mega.nz.

Pro Čechy a Slováky je určen soubor __ts_backupCZ.sh__ který je v českém jazyce. Script byl napsán pro Debian 8 64-bit, na dalších Debian-based systémech neotestován.

Script je povoleno jakkoliv upravovat, jen  prosím zachovejte části s příkazy _cat_ a _wget_ pro přísun novinek.

Kontakt v případě potřeby podpory je uveden ve scriptu.

# Instalace:
## Ke běhu je potřeba nástroj megatools! Více o nástroji a návod na jeho instalaci najdete [ZDE](https://github.com/megous/megatools).

__Instalace balíčku 7-zip:__
```sh
sudo apt-get update
sudo apt-get install p7zip-full
```
__Stažení scriptu__
```sh
git clone https://github.com/DJIronic/mega-ts-backuup.git
cd mega-ts-backuup
```
__Udělení práv k běhu:__
```sh
chmod 777 ts_backupCZ.sh
```
__Vytvoření složky pro ukládání záloh:__
```sh
mkdir /backup
chmod 777 /backup
```
__spuštění scriptu:__
```sh
./ts_backupCZ.sh
```
## Hotovo! Script doporučuji nastavit do CRONa. Pokud si s tím nevíte rady, kontaktujte mě na místech uvedených ve scriptu.

## EN:
This script is for making backups of your TS3 server to mega.nz storage.
For you is the file ts_backupEN.sh.. (one with CZ on the end is in Czech language). Script was made for Debian 8 64-bit and it was not tested on any other OS.
 
 You can edit my script as you want, but please. Do not remove / edit _wget_ and _cat_ commands for getting actoual notifications and credits, thanks.
 
If you want to contact me, contact places are in the script.

 # Installation 
 ## Script require megatools package! More info, download and installation tutorial is [HERE](https://github.com/megous/megatools).
 
__7-zip installation (also required package)__
```sh
sudo apt-get update
sudo apt-get install p7zip-full
```
__download script__
```sh
git clone https://github.com/DJIronic/mega-ts-backuup.git
cd mega-ts-backuup
```
__give it permissions to run:__
```sh
chmod 777 ts_backupCZ.sh
```
__creating local backup storage (temp storing only):__
```sh
mkdir /backup
chmod 777 /backup
```
__start the script:__
```sh
./ts_backupCZ.sh
```
 ## Done! I strongly recommend to use this script min CRON. If you need help with it, use Google or ask me on contacts listed in script. Thanks
 
