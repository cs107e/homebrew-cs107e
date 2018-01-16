class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.tar.bz2"
  version "0.8-cs107e"
  sha256 "4c40e7fe14682fc23760f75a0533b4499aa2e193"
  depends_on "pyserial" => [:python, "serial"]
  depends_on "xmodem" => :python

  def install
    bin.install "rpi-install.py"
  end
end
