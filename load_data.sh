export fileid=1bRpOT5WyAsUs_qPPJzR6gEQuifFtqpK0
export filename=data.zip

wget --save-cookies cookies.txt 'https://drive.google.com/uc?export=download&id='$fileid -O- \
     | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > confirm.txt

wget --load-cookies cookies.txt -O $filename \
     'https://drive.google.com/uc?export=download&id='$fileid'&confirm='$(<confirm.txt)

rm -f confirm.txt cookies.txt

unzip $filename

rm $filename