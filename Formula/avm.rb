class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.4.0-beta-1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-1/avm_darwin_arm64.tar.gz"
      sha256 "25de72fae3393d74580690a95b62152307250425ca0b94523f91bfdaa91a62ea"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-1/avm_darwin_amd64.tar.gz"
      sha256 "b6f810215e9be6d6ae63aabac1ff133407d534a3670da07a4b5b2a5b6cd448e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-1/avm_linux_arm64.tar.gz"
      sha256 "5e3ee1775cefd2c343f18ab6256a91632d10d9c8a166d600c8a0d3a399586f90"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.0-beta-1/avm_linux_amd64.tar.gz"
      sha256 "efecd54c6ca0cbe2eaada61ffc5c7084e4ad3ad4a62e8d1ad6a0b52b321488dc"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin --version")
  end
end
