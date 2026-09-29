class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0/avm_darwin_arm64.tar.gz"
      sha256 "518e6d99cb93491b56e894f982591c02cbe48bef663e88fae77ad6134968a5fe"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0/avm_darwin_amd64.tar.gz"
      sha256 "d3692e47a7c0ee7d6d850ca573740352fefdbc5871caf5f89c83965b51f170e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0/avm_linux_arm64.tar.gz"
      sha256 "0f2a7875d387bf5dd8683daf7fc245d1c59c2fe2055f65b6d88d42ed3342dbde"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0/avm_linux_amd64.tar.gz"
      sha256 "c26a8c7bf12eb4ae0b554bfd4bbd410beb74c80c8a563239e7d5c042abfb23bf"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin --version")
  end
end
