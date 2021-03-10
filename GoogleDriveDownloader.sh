curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=$1" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=$1" -o $2