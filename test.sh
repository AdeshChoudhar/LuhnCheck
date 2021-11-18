# ---------------------------| Code by Adesh starts |---------------------------
# Custom assert function
assert_eq() {
    actual=$(bash main.sh $2)
    expected="$3"
    
    if [[ $actual == $expected ]]
    then
        echo -e "[\u2714] TEST #$1: $(tput setaf 2)PASSED$(tput sgr 0)"
    else
        echo -e "[\u2718] TEST #$1: $(tput setaf 1)FAILED$(tput sgr 0)"
    fi
}

# VALID
assert_eq "VALID_1" 49927398716 "VALID"
assert_eq "VALID_2" 1234567812345670 "VALID"
assert_eq "VALID_3" 79927398713 "VALID" 

# INVALID
assert_eq "INVALID_1" 49927398717 "INVALID"
assert_eq "INVALID_2" 1234567812345678 "INVALID"
assert_eq "INVALID_3" 79927398712 "INVALID" 

# NaN
assert_eq "NaN_1" a4003600000000014 "NaN"
assert_eq "NaN_2" 4a9927398716 "NaN"
assert_eq "NaN_3" 1234567812345670a "NaN"
assert_eq "NaN_4" _79927398713 "NaN"

# American Express
assert_eq "AmericanExpress_1" 347571636156806 "VALID => American Express"
assert_eq "AmericanExpress_2" 377036232435205 "VALID => American Express"
assert_eq "AmericanExpress_3" 374197920072735 "VALID => American Express"
assert_eq "AmericanExpress_4" 375574791720551 "VALID => American Express"
assert_eq "AmericanExpress_5" 373358392226610 "VALID => American Express"
assert_eq "AmericanExpress_6" 346316752599772 "VALID => American Express"
assert_eq "AmericanExpress_7" 344041360537236 "VALID => American Express"
assert_eq "AmericanExpress_8" 348231182911059 "VALID => American Express"
assert_eq "AmericanExpress_9" 373494112650142 "VALID => American Express"
assert_eq "AmericanExpress_10" 371446341289904 "VALID => American Express"

# Discover

assert_eq "Discover_1" 6011051051967294 "VALID => Discover"
assert_eq "Discover_2" 6011286839558144 "VALID => Discover"
assert_eq "Discover_3" 6011896529047289 "VALID => Discover"
assert_eq "Discover_4" 6011690190976508 "VALID => Discover"
assert_eq "Discover_5" 6011620095506993 "VALID => Discover"
assert_eq "Discover_6" 6011456086562624 "VALID => Discover"
assert_eq "Discover_7" 6011351974640485 "VALID => Discover"
assert_eq "Discover_8" 6011039892591415 "VALID => Discover"
assert_eq "Discover_9" 6011371630595790 "VALID => Discover"
assert_eq "Discover_10" 6011495179377805 "VALID => Discover"

# InstaPayment
assert_eq "InstaPayment_1" 6387360488013523 "VALID => InstaPayment"
assert_eq "InstaPayment_2" 6391306522748750 "VALID => InstaPayment"
assert_eq "InstaPayment_3" 6381834064979774 "VALID => InstaPayment"
assert_eq "InstaPayment_4" 6394161275844075 "VALID => InstaPayment"
assert_eq "InstaPayment_5" 6395994972467470 "VALID => InstaPayment"
assert_eq "InstaPayment_6" 6380007000824435 "VALID => InstaPayment"
assert_eq "InstaPayment_7" 6371697100366393 "VALID => InstaPayment"
assert_eq "InstaPayment_8" 6373353505755875 "VALID => InstaPayment"
assert_eq "InstaPayment_9" 6391147832327681 "VALID => InstaPayment"
assert_eq "InstaPayment_10" 6398297378775588 "VALID => InstaPayment"

# JCB
assert_eq "JCB_1" 3559072172130252 "VALID => JCB"
assert_eq "JCB_2" 3588888941819379 "VALID => JCB"
assert_eq "JCB_3" 3549321564716563 "VALID => JCB"
assert_eq "JCB_4" 3579263536520066 "VALID => JCB"
assert_eq "JCB_5" 3539405752428842 "VALID => JCB"
assert_eq "JCB_6" 3588807842083729 "VALID => JCB"
assert_eq "JCB_7" 3558697829279259 "VALID => JCB"
assert_eq "JCB_8" 3529274894763009 "VALID => JCB"
assert_eq "JCB_9" 3558759193722064 "VALID => JCB"
assert_eq "JCB_10" 3588150092888434 "VALID => JCB"

