class RiscvGnuToolchain13 < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "13.1-2025q1-cs107e"
  depends_on "libusb"
  depends_on "pkg-config"
  depends_on "isl"
  depends_on "gettext"
  depends_on "zstd"
  depends_on "libmpc"

  if Hardware::CPU.arm?
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-arm.13.tar.gz"
    sha256 "ee7adbdd1c00812494176c6851b3230c556e2abdc59f36fa7f35e99c9f086753"
  else
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-intel.13.tar.gz"
    sha256 "4140e09426dd91dd8be2cfde984de533312fc64d081bf4d5a21b5168a5eb537e"
  end

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[main/bin main/lib main/libexec main/share main/riscv64-unknown-elf]
  end
end

