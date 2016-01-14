class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.tar.bz2"
  version "0.1-cs170e"
  sha256 "bd3a44737f66aaaf5fbc64a23a8e3bdc8b1b996dd8f09569c56d3761759d31ae"
  depends_on "pyserial" => [:python, "serial"]
  depends_on "xmodem" => :python

  def install
    bin.install "rpi-install.py"
  end
end
