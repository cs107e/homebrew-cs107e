class RpiInstall < Formula
  desc "Raspberry Pi uploading script for cs107e"
  homepage "https://cs107e.github.io/guides/mac_toolchain/"
  url "https://cs107e.github.io/guides/mac_toolchain/rpi-install.py"
  version "0.8-cs107e"
  sha256 "25b5cf442964def2bf5c0a9c57b221799104131da9b0bfcb5cb95d16e0f456ab"

  def install
    bin.install "rpi-install.py"
  end
end
