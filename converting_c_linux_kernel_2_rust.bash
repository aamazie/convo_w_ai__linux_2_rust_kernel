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

# Configure the kernel to enable Rust support, may need dependencies like flex, bison, etc, depending on your server environment.
#There will be a ton of specs to know, so if you want to know your server processor, you can run:
#lscpu

make oldconfig
#or, to automatically set all options to default, run
yes "" | make oldconfig

# Otherwise, configure kernel as you see fit and answer prompts.

# Compile the kernel with Rust components
make -j$(nproc) 
