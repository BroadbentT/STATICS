mkdir nmap64
cd nmap64
wget https://nmap.org/dist/nmap-7.70.tar.bz2
tar -xvf nmap-7.70.tar.bz2
cd nmap-7.70
./configure "CFLAGS=-m64 -no-pie" "CXXFLAGS=-m64 -no-pie" "LDFLAGS=-static -m64 -no-pie"
make -j4
strip nmap
cd ..
cd ..
mkdir nmap32
cd nmap32
wget https://nmap.org/dist/nmap-7.70.tar.bz2
tar -xvf nmap-7.70.tar.bz2
cd nmap-7.70
./configure "CFLAGS=-m32 -no-pie" "CXXFLAGS=-m32 -no-pie" "LDFLAGS=-static -m32 -no-pie"
make -j4
strip nmap
cd ..
cd ..
#end
