im () {
	printf "\n\n\033[96m =======================================\n\n\033[92m        [+] \033[93m Thanx for using this. \n\n\033[96m =======================================\n\n"|$rang
exit 0
}
update () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image update | $rang
$likh "$e$e Updating.....$e$e"
apt update
apt upgrade
apt install git
cd $PREFIX/bin
rm -f Twrp
cd $HOME
rm -Rf Twrp-Tool
git clone https://github.com/rooted-cyber/Twrp-Tool
cd Twrp-Tool
bash Twrp.sh
}
helpp () {
	
lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image help | $rang
$likh "$e$e $hara YE TOOL SIRF ROOTED KE LIYE HAI $e "
$likh "$hara Isme koi bhi .img file flsh kr skte ho.$e"
$likh "or fir boot or recovery backup v kr skte ho$e"
$likh "sb knha kanha rkhna hai uska location bta rhe hai$e$e"
$likh "$e$pta Flashing boot location	$hara/sdcard/Twrp-Tool/Flash$e"
$likh "$pta Flashing recovery location	$hara/sdcard/Twrp-Tool/Flash$e"
$likh "$pta Flashing logo location	$hara/sdcard/Twrp-Tool/Flash$e"
$likh "$pta Backup boot location	$hara/sdcard/Twrp-Tool/Backup$e"
$likh "$pta Backup recovery location	$hara/sdcard/Twrp-Tool/Backup$e"
$likh "$pta Unpack .img Location	$hara$HOME/Maruf/Port$e"
$likh "$pta Repack .img Location	$hara$HOME/Maruf/Port$e"
#$likh "$pila$e$e $HOME=/data/data/com.termux/files/home$e$e"
}

recovery_repack () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Repack | $rang
$image Recovery | $rang
cd ~
if [ -e Maruf ] || [ -e Maruf.zip ];then
$likh "$e$e$pila[+] $hara Wait your recovery repack$e$e"
cd ~
cd ~/Maruf/Port
chmod 777 .repackimg.sh
./.repackimg.sh
else
cd ~
wget
unzip Maruf.zip
$likh "$e$e$pila[+] $hara Wait your recovery repack$e$e"
cd ~
cd ~/Maruf/Port
chmod 777 .repackimg.sh
./.repackimg.sh
fi
cd ~/Maruf/Port
if [ -e image-new.img ];then
$likh "$e$e Your recovery successfully repacked$e$e"
im
else
$likh "$e$e Your recovery not repacked$e$e"
fi
}
	
boot_repack () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Repack-Boot | $rang
cd ~
if [ -e Maruf ] || [ -e Maruf.zip ];then
$likh "$e$e$pila[+] $hara Wait your boot repack$e$e"
cd ~
cd ~/Maruf/Port
chmod 777 .repackimg.sh
./.repackimg.sh
else
cd ~
wget
unzip Maruf.zip
$likh "$e$e$pila[+] $hara Wait your boot repack$e$e"
cd ~
cd ~/Maruf/Port
chmod 777 .repackimg.sh
./.repackimg.sh
fi
cd ~/Maruf/Port
if [ -e image-new.img ];then
$likh "$e$e Your boot successfully repacked$e$e"
im
else
$likh "$e$e Your boot not repacked$e$e"
fi
}
boot_unpack () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Unpack-Boot | $rang
echo
cd ~
if [ -e Maruf ] || [ -e Maruf.zip ];then
#unzp Maruf.zip > /dev/null 2>&1
$likh "$e$e $pila First copy boot.img in /data/data/com.termux/files/Maruf/Port$e$e"
$likh "$e $pila If copy boot.img press enter to unpack$e"
read
cd ~/Maruf/Port
chmod 777 .unpackimg.sh
./.unpackimg.sh
$likh "$lal"
#$likh "$e$hara Your Boot successfully unpack\n"
else
cd ~
$likh "$e$hara[+] $pila Downloading requirement....$e$e"
wget https://github.com/rooted-cyber/good/raw/master/Maruf.zip > /dev/null 2>&1
unzip Maruf.zip
clear
$likh "$e$e $pila First copy boot.img in /data/data/com.termux/files/Maruf/Port$e$e"
$likh "$e $pila If copy boot.img press enter to unpack$e"
read
cd ~/Maruf/Port
chmod 777 .unpackimg.sh
./.unpackimg.sh
$likh "$lal"
#$likh "$e$hara Your Boot successfully unpack\n"
fi
cd ~/Maruf/Port
if [ -e ramdisk ];then
$likh "$hara[+]$pila Successfully your boot unpack\n"
im
else
$likh "$lal Your boot is not unpacked !!!$e$e"
im
fi
}
	recovery_unpack () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Unpack | $rang
