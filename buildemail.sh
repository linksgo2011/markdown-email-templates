template=$1
file=$2
imageHost=https://raw.githubusercontent.com/linksgo2011/markdown-email-templates/main/
rm -rf build
mkdir build

pandoc -s $file -w html --template=$template -o build/email.html --title-prefix email

# 替换图片相对连接为绝对连接
sed -i "" "s@src=\"@src=\"$imageHost@g" build/email.html
