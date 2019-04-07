export fileid=1Yy0p_a2orqEHE-Vs0PKh8BxdyreYNgLw
export filename=data.zip

# export fileid=1Mx600Az0fHnjUZwYNScgpWP7HeU8oG94
# export filename=production_ai.zip

# wget --save-cookies cookies.txt 'https://drive.google.com/uc?export=download&id='$fileid -O- \
#      | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p' > confirm.txt

# wget --load-cookies cookies.txt -O $filename \
#      'https://drive.google.com/uc?export=download&id='$fileid'&confirm='$(<confirm.txt)

# rm -f confirm.txt cookies.txt

# wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1Yy0p_a2orqEHE-Vs0PKh8BxdyreYNgLw' -O data

unzip $filename