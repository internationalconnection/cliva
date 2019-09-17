#!/bin/bash
# GH0STN3T Family Present
# Apple Valid Checker 2019
# 25 February 2019

RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m' 
PUR='\033[0;35m'
GRN="\e[32m"
WHI="\e[37m"
NC='\033[0m'
echo ""
printf "$RED ███▓███████▓▓╬╬╬╬╬╬╬╬╬╬╬╬▓███▓▓▓▓█▓╬╬╬▓█ \n"
printf "$RED ███████▓█████▓▓╬╬╬╬╬╬╬╬▓███▓╬╬╬╬╬╬╬▓╬╬▓█ \n"
printf "$RED ████▓▓▓▓╬╬▓█████╬╬╬╬╬╬███▓╬╬╬╬╬╬╬╬╬╬╬╬╬█ \n"
printf "$RED ███▓▓▓▓╬╬╬╬╬╬▓██╬╬╬╬╬╬▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█ \n"
printf "$RED ███▓█▓███████▓▓███▓╬╬╬╬╬╬▓███████▓╬╬╬╬▓█ \n"
printf "$RED ████████████████▓█▓╬╬╬╬╬▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬█ \n"
printf "$RED ███▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█ \n"
printf "$RED █████▓▓▓▓▓▓▓██▓▓▓█▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██ \n"
printf "$WHI ████▓█▓▓▓▓██▓▓▓▓██╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬██ \n"
printf "$WHI █████▓███▓▓▓▓▓▓▓▓████▓▓╬╬╬╬╬╬╬█▓╬╬╬╬╬▓██ \n"
printf "$WHI █████▓▓█▓███▓▓▓████╬▓█▓▓╬╬╬▓▓█▓╬╬╬╬╬╬███ \n"
printf "$WHI ██████▓██▓███████▓╬╬╬▓▓╬▓▓██▓╬╬╬╬╬╬╬▓███ \n"
printf "$WHI ███████▓██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╬╬╬╬╬╬╬╬╬╬╬████ \n"
printf "$WHI ████████▓▓▓█████▓▓╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬╬▓█████ \n"
printf "$NC\n"
cat <<EOF
             -Challenger Deep Hacker Organization -
          [+] GH0STN3T [+]
        
---------------------------------------------------
   Retjeh Team Family - AppleID Validator 2019
---------------------------------------------------

EOF

usage() { 
  echo "Usage: ./myscript.sh COMMANDS: [-i <list.txt>] [-r <folder/>] [-l {1-1000}] [-t {1-10}] OPTIONS: [-d] [-c]

Command:
-i (20k-US.txt)     File input that contain email to check
-r (result/)        Folder to store the result live.txt and die.txt
-l (60|90|110)      How many list you want to send per delayTime
-t (3|5|8)          Sleep for -t when check is reach -l fold

Options:
-d                  Delete the list from input file per check
-c                  Compress result to compressed/ folder and
                    move result folder to haschecked/
-h                  Show this manual to screen
-u                  Check integrity file then updatef

Report any bugs to: <GH0STN3T> contact@boyfernanda.id
"
  exit 1 
}

# Assign the arguments for each
# parameter to global variable
while getopts ":i:r:l:t:dchu" o; do
    case "${o}" in
        i)
            inputFile=${OPTARG}
            ;;
        r)
            targetFolder=${OPTARG}
            ;;
        l)
            sendList=${OPTARG}
            ;;
        t)
            perSec=${OPTARG}
            ;;
        d)
            isDel='y'
            ;;
        c)
            isCompress='y'
            ;;
        h)
            usage
            ;;
        u)
            updater "manual"
            ;;
    esac
done

# Do automatic update
# before passing arguments
echo "[+] Doing an automatic update from server gh0stn3t.com on `date`"

if [[ $inputFile == '' || $targetFolder == '' || $sendList == '' || $perSec == '' ]]; then
  cli_mode="interactive"
else
  cli_mode="interpreter"
fi

# Assign false value boolean
# to both options when its null
if [ -z "${isDel}" ]; then
  isDel='n'
fi

if [ -z "${isCompress}" ]; then
  isCompress='n'
