require 'formula'

class GccArmEmbedded < Formula
  homepage 'https://launchpad.net/gcc-arm-embedded'
  url 'https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q1-update/+download/gcc-arm-none-eabi-4_8-2014q1-20140314-mac.tar.bz2'
  sha1 'b40c4127f641170f016b77ad423caf8dfd46faac'

  version "4_8-2014q1-20140314"

  def install
    bin.install Dir['bin/*']
    lib.install Dir['lib/*']
    (prefix/'arm-none-eabi').install Dir['arm-none-eabi/**']

    man1.install Dir['share/doc/gcc-arm-none-eabi/man/man1/*']
    man7.install Dir['share/doc/gcc-arm-none-eabi/man/man7/*']
    doc.install Dir['share/doc/gcc-arm-none-eabi/*']
  end

  test do
    system bin/"arm-none-eabi-g++", "-v"
  end
end
