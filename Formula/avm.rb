class Avm < Formula
  desc "Any Version Manager with aliases, shims, and provider plugins"
  homepage "https://github.com/prajanova/avm"
  version "0.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PrajaNova/avm/releases/download/v0.2.8/avm_darwin_arm64.tar.gz"
      sha256 "3458d7a9a97abeeb3fe972cfbc0cfc1c2aaadebb6e8b08beddc67e83822edf19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PrajaNova/avm/releases/download/v0.2.8/avm_linux_arm64.tar.gz"
      sha256 "b2df1646d4fce9759870640d539b98c7f8bac9f8b4f3c8a5961fdb8aa0246ec7"
    end

    on_intel do
      url "https://github.com/PrajaNova/avm/releases/download/v0.2.8/avm_linux_amd64.tar.gz"
      sha256 "ec2ae2deb4c5a4d8a2c1a1b8057b84143839d039fa0d4a3030a0adf936b30e94"
    end
  end

  def install
    bin.install "avm-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/avm-bin version")
  end
end
