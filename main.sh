# ---------------------------| Code by Adesh starts |---------------------------
# Luhn's algorithm
function is_valid_luhn_check() {
    i=0
    sum=0
    tmp="$1"
    while [ $tmp -gt 0 ]
    do
        add=$((tmp % 10))
        tmp=$((tmp / 10))
        if [ $((i % 2)) -eq 1 ]
        then
            add=$((add * 2))
            add=$((add % 10 + add / 10))
        fi
        sum=$((sum + add))
        i=$((i + 1))
    done
    if [ $((sum % 10)) -eq 0 ]
    then
        return 1
    else
        return 0
    fi
}
# ----------------------------| Code by Adesh ends |----------------------------

# ---------------------------| Code by Aarya starts |---------------------------
# Check whether all are valid numeric characters using regex
function is_integer() {
    regex_integer='^[0-9]+$'
    if [[ $1 =~ $regex_integer ]]
    then
        return 1
    else
        return 0
    fi
}
# ----------------------------| Code by Aarya ends |----------------------------

# ---------------------------| Code by Adesh starts |---------------------------
# Company name of valid credit card numbers (if any) using regex
function cc_type() {
    echo "$1" | awk '/^3[47][0-9]{13}$/{printf " => American Express"}'
    # echo "$1" | awk '/^(6541|6556)[0-9]{12}$/{printf " => BC Global"}'
    # echo "$1" | awk '/^(62|81){14,17}$/{printf " => China Union Pay"}'
    # echo "$1" | awk '/^389[0-9]{11}$/{printf " => Diners Club Carte Blanche"}'
    # echo "$1" | awk '/^3(?:0[0-5]|[68][0-9])[0-9]{11}$/{printf " => Diners Club"}'
    echo "$1" | awk '/^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$/{printf " => Discover"}'
    echo "$1" | awk '/^63[7-9][0-9]{13}$/{printf " => InstaPayment"}'
    echo "$1" | awk '/^(?:2131|1800|35[0-9]{3})[0-9]{11}$/{printf " => JCB"}'
    # echo "$1" | awk '/^9[0-9]{15}$/{printf " => KoreanLocalCard"}'
    echo "$1" | awk '/^(6304|6706|6709|6771)[0-9]{12,15}$/{printf " => Laser"}'
    # echo "$1" | awk '/^(5018|5020|5038|5893|6304|6759|6761|6762|6763)[0-9]{8,15}$/{printf " => Maestro"}'
    echo "$1" | awk '/^5[1-5][0-9]{14}$/{printf " => Mastercard"}'
    echo "$1" | awk '/^(6334|6767)[0-9]{12}|(6334|6767)[0-9]{14}|(6334|6767)[0-9]{15}$/{printf " => Solo"}'
    echo "$1" | awk '/^(4903|4905|4911|4936|6333|6759)[0-9]{12}|(4903|4905|4911|4936|6333|6759)[0-9]{14}|(4903|4905|4911|4936|6333|6759)[0-9]{15}|564182[0-9]{10}|564182[0-9]{12}|564182[0-9]{13}|633110[0-9]{10}|633110[0-9]{12}|633110[0-9]{13}$/{printf " => Switch"}'
    echo "$1" | awk '/^(62|81)[0-9]{14,17}$/{printf " => UnionPay"}'
    echo "$1" | awk '/^4[0-9]{12}([0-9]{3})?$/{printf " => Visa"}'
    # echo "$1" | awk '/^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14})$/{printf " => Visa Master"}'
    echo ""
}

# Output function
function credit_card() {
    is_integer "$1"
    if [ $? -eq 0 ]
    then
        echo "NaN"
    else
        is_valid_luhn_check "$1"
        if [ $? -eq 1 ]
        then
            echo -n "VALID"
            cc_type "$1"
        else
            echo "INVALID"
        fi
    fi
}
# ----------------------------| Code by Adesh ends |----------------------------

# ---------------------------| Code by Aarya starts |---------------------------
function main() {
    # gawk dependency
    gawk -Wversion  >/dev/null 2>&1 || {
        sudo apt-get install gawk
	    clear
    }
    
    # CLAs
    for var in "$@"
    do
        if [ -f "$var" ]
        then
            while IFS= read -r line
            do
                credit_card "$line"
            done < "$var"
        else
            credit_card "$var"
        fi
    done
}

main "$@"
# ----------------------------| Code by Aarya ends |----------------------------
