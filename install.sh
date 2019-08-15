echo '  [x] Install SLL dev dependency'
if [[ "$OSTYPE" == "linux-gnu" ]]; then
        sudo apt install libssl-dev
elif [[ "$OSTYPE" == "darwin"* ]]; then
        sudo brew install openssl 

echo '  [x] Install automake'
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	sudo apt install automake
elif [[ "$OSTYPE" == "darwin"* ]]; then
	sudo brew install automake

echo '  [x] Clone firebase Scrypt repo'
git clone https://github.com/firebase/scrypt.git

echo '  [x] Build Scrypt'
cd scrypt/
autoreconf -i
./configure
make
