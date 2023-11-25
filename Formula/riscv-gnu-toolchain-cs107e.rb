class RiscvGnuToolchainCs107e < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  url "https://github.com/cs107e/homebrew-cs107e/raw/master/riscv-gnu-toolchain.zip"
  version "11-2023q1-cs107e"
  sha256 "a1a634d881117f969209dbd7ecf02569f754c0af58e1e6b95bfc25da3ff1ac7c"

  def install
    # Homebrew extracts tarballs automatically, so just install the files
    ohai "Installing binaries, libraries and man pages..."
    prefix.install %w[bin include lib libexec share]
    prefix.install Dir['riscv64-unknown-elf/*']
  end
end

