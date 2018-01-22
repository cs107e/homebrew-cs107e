class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.py"
  version "0.8-cs107e"
  sha256 "https://github.com/cs107e/homebrew-cs107e.git"

  def install
    bin.install "rpi-install.py"
  end
end
