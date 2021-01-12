
class ArmNoneEabiTest < Formula
  desc "ARM embedded toolchain MacOS for cs107e"
  homepage "https://cs107e.github.io/guides/install/"
  url "https://github.com/cs107e/homebrew-cs107e/raw/master/mac-arm-none-eabi-test.tar.bz2"
  version "9-2019q4-cs107e"
  sha256 "00551ff93ce3d1cf693578b5054acbf099c8155e50931ff7bad9d48994858cac"

  def install
    ohai "Copying binaries..."
    cp_r %w[arm-none-eabi bin lib share], "#{prefix}/"
    ohai "Installing manpages..."
    man1.install Dir['share/doc/gcc-arm-none-eabi/man/man1/*']
  end

end
