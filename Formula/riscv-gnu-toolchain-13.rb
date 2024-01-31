class RiscvGnuToolchain13 < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "13.1-2024q1-cs107e"
  depends_on "libusb"
  depends_on "pkg-config"
  depends_on "isl"
  depends_on "gettext"
  depends_on "zstd"
  depends_on "libmpc"

  if Hardware::CPU.arm?
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-arm.13.tar.gz"
    sha256 "d6e74ea7cf0a31ae7d4a7113ec7da01d5162f6bfa87f7af4ba8071140b4d8daf"
  else
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-intel.13.tar.gz"
    sha256 "b426edcd53a2ac4c650929e397fd89f19585e4ca31d498c657f8e5e095268bf2"
  end

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[main/bin main/lib main/libexec main/share main/riscv64-unknown-elf]
  end
end

