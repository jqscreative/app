mkdir -p binary
cd binary && rm -rf win mac linux
mkdir mac
cd ..
mkdir -p temp
cd temp && rm -rf mac
mkdir mac && cd mac
wget https://github.com/DeFiCh/ain/releases/download/v1.3.3/defichain-1.3.3-x86_64-apple-darwin11.tar.gz
tar -xvf defichain-1.3.3-x86_64-apple-darwin11.tar.gz
cp defichain-1.3.3/bin/defid .
cd ../.. && cp temp/mac/defid binary/mac/defid
chmod 777 binary/mac/defid