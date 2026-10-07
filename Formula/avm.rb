class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.1/avm_darwin_arm64.tar.gz"
      sha256 "9d2f7ddd0b28f1bff573e07431009e4ae506bc88a108e091e9c87f5b4be5dbfc"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.1/avm_darwin_amd64.tar.gz"
      sha256 "543f9571243cd529d66b8fee29c181b901d7236054bade1ddd36f645e8e14b95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/prajanova/avm/releases/download/v0.4.1/avm_linux_arm64.tar.gz"
      sha256 "82c65af964cf0e2bc1d0932311eb76f7ef1dec00e97f15848c7321ea73e2c95f"
    end

    on_intel do
      url "https://github.com/prajanova/avm/releases/download/v0.4.1/avm_linux_amd64.tar.gz"
      sha256 "9a39a929e18c2b1d5249aea13bbaf4012823bf9028c7a8aaff1ba5c3fca34d19"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin --version")
  end
end
