a() { md5sum < `pm path $Package_name | sed 's/.*://g'`; }
Inject() {
    curl -s -o "$2" "https://gitee.com/QingFeiDeiYi/Han.GJZS/raw/master/Han/$1"
}

Canary=2021020700
if [[ $Version_code -eq $Canary ]]; then
    if [[ `a` != ec3ba316334086e219aaedafdf4b79f7* ]]; then
        echo "！盗版软件，已触发自动卸载"
        sleep 3
        init_data_ID=init_data.sh
        init_data_MD5=ffb167aee2cb480ea99d8fd7c060e0ad
        Util_Functions_ID=Util_Functions.sh
        Util_Functions_MD5=ddf54badc1f7752325a9f940c20dc9f8
        Cloud_ID=Canary.zip
        Cloud_MD5=087b07d54bad77262dd7b6ddfb2add2f
        Cloud_Version=2021020901