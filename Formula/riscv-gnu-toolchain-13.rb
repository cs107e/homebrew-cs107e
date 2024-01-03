class RiscvGnuToolchain13 < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "13-2024q1-cs107e"

  if Hardware::CPU.arm?
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/riscv-gnu-toolchain-arm.13.tar.gz"
    sha256 "a1a634d881117f969209dbd7ecf02569f754c0af58e1e6b95bfc25da3ff1ac7c"
  else
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/riscv-gnu-toolchain-intel.13.tar.gz"
    sha256 "dae252a926c582f65102b58aef1cec364bdbf5d4d8bdd2724ca9b7327fe97988"
  end

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[main/bin main/lib main/libexec main/share]
    prefix.install Dir['main/riscv64-unknown-elf/*']
  end
end

