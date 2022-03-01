#!/bin/sh

FILE_CONF_LIST=
FILE_CONF=
FILE_BIN=
FILE_BIN_LIST=


#set_bin_file_falg=
set_conf_file_falg=1


#===================================================================set bin file========================================================================
if [ -n "$set_bin_file_falg" ]
then
#begin set bin file


#create panda's link file for alt+f2 useing
FILE_BIN=/usr/bin/panda
if [ -n "$FILE_BIN_LIST"  ]
then
    FILE_BIN_LIST="$FILE_CONF_LIST $FILE_BIN"
else
    FILE_BIN_LIST="$FILE_BIN"
fi

if [ ! -f "$FILE_BIN" ]
then
    sudo ln -sf /home/ming/app/panda5.3.1-x86_64.appimage /usr/bin/panda
    echo -e "create link file : $FILE_BIN --> /home/ming/app/panda5.3.1-x86_64.appimage"
else
    echo -e "$FILE_BIN is exist!!!!"
fi






#end set bin file
fi
#====================================================end set bin file========================================================================


#====================================================start set conf file=======================================================================


if [ -n "$set_conf_file_falg" ]
then
#begin set conf file

#1.for testing install.sh'function(add content to file)
FILE_CONF=/home/ming/test/aaaa.txt
if [ -n "$FILE_CONF_LIST"  ]
then
    FILE_CONF_LIST="$FILE_CONF_LIST $FILE_CONF"
else
    FILE_CONF_LIST="$FILE_CONF"
fi
if [ -f "$FILE_CONF"   ] && [ ! -f "$FILE_CONF.auto_bak" ] 
then
    cp "$FILE_CONF" "$FILE_CONF.auto_bak"
fi
cat >> "$FILE_CONF" << EOF

EOF


#end conf file set
fi
#=======================================================end set conf file================================================================

echo -e "FILE_BIN_LIST : $FILE_BIN_LIST"
echo -e "FILE_CONF_LIST : $FILE_CONF_LIST"



