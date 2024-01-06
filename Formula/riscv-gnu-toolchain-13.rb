class RiscvGnuToolchain13 < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "13-2024q1-cs107e"

  if Hardware::CPU.arm?
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/riscv-gnu-toolchain-arm.13.tar.gz"
    sha256 "6be584a4a25058bd87b8687c27d3f4625f2e0adf1b128a823d2ee3ee6c7767c7"
  else
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/riscv-gnu-toolchain-intel.13.tar.gz"
    sha256 "dae252a926c582f65102b58aef1cec364bdbf5d4d8bdd2724ca9b7327fe97988"
  end

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[main/bin main/lib main/libexec main/share main/riscv64-unknown-elf]
  end
end