fi

SECONDS=0

# Asking user whenever the
# parameter is blank or null
if [[ $inputFile == '' ]]; then
  # Print available file on
  # current folder
  # clear
  read -p "Enter mailist file: " inputFile
fi

#if [[ $targetFolder == '' ]]; then
#  read -p "Enter target folder: " targetFolder
  # Check if result folder exists
  # then create if it didn't
 # if [[ ! -d "$targetFolder" ]]; then
 #  echo "[+] Creating $targetFolder/ folder"
 # mkdir $targetFolder
 # else
 #   read -p "$targetFolder/ folder are exists, append to them ? [y/n]: " isAppend
   # if [[ $isAppend == 'n' ]]; then
  #    exit
 #   fi
 # fi
#else
#  if [[ ! -d "$targetFolder" ]]; then
#    echo "[+] Creating $targetFolder/ folder"
#    mkdir $targetFolder
#  fi
#fi

if [[ $isDel == '' || $cli_mode == 'interactive' ]]; then
  read -p "Delete list per check ? [y/n]: " isDel
fi

if [[ $isCompress == '' || $cli_mode == 'interactive' ]]; then
  read -p "Compress the result ? [y/n]: " isCompress
fi

if [[ $sendList == '' ]]; then
  read -p "How many list send: " sendList
fi

if [[ $perSec == '' ]]; then
  read -p "Delay time: " perSec
fi

