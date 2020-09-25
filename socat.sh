mkdir socat64
cd socat64
wget http://www.dest-unreach.org/socat/download/socat-1.7.3.4.tar.gz
tar -xvf socat-1.7.3.4.tar.gz
cd socat-1.7.3.4
./configure "CFLAGS=-m64" "CXXFLAGS=-m64" "LDFLAGS=-static -m64"
make -j4
strip socat
cd ..
cd ..
mkdir socat32
cd socat32
wget http://www.dest-unreach.org/socat/download/socat-1.7.3.4.tar.gz
tar -xvf socat-1.7.3.4.tar.gz
cd socat-1.7.3.4
./configure "CFLAGS=-m32" "CXXFLAGS=-m32" "LDFLAGS=-static -m32"
make -j4
strip socat
cd ..
cd ..
#end
