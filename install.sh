echo '  [x] Install SLL dev dependency'
if [[ "$OSTYPE" == "linux-gnu" ]]; then
        sudo apt install libssl-dev
elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install openssl
	echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.bashrc
	echo 'export LDFLAGS="-L/usr/local/opt/openssl/lib"' >> ~/.bashrc
	echo 'export CPPFLAGS="-I/usr/local/opt/openssl/include"' >> ~bashrc
        echo 'export PATH="/usr/local/opt/openssl/bin:$PATH"' >> ~/.zshrc
        echo 'export LDFLAGS="-L/usr/local/opt/openssl/lib"' >> ~/.zshrc
        echo 'export CPPFLAGS="-I/usr/local/opt/openssl/include"' >> ~/.zshrc
fi

echo '  [x] Install automake'
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	sudo apt install automake
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew install automake
fi

echo '  [x] Clone firebase Scrypt repo'
git clone https://github.com/firebase/scrypt.git

echo '  [x] Build Scrypt'
cd scrypt/
autoreconf -i
./configure
make
