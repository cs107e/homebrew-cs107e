class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.py"
  version "0.9-cs107e"
  sha256 "ee6c3d685189e4d67f931fb030e2f482cb0c2209d0e04a1f7430ba0111eed0f0"

  def install
    bin.install "rpi-install.py"
  end
end
