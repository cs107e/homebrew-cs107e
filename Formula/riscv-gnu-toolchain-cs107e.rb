class RiscvGnuToolchainCs107e < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "12-2023q1-cs107e"

  if Hardware::CPU.arm?
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/MacPreBuilt/riscv-gnu-toolchain.zip"
    sha256 "a1a634d881117f969209dbd7ecf02569f754c0af58e1e6b95bfc25da3ff1ac7c"
  else
    url "https://github.com/cs107e/homebrew-cs107e/raw/master/MacPreBuilt/riscv-gnu-toolchain-intel.tar.gz"
    sha256 "dae252a926c582f65102b58aef1cec364bdbf5d4d8bdd2724ca9b7327fe97988"
  end

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[bin include lib libexec share]
    prefix.install Dir['riscv64-unknown-elf/*']
  end
end

