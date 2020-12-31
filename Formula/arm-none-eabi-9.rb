
class ArmNoneEabi9 < Formula
  desc "ARM embedded toolchain MacOS for cs107e"
  homepage "https://cs107e.github.io/guides/install/"
  url "https://github.com/cs107e/homebrew-cs107e/raw/master/mac-arm-none-eabi-9.tar.bz2"
  version "9-2019q4-cs107e"
  sha256 "8244c5ceda63a940a9613f49fddf4a40feda4b475502eeb6a0075beab52f6c10"

  def install
    ohai "Copying binaries..."
    cp_r %w[arm-none-eabi bin lib share], "#{prefix}/"
    ohai "Installing manpages..."
    man1.install Dir['share/doc/gcc-arm-none-eabi/man/man1/*']
  end

end
