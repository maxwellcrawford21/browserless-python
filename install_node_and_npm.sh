wget https://nodejs.org/dist/v18.19.0/node-v18.19.0-linux-x64.tar.gz
tar -xf node-v18.19.0-linux-x64.tar.gz
echo 'export PATH=$HOME/node-v18.19.0-linux-x64/bin:$PATH' >> ~/.bashrc
. ~/.bashrc
sleep 2
node -v

curl -s -L -o node-v20.7.0-linux-x64.tar.gz https://nodejs.org/download/release/v20.7.0/node-v20.7.0-linux-x64.tar.gz
tar -xf node-v20.7.0-linux-x64.tar.gz
export PATH=$HOME/node-v20.7.0-linux-x64/bin:$PATH
sleep 2
node -v