$image Recovery | $rang
echo
cd ~
if [ -e Maruf ] || [ -e Maruf.zip ];then
#unzp Maruf.zip > /dev/null 2>&1
$likh "$e$e $pila First copy recovery.img in /data/data/com.termux/files/home/Maruf/Port$e$e"
$likh "$e $pila If copy recovery.img press enter to unpack$e"
read
cd ~/Maruf/Port
chmod 777 .unpackimg.sh
./.unpackimg.sh
$likh "$lal"
#$likh "$e$hara Your Boot successfully unpack\n"
else
cd ~
$likh "$e$hara[+] $pila Downloading requirement....$e$e"
wget https://github.com/rooted-cyber/good/raw/master/Maruf.zip > /dev/null 2>&1
unzip Maruf.zip
clear
$likh "$e$e $pila First copy recovery.img in /data/data/com.termux/files/Maruf/Port$e$e"
$likh "$e $pila If copy recovery.img press enter to unpack$e"
read
cd ~/Maruf/Port
chmod 777 .unpackimg.sh
./.unpackimg.sh
$likh "$lal"
#$likh "$e$hara Your Boot successfully unpack\n"
fi
cd ~/Maruf/Port
if [ -e ramdisk ];then
$likh "$hara[+]$pila Successfully your recovery.img unpack\n"
im
else
$likh "$lal Your recovery.img is not unpacked !!!$e$e"
im
fi
}
	
recovery_backup () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Backup | $rang
$image Recovery | $rang
echo
cd ~
if [ -e Maruf ] || [ -e Maruf.zip ];then
#unzip Maruf.zip > /dev/null 2>&1
$likh "\n$pila [+] $hara Please wait some time....."
dd if=/dev/block/bootdevice/by-name/recovery of=/data/data/com.termux/files/home/Maruf/Port/recovery.img
cd ~/Maruf/port
chmod 777 .*.sh
./unpackimg.sh > /dev/null 2>&1
./repackimg.sh > /dev/null 2>&1
cp -f image-new.img /sdcard/Twrp-Tool/Backup
./.cleanup.sh
cd /sdcard/Twrp-Tool/Backup
mv image-new.img recovery.img
cd $HOME
#$likh "$pila [+] $hara Your Recovery Successfully backup in /sdcard/Twrp-Tool/Bacup"

else
$likh "$e$e $hara [+] $pila Please wait Downloading requirements....."
cd ~
wget https://github.com/rooted-cyber/good/raw/master/Maruf.zip > /dev/null 2>&1
unzip Maruf.zip
$likh "\n$pila [+] $hara Please wait some time....."
dd if=/dev/block/bootdevice/by-name/recovery of=/data/data/com.termux/files/home/Maruf/Port/recovery.img
cd ~/Maruf/port
chmod 777 .*.sh
./unpackimg.sh > /dev/null 2>&1
./repackimg.sh > /dev/null 2>&1
cp -f image-new.img /sdcard/Twrp-Tool/Backup
./.cleanup.sh
cd /sdcard/Twrp-Tool/Backup
mv image-new.img recovery.img
cd $HOME
fi
cd /sdcard/Twrp-Tool/Backup
if [ -e recovery.img ];then
$likh "$e$e$hara[√] $pila Successfully backuped your recovery\n\n"
im
else
$likh "$e$e$lal Your recovery not backuped$e$e"
im
fi
}
boot_backup () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Backup-Boot | $rang
echo
cd ~
if [ -e Maruf ] || [ -e Maruf.zip ];then
#unzip Maruf.zip > /dev/null 2>&1
$likh "\n$pila [+] $hara Please wait some time.....$e$e"
dd if=/dev/block/bootdevice/by-name/boot of=/data/data/com.termux/files/home/Maruf/Port/boot.img
cd ~/Maruf/port
chmod 777 .*.sh
./unpackimg.sh > /dev/null 2>&1
./repackimg.sh > /dev/null 2>&1
cp -f image-new.img /sdcard/Twrp-Tool/Backup
./.clean*
cd /sdcard/Twrp-Tool/Backup
mv image-new.img boot.img
cd $HOME
#$likh "$pila [+] $hara Your boot Successfully backup in /sdcard/Twrp-Tool/Bacup"

