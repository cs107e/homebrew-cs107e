class RiscvGnuToolchain13 < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "13.2-2025q1-cs107e"
  depends_on "libusb"
  depends_on "pkg-config"
  depends_on "isl"
  depends_on "gettext"
  depends_on "zstd"
  depends_on "libmpc"

  if Hardware::CPU.arm?
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-arm.13.tar.gz"
    sha256 "d2a394e89898c116acb9f97ded6a27da762d2c3fb3cf884f760434fb4166ab0c"
  else
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-intel.13.tar.gz"
    sha256 "13b21189bfb75ea0688df1aabbb22af9d45602c798262d45e72dafab291ad7a0"

  end

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[main/bin main/lib main/libexec main/share main/riscv64-unknown-elf]
  end
end

