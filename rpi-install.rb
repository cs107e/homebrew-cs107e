class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.tar.bz2"
  version "0.2-cs170e"
  sha256 "fda740f7592a7cf55f9dff1122df14cd3c83a1594a39b0f37fdbb38e07cd926b"
  depends_on "pyserial" => [:python, "serial"]
  depends_on "xmodem" => :python

  def install
    bin.install "rpi-install.py"
  end
end