else
$likh "$e$e $hara [+] $pila Please wait Downloading requirements....."
cd ~
wget https://github.com/rooted-cyber/good/raw/master/Maruf.zip > /dev/null 2>&1
unzip Maruf.zip
$likh "\n$pila [+] $hara Please wait some time....."
dd if=/dev/block/bootdevice/by-name/boot of=/data/data/com.termux/files/home/Maruf/Port/boot.img
cd ~/Maruf/port
chmod 777 .*.sh
./unpackimg.sh > /dev/null 2>&1
./repackimg.sh > /dev/null 2>&1
cp -f image-new.img /sdcard/Twrp-Tool/Backup
./.clean*
cd /sdcard/Twrp-Tool/Backup
mv image-new.img boot.img
cd $HOME
#$likh "$pila [+] $hara Your boot Successfully backup in /sdcard/Twrp-Tool/Bacup"
fi
cd /sdcard/Twrp-Tool/Backup
if [ -e boot.img ];then
$likh "$e$e$hara[√] $pila Successfully backuped your boot\n\n"
im
else
$likh "$e$e$lal Your boot not backuped$e$e"
im
fi
}
	
unpack () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Unpack | $rang
$likh "$e"
$likh "	$lal [ 1 ]$pila Boot$e"
$likh "	$lal [ 2 ]$pila Recovery$e"
$likh "	$lal [ 3 ]$pila Back$e"
$likh "	$lal [ 4 ]$pila Home$e"
$likh "	$lal [ 5 ]$pila Exit$e$e$hara$e"
$likh %s " Select >> "
read kro
case $kro in
1)boot_unpack ;;
2)recovery_unpack ;;
3)Twrp ;;
4)Twrp ;;
5)im ;;
*)unpack ;;
esac
}
repack () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Repack | $rang
$likh "$e"
$likh "	$lal [ 1 ]$pila Boot$e"
$likh "	$lal [ 2 ]$pila Recovery$e"
$likh "	$lal [ 3 ]$pila Back$e"
$likh "	$lal [ 4 ]$pila Home$e"
$likh "	$lal [ 5 ]$pila Exit$e$e$hara$e"
$likh %s " Select >> "
read kro
case $kro in
1)boot_repack ;;
2)recovery_repack ;;
3)Twrp ;;
4)Twrp ;;
5)im ;;
*)repack ;;
esac
}
reboot2 () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Reboot | $rang
$likh "$e"
$likh "	$lal [ 1 ]$pila Normally reboot$e"
$likh "	$lal [ 2 ]$pila Power off$e"
$likh "	$lal [ 3 ]$pila Reboot into recovery$e"
$likh "	$lal [ 4 ]$pila Reboot into Bootloader$e"
$likh "	$lal [ 5 ]$pila Back$e$e$hara$e"
$likh %s " Select >> "
read kro
case $kro in
1)reboot ;;
2)reboot -p ;;
3)reboot recovery ;;
4)reboot bootloader ;;
5)Twrp ;;
*)reboot2 ;;
esac
}

backup () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Backup | $rang
$likh "$e"
$likh "	$lal [ 1 ]$pila Boot$e"
$likh "	$lal [ 2 ]$pila Recovery$e"
$likh "	$lal [ 3 ]$pila Logo$e"
$likh "	$lal [ 4 ]$pila Back$e"
$likh "	$lal [ 5 ]$pila Exit$e$e$hara$e"
$likh %s " Select >> "
read kro
case $kro in
1)boot_backup ;;
2)recovery_backup ;;
3)logo_backup ;;
4)Twrp ;;
5)im ;;
*)backup ;;
esac
}
boot_flash () {
	
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Flash-Boot | $rang
$likh "$e$e$pila Copy boot.img in /sdcard/Twrp-Tool/Flash$e$e"
$likh "$pila if already copy then press enter to flash"
read
cd /sdcard/Twrp-Tool/Flash
if [ -e boot.img ];then
dd if=/sdcard/Twrp-Tool/Flash/boot.img of=/dev/block/bootdevice/by-name/boot
$likh "$e$e$pila Successfully flash your boot$e$e"
im
else
$likh "$e$e$lal Please Copy boot.img and try again !!!$e$e"
fi
}
logo_flash () {
		lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Flash-Logo | $rang
$likh "$e$e$pila Copy splash.img in /sdcard/Twrp-Tool/Flash$e$e"
$likh "$pila if already copy then press enter to flash"
read
cd /sdcard/Twrp-Tool/Flash
if [ -e splash.img ];then
dd if=/sdcard/Twrp-Tool/Flash/splash.img of=/dev/block/bootdevice/by-name/splash
$likh "$e$e$pila Successfully flash your logo$e$e"
im
else
$likh "$e$e$lal Please Copy splash.img and try again !!!$e$e"
fi
}

