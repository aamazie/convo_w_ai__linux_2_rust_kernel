# Clone the Linux kernel repository
#oldconfig

git clone --depth=1 https://github.com/Rust-for-Linux/linux.git maze-kernel
cd maze-kernel

# Set up Rust environment
export RUSTC=rustc
export CARGO=cargo
export CC=gcc
export HOSTCC=clang
export CFLAGS="-O2"
export LDFLAGS="-L/usr/local/lib"
export CPPFLAGS="-I/usr/local/include"

# Configure the kernel to enable Rust support, may need dependencies like flex, bison, etc, depending on your server environment
make oldconfig
# the make will ask if you want to also compile drivers which will not load.. say m if unsure.
# Navigate to 'Kernel hacking' -> 'Rust support'

# Compile the kernel with Rust components
make -j$(nproc) 
