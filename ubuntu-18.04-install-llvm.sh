apt install build-essential
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
echo "deb https://apt.llvm.org/bionic/ llvm-toolchain-bionic-9 main" >> /etc/apt/sources.list
echo "deb-src https://apt.llvm.org/bionic/ llvm-toolchain-bionic-9 main" >> /etc/apt/sources.list
apt update
apt install -y clang-9