recovery_flash () {
	
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Flash | $rang
$image Recovery | $rang
$likh "$e$e$pila Copy recovery.img in /sdcard/Twrp-Tool/Flash$e$e"
$likh "$pila if already copy then press enter to flash"
read
cd /sdcard/Twrp-Tool/Flash
if [ -e recovery.img ];then
dd if=/sdcard/Twrp-Tool/Flash/recovery.img of=/dev/block/bootdevice/by-name/recovery
$likh "$e$e$pila Successfully flash your recovery$e$e"
im
else
$likh "$e$e$lal Please Copy recovery.img and try again !!!$e$e"
fi
}

flash () {
	lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
gul="\033[95m"
pta="\033[96m"
likh="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image Flash | $rang
$likh "$e"
$likh "	$lal [ 1 ]$pila Boot$e"
$likh "	$lal [ 2 ]$pila Recovery$e"
$likh "	$lal [ 3 ]$pila Logo$e"
$likh "	$lal [ 4 ]$pila Back$e"
$likh "	$lal [ 5 ]$pila Exit$e$e$hara$e"
$likh %s " Select >> "
read kro
case $kro in
1)boot_flash ;;
2)recovery_flash ;;
3)logo_flash ;;
4)Twrp ;;
5)im ;;
*)flash ;;
esac
}
if [ -e $PREFIX/bin/Twrp ];then
echo
else
lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
maro="sleep"
gul="\033[95m"
pta="\033[96m"
li="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
clear
$image setup | $rang
$li "$e$e$har [-]$pila Requirements installing.....$e"
apt upgrade
apt update
apt install figlet
apt install wget
apt install toilet
apt install tsu
clear
$li "$e$e [+] $pta setuping Twrp-Tool....$e"
mkdir /sdcard/Twrp-Tool
mkdir /sdcard/Twrp-Tool/Backup
mkdir /sdcard/Twrp-Tool/Flash
cd ~/Twrp-Tool
cp -f Twrp $PREFIX/bin
chmod 777 $PREFIX/bin/Twrp
clear
$li "$e$e Successfully installed$e$e $pila Now you can use this command Twrp$e$e"
fi








lal="\033[91m"
hara="\033[92m"
pila="\033[93m"
bulu="\033[94m"
maro="sleep"
gul="\033[95m"
pta="\033[96m"
li="printf"
e="\n"
image="figlet"
rang="toilet -f term -F gay"
if [ -f /system/bin/su ];then
echo
else
printf "$lal$e$e Your phone is not root$e$e"
printf "$lal Please root your phone and try this !!!$e$e"
$maro 2
fi

$image Twrp | $rang
$li "$e"
$li "	$lal [ 1 ]$pila Flashing$e"
$li "	$lal [ 2 ]$pila Backup$e"
$li "	$lal [ 3 ]$pila Reboot$e"
$li "	$lal [ 4 ]$pila Unpack .img$e"
$li "	$lal [ 5 ]$pila Repack .img$e"
$li "	$lal [ 6 ]$pila Help$e"
$li "	$lal [ 7 ]$pila Update Tool$e"
$li "	$lal [ 8 ]$pila Exit$e$e"
$li "$pta"
$li %s" Select >> "
read t
case $t in
1)flash ;;
2)backup ;;
3)reboot2 ;;
4)unpack ;;
5)repack ;;
6)helpp ;;
7)update ;;
8)im ;;
*)Twrp ;;
esac
