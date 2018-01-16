class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.tar.bz2"
  version "0.8-cs107e"
  sha256 "0fa94feb78ddd10add929be4df73a4bab3b0be838790b44b5026fc3916df9ef9"
  depends_on "pyserial" => [:python, "serial"]
  depends_on "xmodem" => :python

  def install
    bin.install "rpi-install.py"
  end
end