malhadi_appleval() {
  SECONDS=0

  check=`curl 'https://appleid.apple.com/account/validation/appleid' -H 'scnt: '$scnt'' -H 'Origin: https://appleid.apple.com' -H 'Accept-Encoding: gzip, deflate, br' -H 'X-Apple-I-FD-Client-Info: {"U":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36","L":"en-US","Z":"GMT+08:00","V":"1.1","F":"sWa44j1e3NlY5BSo9z4ofjb75PaK4Vpjt3Q9cUVlOrXTAxw63UYOKES5jfzmkflJfmczl998tp7ppfAaZ6m1CdC5MQjGejuTDRNziCvTDfWk3qwyWEQEe6qgXK_Pmtd0SHp815LyjaY2.rINj.rINYOK0UjVsYUMnGWFfwMHDCQyG5me6sBLSsbXzU0l6sqKIrGfuzwg9wK9weEwHXXTSHCSPmtd0wVYPIG_qvoPfybYb5EvYTrYesR0CjEcIqnuWxf7_OLgiPFMtrs1OeyjaY2_GGEQIgwe98vDdYejftckuyPBDjaY2ftckZZLQ084akJlJWu_uWA16fUfR0odm_dhrxbuJjkWxv5iJ6KVg8cGYiKY.6elV2pN9csgdmX3ivm_Ud_UeAwHCSFQ_0pNvS_MNJZNlY5DuV25BNnOVgw24uy.CfT"}' -H 'Accept-Language: en-US,en;q=0.9,id;q=0.8,fr;q=0.7,la;q=0.6' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: idclient=web; dslang=US-EN; site=USA; aidsp='$sessionId'; ccl=OXqm9r6b+jMZIrOKHBgGZQ==; geo=ID' -H 'Connection: keep-alive' -H 'X-Apple-Api-Key: '$apiKey'' -H 'X-Apple-ID-Session-Id: '$sessionId'' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' -H 'Content-Type: application/json' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://appleid.apple.com/account' -H 'X-Apple-Request-Context: create' --data-binary '{"emailAddress":"'$1'"}' --compressed -D - -s`
  # check=`curl --proxy 138.185.236.226 'https://appleid.apple.com/account/validation/appleid' -H 'scnt: '$scnt'' -H 'Origin: https://appleid.apple.com' -H 'Accept-Encoding: gzip, deflate, br' -H 'X-Apple-I-FD-Client-Info: {"U":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36","L":"en-US","Z":"GMT+08:00","V":"1.1","F":"sWa44j1e3NlY5BSo9z4ofjb75PaK4Vpjt3Q9cUVlOrXTAxw63UYOKES5jfzmkflJfmczl998tp7ppfAaZ6m1CdC5MQjGejuTDRNziCvTDfWk3qwyWEQEe6qgXK_Pmtd0SHp815LyjaY2.rINj.rINYOK0UjVsYUMnGWFfwMHDCQyG5me6sBLSsbXzU0l6sqKIrGfuzwg9wK9weEwHXXTSHCSPmtd0wVYPIG_qvoPfybYb5EvYTrYesR0CjEcIqnuWxf7_OLgiPFMtrs1OeyjaY2_GGEQIgwe98vDdYejftckuyPBDjaY2ftckZZLQ084akJlJWu_uWA16fUfR0odm_dhrxbuJjkWxv5iJ6KVg8cGYiKY.6elV2pN9csgdmX3ivm_Ud_UeAwHCSFQ_0pNvS_MNJZNlY5DuV25BNnOVgw24uy.CfT"}' -H 'Accept-Language: en-US,en;q=0.9,id;q=0.8,fr;q=0.7,la;q=0.6' -H 'X-Requested-With: XMLHttpRequest' -H 'Cookie: idclient=web; dslang=US-EN; site=USA; aidsp='$sessionId'; ccl=OXqm9r6b+jMZIrOKHBgGZQ==; geo=ID' -H 'Connection: keep-alive' -H 'X-Apple-Api-Key: '$apiKey'' -H 'X-Apple-ID-Session-Id: '$sessionId'' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' -H 'Content-Type: application/json' -H 'Accept: application/json, text/javascript, */*; q=0.01' -H 'Referer: https://appleid.apple.com/account' -H 'X-Apple-Request-Context: create' --data-binary '{"emailAddress":"'$1'"}' --compressed -D - -s`
  duration=$SECONDS
  header="`date +%H:%M:%S` from $inputFile to $targetFolder"
  footer="[GH0STN3T - AppleValid 2019] $(($duration % 60))sec.\n"
  val="$(echo "$check" | grep -c 'used" : true')"
  inv="$(echo "$check" | grep -c 'used" : false')"
  bad="$(echo "$check" | grep -c 'valid" : false')"
  icl="$(echo "$check" | grep -c 'appleOwnedDomain" : true')"

  if [[ $val > 0 || $icl > 0 ]]; then
    printf "[$header] $2/$3. ${CYAN}LIVE => $1 ${NC} $footer"
    echo "LIVE => $1" >> $4/live.txt
  else
    if [[ $inv > 0 || $bad > 0 ]]; then
      printf "[$header] $2/$3. ${PUR}DIE => $1 ${NC} $footer"
      echo "DIE => $1" >> $4/die.txt
    else
      printf "[$header] $2/$3. ${WHI}UNKNOWN => $1 ${NC} $footer"
      echo "$1 => $check" >> reason.txt
      echo "UNKNOWN => $1" >> $inputFile
    fi
  fi

  printf "\r"
}

