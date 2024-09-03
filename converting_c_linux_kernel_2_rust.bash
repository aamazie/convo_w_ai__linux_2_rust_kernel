# Clone the Linux kernel repository
git clone --depth=1 https://github.com/Rust-for-Linux/linux.git maze-kernel
cd maze-kernel

# Set up Rust environment
export RUSTC=rustc
export CARGO=cargo
export CC=clang
export HOSTCC=clang

# Configure the kernel to enable Rust support
make menuconfig
# Navigate to 'Kernel hacking' -> 'Rust support'

# Compile the kernel with Rust components
make -j$(nproc) 
