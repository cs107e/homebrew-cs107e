class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.py"
  version "0.91-cs107e"
  sha256 "d95eb9c26fe6b704292d83fbdbf91ce1d8197e810b615ffd5eaea5501d635260"

  def install
    bin.install "rpi-install.py"
  end
end
