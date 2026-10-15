class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.5.0/avm_darwin_arm64.tar.gz"
      sha256 "92a4663ddf72fc23f63280d8702b28e52a6247039703859d476e8454e22bb83a"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.5.0/avm_darwin_amd64.tar.gz"
      sha256 "8a8c4c686bd1781d687c2c510f8850914700359b23a56a6ef743969662f6e648"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.5.0/avm_linux_arm64.tar.gz"
      sha256 "41a1e9b6b08514961936eef6021de5a2520ba1b7537542f5c902d1afc084a7a5"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.5.0/avm_linux_amd64.tar.gz"
      sha256 "8a1f3e40155d2cc059d231fb613b2ac52f900fa8c96b60bd4fc643cee9650f2d"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin --version")
  end
end
