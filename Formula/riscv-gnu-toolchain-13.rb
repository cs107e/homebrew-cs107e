class RiscvGnuToolchain13 < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "13-2024q1-cs107e"
  depends_on "libusb"
  depends_on "pkg-config"
  depends_on "isl"
  depends_on "gettext"
  depends_on "zstd"
  depends_on "libmpc"

  if Hardware::CPU.arm?
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-arm.13.tar.gz"
    sha256 "6f330a381d5b76f56cf54183ca8d8a6c257abbfd1e9274b3aaa2524d83df371e"
  else
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewPackages/riscv-gnu-toolchain-intel.13.tar.gz"
    sha256 "7cbcf40dcc8d5a3d8f0ce7d567c52be881a4b3179f0f298b9eb64c5eb12a7c77"
  end

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[main/bin main/lib main/libexec main/share main/riscv64-unknown-elf]
  end
end

