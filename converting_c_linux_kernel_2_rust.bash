# Clone the Linux kernel repository
#oldconfig

git clone --depth=1 https://github.com/Rust-for-Linux/linux.git maze-kernel
cd maze-kernel

# Set up Rust environment
export RUSTC=rustc
export CARGO=cargo
export CC=clang
export HOSTCC=clang

# Configure the kernel to enable Rust support, may need dependencies like flex, bison, etc, depending on your server environment
make oldconfig
# Navigate to 'Kernel hacking' -> 'Rust support'

# Compile the kernel with Rust components
make -j$(nproc) 