# Laser
assert_eq "Laser_1" 67719767021241067 "VALID => Laser"
assert_eq "Laser_2" 670979846066282727 "VALID => Laser"
assert_eq "Laser_3" 6706366195258545195 "VALID => Laser"
assert_eq "Laser_4" 677116069504878985 "VALID => Laser"
assert_eq "Laser_5" 6771715170789905533 "VALID => Laser"
assert_eq "Laser_6" 6709819681120899 "VALID => Laser"
assert_eq "Laser_7" 6709583840622365 "VALID => Laser"
assert_eq "Laser_8" 6709573750289850973 "VALID => Laser"
assert_eq "Laser_9" 6771931994006422180 "VALID => Laser"
assert_eq "Laser_10" 670648131191506550 "VALID => Laser"

# Maestro
assert_eq "Mastercard_1" 5179559746275659 "VALID => Mastercard"
assert_eq "Mastercard_2" 5294470453571795 "VALID => Mastercard"
assert_eq "Mastercard_3" 5361559822290604 "VALID => Mastercard"
assert_eq "Mastercard_4" 5101919026839801 "VALID => Mastercard"
assert_eq "Mastercard_5" 5218384145592189 "VALID => Mastercard"
assert_eq "Mastercard_6" 5310697286138513 "VALID => Mastercard"
assert_eq "Mastercard_7" 5115335345124003 "VALID => Mastercard"
assert_eq "Mastercard_8" 5258862487658339 "VALID => Mastercard"
assert_eq "Mastercard_9" 5344039334580331 "VALID => Mastercard"
assert_eq "Mastercard_10" 5381399698578139 "VALID => Mastercard"

# Solo
assert_eq "Solo_1" 6334653470867488530 "VALID => Solo"
assert_eq "Solo_2" 6334450870954006 "VALID => Solo"
assert_eq "Solo_3" 6767974431390473780 "VALID => Solo"
assert_eq "Solo_4" 633440623003292484 "VALID => Solo"
assert_eq "Solo_5" 6767399681588642334 "VALID => Solo"
assert_eq "Solo_6" 633446258592458859 "VALID => Solo"
assert_eq "Solo_7" 676763648852558972 "VALID => Solo"
assert_eq "Solo_8" 6767135873158797494 "VALID => Solo"
assert_eq "Solo_9" 6334576437932190 "VALID => Solo"
assert_eq "Solo_10" 6334258004445449 "VALID => Solo"

# Switch
assert_eq "Switch_1" 6759701788465875455 "VALID => Switch"
assert_eq "Switch_2" 6331108934518786 "VALID => Switch"
assert_eq "Switch_3" 6331105327066571 "VALID => Switch"
assert_eq "Switch_4" 675913840718108065 "VALID => Switch"
assert_eq "Switch_5" 6759626888284337240 "VALID => Switch"
assert_eq "Switch_6" 5641824428230294848 "VALID => Switch"
assert_eq "Switch_7" 490327359633479240 "VALID => Switch"
assert_eq "Switch_8" 5641820230625944 "VALID => Switch"
assert_eq "Switch_9" 6333784744449558 "VALID => Switch"
assert_eq "Switch_10" 633110053525524264 "VALID => Switch"

# Union Pay
assert_eq "UnionPay_1" 628802053710159770 "VALID => UnionPay"
assert_eq "UnionPay_2" 8118044849524335270 "VALID => UnionPay"
assert_eq "UnionPay_3" 8112273549180511686 "VALID => UnionPay"
assert_eq "UnionPay_4" 8129886717202308240 "VALID => UnionPay"
assert_eq "UnionPay_5" 8178979077002348499 "VALID => UnionPay"
assert_eq "UnionPay_6" 6242644520800311152 "VALID => UnionPay"
assert_eq "UnionPay_7" 8103540729255007168 "VALID => UnionPay"
assert_eq "UnionPay_8" 8101844352965335006 "VALID => UnionPay"
assert_eq "UnionPay_9" 6263757514648114240 "VALID => UnionPay"
assert_eq "UnionPay_10" 6293699446012111213 "VALID => UnionPay"

# Visa
assert_eq "Visa_1" 4835300635983478 "VALID => Visa"
assert_eq "Visa_2" 4553046528482579 "VALID => Visa"
assert_eq "Visa_3" 4398324592673632 "VALID => Visa"
assert_eq "Visa_4" 4899475673208724 "VALID => Visa"
assert_eq "Visa_5" 4152690595355864 "VALID => Visa"
assert_eq "Visa_6" 4729085969389348 "VALID => Visa"
assert_eq "Visa_7" 4346988818190242 "VALID => Visa"
assert_eq "Visa_8" 4821084556481532 "VALID => Visa"
assert_eq "Visa_9" 4535294102245151 "VALID => Visa"
assert_eq "Visa_10" 4283031559505172 "VALID => Visa"
# ----------------------------| Code by Adesh ends |----------------------------