malhadi_appleval_second() {
  SECONDS=0

random=$(echo $(shuf -i 0-999999 -n 1))
  SECONDS=2
  declare -A countryCodeList=( [AF]="Afghanistan" [AX]="Aland Islands" [AL]="Albania" [DZ]="Algeria" [AS]="American Samoa" [AD]="Andorra" [AO]="Angola" [AI]="Anguilla" [AQ]="Antarctica" [AG]="Antigua and Barbuda" [AR]="Argentina" [AM]="Armenia" [AW]="Aruba" [AU]="Australia" [AT]="Austria" [AZ]="Azerbaijan" [BS]="Bahamas" [BH]="Bahrain" [BD]="Bangladesh" [BB]="Barbados" [BY]="Belarus" [BE]="Belgium" [BZ]="Belize" [BJ]="Benin" [BM]="Bermuda" [BT]="Bhutan" [BO]="Bolivia, Plurinational State of" [BQ]="Bonaire, Sint Eustatius and Saba" [BA]="Bosnia and Herzegovina" [BW]="Botswana" [BV]="Bouvet Island" [BR]="Brazil" [IO]="British Indian Ocean Territory" [BN]="Brunei Darussalam" [BG]="Bulgaria" [BF]="Burkina Faso" [BI]="Burundi" [KH]="Cambodia" [CM]="Cameroon" [CA]="Canada" [CV]="Cape Verde" [KY]="Cayman Islands" [CF]="Central African Republic" [TD]="Chad" [CL]="Chile" [CN]="China Domestic" [C2]="China International" [CX]="Christmas Island" [CC]="Cocos (Keeling) Islands" [CO]="Colombia" [KM]="Comoros" [CG]="Congo" [CD]="Congo, The Democratic Republic of the" [CK]="Cook Islands" [CR]="Costa Rica" [CI]="Cote d'Ivoire" [HR]="Croatia" [CU]="Cuba" [CW]="Curacao" [CY]="Cyprus" [CZ]="Czech Republic" [DK]="Denmark" [DJ]="Djibouti" [DM]="Dominica" [DO]="Dominican Republic" [EC]="Ecuador" [EG]="Egypt" [SV]="El Salvador" [GQ]="Equatorial Guinea" [ER]="Eritrea" [EE]="Estonia" [ET]="Ethiopia" [FK]="Falkland Islands (Malvinas)" [FO]="Faroe Islands" [FJ]="Fiji" [FI]="Finland" [FR]="France" [GF]="French Guiana" [PF]="French Polynesia" [TF]="French Southern Territories" [GA]="Gabon" [GM]="Gambia" [GE]="Georgia" [DE]="Germany" [GH]="Ghana" [GI]="Gibraltar" [GR]="Greece" [GL]="Greenland" [GD]="Grenada" [GP]="Guadeloupe" [GU]="Guam" [GT]="Guatemala" [GG]="Guernsey" [GN]="Guinea" [GW]="Guinea-Bissau" [GY]="Guyana" [HT]="Haiti" [HM]="Heard Island and McDonald Islands" [VA]="Holy See (Vatican City State)" [HN]="Honduras" [HK]="Hong Kong" [HU]="Hungary" [IS]="Iceland" [IN]="India" [ID]="Indonesia" [IR]="Iran, Islamic Republic of" [IQ]="Iraq" [IE]="Ireland" [IM]="Isle of Man" [IL]="Israel" [IT]="Italy" [JM]="Jamaica" [JP]="Japan" [JE]="Jersey" [JO]="Jordan" [KZ]="Kazakhstan" [KE]="Kenya" [KI]="Kiribati" [KP]="Korea, Democratic People's Republic of" [KR]="Korea, Republic of" [KW]="Kuwait" [KG]="Kyrgyzstan" [LA]="Lao People's Democratic Republic" [LV]="Latvia" [LB]="Lebanon" [LS]="Lesotho" [LR]="Liberia" [LY]="Libya" [LI]="Liechtenstein" [LT]="Lithuania" [LU]="Luxembourg" [MO]="Macao" [MK]="Macedonia, The Former Yugoslav Republic of" [MG]="Madagascar" [MW]="Malawi" [MY]="Malaysia" [MV]="Maldives" [ML]="Mali" [MT]="Malta" [MH]="Marshall Islands" [MQ]="Martinique" [MR]="Mauritania" [MU]="Mauritius" [YT]="Mayotte" [MX]="Mexico" [FM]="Micronesia, Federated States of" [MD]="Moldova, Republic of" [MC]="Monaco" [MN]="Mongolia" [ME]="Montenegro" [MS]="Montserrat" [MA]="Morocco" [MZ]="Mozambique" [MM]="Myanmar" [NA]="Namibia" [NR]="Nauru" [NP]="Nepal" [NL]="Netherlands" [NC]="New Caledonia" [NZ]="New Zealand" [NI]="Nicaragua" [NE]="Niger" [NG]="Nigeria" [NU]="Niue" [NF]="Norfolk Island" [MP]="Northern Mariana Islands" [NO]="Norway" [OM]="Oman" [PK]="Pakistan" [PW]="Palau" [PS]="Palestine, State of" [PA]="Panama" [PG]="Papua New Guinea" [PY]="Paraguay" [PE]="Peru" [PH]="Philippines" [PN]="Pitcairn" [PL]="Poland" [PT]="Portugal" [PR]="Puerto Rico" [QA]="Qatar" [RE]="Reunion" [RO]="Romania" [RU]="Russian Federation" [RW]="Rwanda" [BL]="Saint Barthelemy" [SH]="Saint Helena, Ascension and Tristan Da Cunha" [KN]="Saint Kitts and Nevis" [LC]="Saint Lucia" [MF]="Saint Martin (French part)" [PM]="Saint Pierre and Miquelon" [VC]="Saint Vincent and the Grenadines" [WS]="Samoa" [SM]="San Marino" [ST]="Sao Tome and Principe" [SA]="Saudi Arabia" [SN]="Senegal" [RS]="Serbia" [SC]="Seychelles" [SL]="Sierra Leone" [SG]="Singapore" [SX]="Sint Maarten (Dutch part)" [SK]="Slovakia" [SI]="Slovenia" [SB]="Solomon Islands" [SO]="Somalia" [ZA]="South Africa" [GS]="South Georgia and the South Sandwich Islands" [SS]="South Sudan" [ES]="Spain" [LK]="Sri Lanka" [SD]="Sudan" [SR]="Suriname" [SJ]="Svalbard and Jan Mayen" [SZ]="Swaziland" [SE]="Sweden" [CH]="Switzerland" [SY]="Syrian Arab Republic" [TW]="Taiwan, Province of China" [TJ]="Tajikistan" [TZ]="Tanzania, United Republic of" [TH]="Thailand" [TL]="Timor-Leste" [TG]="Togo" [TK]="Tokelau" [TO]="Tonga" [TT]="Trinidad and Tobago" [TN]="Tunisia" [TR]="Turkey" [TM]="Turkmenistan" [TC]="Turks and Caicos Islands" [TV]="Tuvalu" [UG]="Uganda" [UA]="Ukraine" [AE]="United Arab Emirates" [GB]="United Kingdom" [UK]="United Kingdom" [US]="United States" [UM]="United States Minor Outlying Islands" [UY]="Uruguay" [UZ]="Uzbekistan" [VU]="Vanuatu" [VE]="Venezuela, Bolivarian Republic of" [VN]="Viet Nam" [VG]="Virgin Islands, British" [VI]="Virgin Islands, U.S." [WF]="Wallis and Futuna" [EH]="Western Sahara" [YE]="Yemen" [ZM]="Zambia" [ZW]="Zimbabwe" )
  ambil=$(curl -s --compressed --cookie ${random}_tmp "https://iforgot.apple.com/password/verify/appleid" -L \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' \
  -H 'Accept: application/json, text/javascript, */*; q=0.01' \
  -H 'Accept-Language: en-US,en;q=0.5' \
  -H 'Referer: https://iforgot.apple.com/password/verify/appleid' \
  -H 'Accept-Encoding: gzip, deflate, br' \
  -H 'Content-Type: application/json' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'Connection: keep-alive' \
  --data '{"id":"'$1'"}')
  duration=$SECONDS
  getresult=$(echo $ambil | grep -Po '(?<="supportsUnlock" : )[^,]*')
  countryCode=$(echo $ambil | grep -Po '(?<="countryCode" : )[^,]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{\|}\)//g')
  if [[ ! -d result ]]; then
  mkdir result
  touch result/live.txt
  touch result/livecountry.txt
  touch result/die.txt
fi
  if [[ $ambil =~ "countryCode" ]]; then
    country=${countryCodeList[$countryCode]}
    printf "[\e[38;5;82mLIVE${CYAN}] \e[38;5;82m[$country] \e[38;5;82m($countryCode) \e[38;5;82m$1 ${CYAN}[GH0STN3T]\n"
    echo "LIVE => $1 [$country] ($countryCode)">>result/livecountry.txt
  elif [[ $getresult =~ "false" ]]; then
    printf "[\e[38;5;82mLIVE${CYAN}]\e[38;5;82m \e[38;5;82m$1 ${CYAN}[GH0STN3T]\n"
    echo "LIVE => $1">>result/live.txt
  else
    printf "${RED}[DIE] $1 ${PUR}[GH0STN3T]${NC}\n"
    echo "DIE => $1">>result/die.txt
  fi

  printf "\r"
}

if [[ ! -f $inputFile ]]; then
  echo "[404] File mailist not found. Check your mailist file name."
  ls -l
  exit
fi

# Preparing file list 
# by using email pattern 
# every line in $inputFile
echo "[+] Cleaning your mailist file"
grep -Eiorh '([[:alnum:]_.-]+@[[:alnum:]_.-]+?\.[[:alpha:].]{2,6})' $inputFile | tr '[:upper:]' '[:lower:]' | sort | uniq > temp_list && mv temp_list $inputFile

# Finding match mail provider
echo "########################################"
# Print total line of mailist
totalLines=`grep -c "@" $inputFile`
echo "There are $totalLines of list."
echo " "
echo "Hotmail: `grep -c "@hotmail" $inputFile`"
echo "Yahoo: `grep -c "@yahoo" $inputFile`"
echo "Gmail: `grep -c "@gmail" $inputFile`"
echo "########################################"

# Extract email per line
# from both input file
IFS=$'\r\n' GLOBIGNORE='*' command eval  'mailist=($(cat $inputFile))'
con=1

getKey() {
  echo "Generating token now. Please wait..."
  wait
  resp=`curl 'https://appleid.apple.com/account' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' -H 'Connection: keep-alive' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9,id;q=0.8,fr;q=0.7,la;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' --compressed -D - -s -o /dev/null`
  scnt="$(echo "$resp" | grep "scnt: " | cut -c7- | xargs)"
  sessionId="$(echo "$resp" | grep "aidsp" | awk -F[=\;] '{print $2}' | xargs)"
  apiKey='cbf64fd6843ee630b463f358ea0b707b'

  # echo "$resp"
  # echo "SCNT: $scnt"
  # echo "SESSIONID: $sessionId"

  if [[ $scnt == '' || $sessionId == '' || $apiKey = '' ]]; then
    echo "IP Blocked by Apple."
    sleep 20
    getKey
    sleep 2
  fi
}

# getKey


sendList="5"
perSec="4"
echo "[+] Script forced to use default ratio."
echo "[+] Sending $sendList email per $perSec seconds"

for (( i = 0; i < "${#mailist[@]}"; i++ )); do
  username="${mailist[$i]}"
  indexer=$((con++))
  tot=$((totalLines--))
  fold=`expr $i % $sendList`
  if [[ $fold == 0 && $i > 0 ]]; then
    header="`date +%H:%M:%S`"
    duration=$SECONDS
    echo "[$header] Waiting $perSec second. $(($duration / 3600 / 24)) day $(($duration / 3600 % 24)) hours $(($duration / 60 % 60)) minutes $(($duration % 60)) seconds elapsed, With $sendList req / $perSec seconds."
    sleep $perSec
  fi
  # vander=`expr $i % 9`
  # if [[ $vander == 0 && $i > 0 ]]; then
    # getKey
  # fi
  
  # malhadi_appleval "$username" "$indexer" "$tot" "$targetFolder" "$inputFile" &
  malhadi_appleval_second "$username" "$indexer" "$tot" "$targetFolder" "$inputFile" &

  if [[ $isDel == 'y' ]]; then
    grep -v -- "$username" $inputFile > "$inputFile"_temp && mv "$inputFile"_temp $inputFile
  fi
done 

# waiting the background process to be done
# then checking list from garbage collector
# located on $targetFolder/unknown.txt
echo "[+] Waiting background process to be done"
wait
wc -l $targetFolder/*

if [[ $isCompress == 'y' ]]; then
  tgl=`date`
  tgl=${tgl// /-}
  zipped="$targetFolder-$tgl.zip"

  echo "[+] Compressing result"
  zip -r "compressed/$zipped" "$targetFolder/die.txt" "$targetFolder/live.txt"
  echo "[+] Saved to compressed/$zipped"
  mv $targetFolder haschecked
  echo "[+] $targetFolder has been moved to haschecked/"
fi
#rm $inputFile
duration=$SECONDS
echo "$(($duration / 3600)) hours $(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."
echo "+==========+ GH0STN3T Family - Applevalid 2019 - BoyFernanda +==========+"
