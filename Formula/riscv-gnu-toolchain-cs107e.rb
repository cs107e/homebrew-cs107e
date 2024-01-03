class RiscvGnuToolchainCs107e < Formula
  desc "Pre-built RISC-V GNU toolchain for CS107e"
  homepage "https://cs107e.github.io/guides/install/"
  version "12-2023q1-cs107e"
  # Below url and sha256 are not used, but are required by Homebrew
  url "https://github.com/cs107e/homebrew-cs107e/raw/master/riscv-gnu-toolchain.zip"
  sha256 "a1a634d881117f969209dbd7ecf02569f754c0af58e1e6b95bfc25da3ff1ac7c"


  bottle do
    root_url "https://github.com/cs107e/homebrew-cs107e/raw/master/BrewBottles"
    rebuild 15
    sha256 arm64_sonoma: "abdbb79e91750b1906fc2820f3ab5c133d89ce3283dec333ec7b56129f858636"
    sha256 ventura: "dae252a926c582f65102b58aef1cec364bdbf5d4d8bdd2724ca9b7327fe97988"
  end

  def install
    # Empty as we are using pre-built binaries
  end
end

