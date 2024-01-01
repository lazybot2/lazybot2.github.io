#!/bin/bash
name="/www/wwwroot/lazybot.vip/ipa/ipa/"
savelog="./Byte.log"
echo -e "\nStart\n" >> $savelog
#name="./ipa/"
saves="./"
savee="/fish"
ipa=("fish830.ipa")
for i in ${ipa[@]}
do
	if [ -f $name$i ];then
	 # echo "$name$i文件存在"
		if [ ! -d $saves$i$savee ];then
		     Filesize=`du -b $name$i | awk '{print $1}'` 
		     if [ $Filesize -gt 0 ];then 
		        mkdir -p $saves$i$savee
		        ./fishfile $name$i $saves$i$savee
		        
			echo "$saves$i = $Filesize  " >> $savelog
		     else
			echo "$name$i = 0 Byte"
		     fi 
		else
		  echo "$saves$i$savee已经存在"
		fi	
	else
	  echo "$name$i文件不存在"
	fi

done



echo -e "\nEnd\n" >> $savelog


