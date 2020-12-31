require "FileUtils"

class JZ < Formula
  desc "ARM toolchain for cs107e"
  homepage "https://cs107e.github.io/guides/install/"
  url "https://cs107e.github.io/toolchain/mac-arm-none-eabi-9.tar.bz2"
  version "9-2019q4-cs107e"
  sha256 "ef7feafee49762af38adb3a183a36df3d00f0d6ecd5ca89baca481513eeca1cc"

  def install
    ohai "Copying binaries..."
    cp_r %w[arm-none-eabi bin lib share], "#{prefix}/"
  end
end
