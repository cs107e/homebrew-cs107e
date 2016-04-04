class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.tar.bz2"
  version "0.3-cs107e"
  sha256 "33f0b7696520e0b50d252fce7912365724585088ce5b5cf5473a72c3313d7ae9"
  depends_on "pyserial" => [:python, "serial"]
  depends_on "xmodem" => :python

  def install
    bin.install "rpi-install.py"
  end
end
