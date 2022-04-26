echo Downloading and unpacking soupault
wget https://github.com/dmbaturin/soupault/releases/download/$SOUPAULT_VERSION/soupault-$SOUPAULT_VERSION-linux-x86_64.tar.gz
tar xvf soupault-$SOUPAULT_VERSION-linux-x86_64.tar.gz

echo Installing ruby deps
gem install asciidoctor
gem install pygments.rb

echo Building site
./soupault-$SOUPAULT_VERSION-linux-x86_64/soupault
